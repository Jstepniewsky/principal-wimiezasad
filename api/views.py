from django.shortcuts import render

from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from .models_fivem import Users
from .serializers import UsersSerializer
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

