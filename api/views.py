from django.shortcuts import render
import json

from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.reverse import reverse
from rest_framework import status, permissions  # <--- NOWE IMPORTY

from .models_fivem import Users, OwnedVehicles, UserLicenses
from .serializers import UsersSerializer, OwnedVehiclesSerializer, UserLicensesSerializer, UserRegistrationSerializer
from .models_fivem import Users, OwnedVehicles, UserLicenses
from .serializers import UsersSerializer, OwnedVehiclesSerializer, UserLicensesSerializer

class RegisterView(APIView):
    # Pozwalamy każdemu (nawet niezalogowanemu) spróbować się zarejestrować
    permission_classes = [permissions.AllowAny]

    def post(self, request):
        # Przekazujemy dane do naszego "Bramkarza" (UserRegistrationSerializer)
        serializer = UserRegistrationSerializer(data=request.data)
        
        # Jeśli dane są poprawne (Bramkarz znalazł gracza w FiveM):
        if serializer.is_valid():
            user = serializer.save()
            return Response({
                "message": f"Sukces! Konto połączone z postacią FiveM (ID: {user.profile.fivem_identifier}).",
                "username": user.username
            }, status=status.HTTP_201_CREATED)
            
        # Jeśli dane są błędne (Brak gracza / złe hasło / zajęty login):
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET'])
def api_root(request, format=None):
    return Response({
        'gracze': reverse('users-list', request=request, format=format),
        'pojazdy': reverse('vehicles-list', request=request, format=format),
        'statystyki': reverse('server-stats', request=request, format=format),
        'sprawdz_licencje_przyklad': reverse('check-license', kwargs={'player_id': 3}, request=request, format=format),
    })



class UsersListCreateView(ListCreateAPIView):
    queryset = Users.objects.all()
    serializer_class = UsersSerializer

class UsersDetailView(RetrieveUpdateDestroyAPIView):
    queryset = Users.objects.all()
    serializer_class = UsersSerializer

class VehiclesListCreateView(ListCreateAPIView):
    queryset = OwnedVehicles.objects.all()
    serializer_class = OwnedVehiclesSerializer

class VehiclesDetailView(RetrieveUpdateDestroyAPIView):
    queryset = OwnedVehicles.objects.all()
    serializer_class = OwnedVehiclesSerializer


class ServerStatsView(APIView):
    """Statystyki serwera (majątek całkowity)"""
    def get(self, request):
        users = Users.objects.all()
        total_bank = 0
        for user in users:
            try:
                accounts = json.loads(user.accounts)
                total_bank += accounts.get('bank', 0)
            except: continue
        return Response({
            "total_players": users.count(),
            "total_server_wealth": total_bank,
            "average_per_player": round(total_bank / users.count(), 2) if users.count() > 0 else 0
        })

class CheckLicenseView(APIView):
    """Dedykowane sprawdzanie prawka po ID gracza"""
    def get(self, request, player_id):
        try:
            player = Users.objects.get(id=player_id)
            user_lic = UserLicenses.objects.filter(owner=player.identifier)
            serializer = UserLicensesSerializer(user_lic, many=True)
            return Response({
                "status": "success",
                "gracz": f"{player.firstname} {player.lastname}",
                "posiadane_licencje": serializer.data
            })
        except Users.DoesNotExist:
            return Response({"error": "Nie znaleziono gracza"}, status=404)