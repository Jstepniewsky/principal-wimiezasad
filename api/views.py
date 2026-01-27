from django.shortcuts import render

from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from .models_fivem import Users
from .serializers import UsersSerializer

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