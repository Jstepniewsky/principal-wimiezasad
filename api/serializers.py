from rest_framework import serializers
from .models_fivem import Users, OwnedVehicles, UserLicenses, Licenses
from .models import UserProfile
from django.contrib.auth.models import User
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
    

class UserRegistrationSerializer(serializers.ModelSerializer):
    # Pola tylko do weryfikacji (nie zapisują się w tabeli auth_user, tylko służą do sprawdzenia)
    fivem_identifier = serializers.CharField(write_only=True, required=True)
    firstname = serializers.CharField(write_only=True, required=True)
    lastname = serializers.CharField(write_only=True, required=True)
    
    password = serializers.CharField(write_only=True)

    class Meta:
        model = User
        fields = ['username', 'password', 'email', 'fivem_identifier', 'firstname', 'lastname']

    def validate(self, data):
        """
        Logika weryfikacji: Czy taki gracz istnieje w FiveM?
        """
        identifier = data.get('fivem_identifier')
        fname = data.get('firstname')
        lname = data.get('lastname')

        # 1. Sprawdź, czy ten identifier nie jest już zajęty w naszym panelu
        if UserProfile.objects.filter(fivem_identifier=identifier).exists():
            raise serializers.ValidationError({"fivem_identifier": "Ten identyfikator FiveM jest już przypisany do innego konta w panelu!"})

        # 2. Sprawdź w bazie FiveM (models_fivem), czy gracz istnieje
        # Używamy __iexact, żeby wielkość liter nie miała znaczenia (jan = Jan)
        try:
            fivem_user = Users.objects.get(
                identifier=identifier, 
                firstname__iexact=fname, 
                lastname__iexact=lname
            )
        except Users.DoesNotExist:
            raise serializers.ValidationError("Weryfikacja nieudana. Nie znaleziono w bazie FiveM gracza o takim ID, imieniu i nazwisku.")

        return data

    def create(self, validated_data):
        # Wyciągamy dane FiveM (bo create_user ich nie przyjmuje)
        identifier = validated_data.pop('fivem_identifier')
        validated_data.pop('firstname')
        validated_data.pop('lastname')

        # Tworzymy usera Django (Login/Hasło)
        user = User.objects.create_user(
            username=validated_data['username'],
            email=validated_data.get('email', ''),
            password=validated_data['password']
        )

        # Tworzymy Profil (Połączenie Usera z Identifierem)
        UserProfile.objects.create(user=user, fivem_identifier=identifier)

        return user
