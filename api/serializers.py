from rest_framework import serializers
from .models_fivem import Users, OwnedVehicles

import json


class UsersSerializer(serializers.ModelSerializer):
    bank_money = serializers.SerializerMethodField()
    cash_money = serializers.SerializerMethodField()
    hunger = serializers.SerializerMethodField()
    thirst = serializers.SerializerMethodField()
    vehicles = serializers.SerializerMethodField()

    class Meta:
        model = Users
        # Tutaj jedna, kompletna lista wszystkich pól
        fields = [
            'id', 
            'identifier', 
            'firstname', 
            'lastname', 
            'dateofbirth',
            'job', 
            'job_grade', 
            'bank_money', 
            'cash_money',
            'hunger',
            'thirst',
            'playtime',
            'is_dead',
            'vehicles'
        ]

    def get_bank_money(self, obj):
        try:
            acc = json.loads(obj.accounts)
            return acc.get('bank', 0)
        except: return 0

    def get_cash_money(self, obj):
        try:
            acc = json.loads(obj.accounts)
            return acc.get('money', 0)
        except: return 0

    def get_hunger(self, obj):
        try:
            status_data = json.loads(obj.status)
            for s in status_data:
                if s['name'] == 'hunger':
                    return round(s['percent'] if 'percent' in s else 0, 1)
        except: return 0

    def get_thirst(self, obj):
        try:
            status_data = json.loads(obj.status)
            for s in status_data:
                if s['name'] == 'thirst':
                    return round(s['percent'] if 'percent' in s else 0, 1)
        except: return 0

    def get_vehicles(self, obj):
        cars = OwnedVehicles.objects.filter(owner=obj.identifier)
        return OwnedVehiclesSerializer(cars, many=True).data
    
class OwnedVehiclesSerializer(serializers.ModelSerializer):
    model_name = serializers.SerializerMethodField()

    class Meta:
        model = OwnedVehicles
        fields = ['plate', 'model_name', 'type', 'stored', 'parking', 'mileage']

    def get_model_name(self, obj):
        try:
            data = json.loads(obj.vehicle)
            return data.get('model', 'Nieznany')
        except:
            return "Nieznany"
        
class UsersSerializer(serializers.ModelSerializer):
    vehicles = serializers.SerializerMethodField() 

    class Meta:
        model = Users
        fields = [
            'id', 'identifier', 'firstname', 'lastname', 
            'bank_money', 'cash_money', 'hunger', 'thirst', 
            'vehicles'
        ]


    def get_vehicles(self, obj):
        cars = OwnedVehicles.objects.filter(owner=obj.identifier)
        return OwnedVehiclesSerializer(cars, many=True).data