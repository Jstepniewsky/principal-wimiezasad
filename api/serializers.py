from rest_framework import serializers
from .models_fivem import Users, OwnedVehicles, UserLicenses, Licenses
import json

class UserLicensesSerializer(serializers.ModelSerializer):
    label = serializers.SerializerMethodField()

    class Meta:
        model = UserLicenses
        fields = ['type', 'label']

    def get_label(self, obj):
        license_info = Licenses.objects.filter(type=obj.type).first()
        return license_info.label if license_info else "Nieznana"
    
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


##najwazniejsza klasa
class UsersSerializer(serializers.ModelSerializer):
    bank_money = serializers.SerializerMethodField()
    cash_money = serializers.SerializerMethodField()
    hunger = serializers.SerializerMethodField()
    thirst = serializers.SerializerMethodField()
    vehicles = serializers.SerializerMethodField()
    licenses = serializers.SerializerMethodField()

    class Meta:
        model = Users
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
            'vehicles',
            'licenses'
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
                    return round(s.get('percent', 0), 1)
        except: return 0

    def get_thirst(self, obj):
        try:
            status_data = json.loads(obj.status)
            for s in status_data:
                if s['name'] == 'thirst':
                    return round(s.get('percent', 0), 1)
        except: return 0

    def get_vehicles(self, obj):
        cars = OwnedVehicles.objects.filter(owner=obj.identifier)
        return OwnedVehiclesSerializer(cars, many=True).data

    def get_licenses(self, obj):
        # Filtrujemy licencje przypisane do identifiera gracza
        user_lic = UserLicenses.objects.filter(owner=obj.identifier)
        return UserLicensesSerializer(user_lic, many=True).data
    


