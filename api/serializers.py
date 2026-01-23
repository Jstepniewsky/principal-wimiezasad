from rest_framework import serializers
from .models_fivem import Users

class UsersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Users
        fields = '__all__' # Lub wymień konkretne pola np. ['id', 'firstname', 'lastname']