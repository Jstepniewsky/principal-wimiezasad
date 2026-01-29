from django.shortcuts import render

from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from .models_fivem import Users
from .serializers import UsersSerializer
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.reverse import reverse

@api_view(['GET'])
def api_root(request, format=None):
    return Response({
        'gracze': reverse('users-list', request=request, format=format),
        'pojazdy': reverse('vehicles-list', request=request, format=format),
        'statystyki': reverse('server-stats', request=request, format=format),
    })

class UsersListCreateView(ListCreateAPIView):
    queryset = Users.objects.all()
    serializer_class = UsersSerializer

class UsersDetailView(RetrieveUpdateDestroyAPIView):
    queryset = Users.objects.all()
    serializer_class = UsersSerializer

from .models_fivem import Users, OwnedVehicles
from .serializers import UsersSerializer, OwnedVehiclesSerializer

class VehiclesListCreateView(ListCreateAPIView):
    queryset = OwnedVehicles.objects.all()
    serializer_class = OwnedVehiclesSerializer

class VehiclesDetailView(RetrieveUpdateDestroyAPIView):
    queryset = OwnedVehicles.objects.all()
    serializer_class = OwnedVehiclesSerializer

class ServerStatsView(APIView):
    """
    Endpoint poza CRUD: Zlicza całkowity majątek na serwerze.
    """
    def get(self, request):
        users = Users.objects.all()
        total_bank = 0
        
        for user in users:
            try:
                # Parsujemy pole accounts, żeby wyciągnąć bank
                accounts = json.loads(user.accounts)
                total_bank += accounts.get('bank', 0)
            except:
                continue

        return Response({
            "total_players": users.count(),
            "total_server_wealth": total_bank,
            "average_per_player": round(total_bank / users.count(), 2) if users.count() > 0 else 0
        })