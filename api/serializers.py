from rest_framework import serializers
from .models_fivem import Users
import json




class UsersSerializer(serializers.ModelSerializer):
    # Definiujemy czytelne pola wirtualne
    bank_money = serializers.SerializerMethodField()
    cash_money = serializers.SerializerMethodField()
    hunger = serializers.SerializerMethodField()
    thirst = serializers.SerializerMethodField()

    class Meta:
        model = Users
        # Tutaj wpisz TYLKO te pola, które chcesz widzieć w API. 
        # Usuwamy 'skin', 'accounts', 'status' itp., żeby nie było śmietnika.
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
            'is_dead'
        ]

    # --- LOGIKA WYCIĄGANIA DANYCH Z JSONÓW ---

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
            # Parsujemy status: [{"name":"hunger","val":488160}, ...]
            status_data = json.loads(obj.status)
            for s in status_data:
                if s['name'] == 'hunger':
                    return round(s['percent'], 1)
        except: return 0

    def get_thirst(self, obj):
        try:
            status_data = json.loads(obj.status)
            for s in status_data:
                if s['name'] == 'thirst':
                    return round(s['percent'], 1)
        except: return 0