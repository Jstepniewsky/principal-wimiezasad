from django.contrib import admin
from .models_fivem import *

# -------------------------
# Użytkownicy / gracze
# -------------------------
@admin.register(Users)
class UsersAdmin(admin.ModelAdmin):
    list_display = ('identifier', 'firstname', 'lastname', 'job', 'job_grade', 'phone_number', 'playtime')
    search_fields = ('identifier', 'firstname', 'lastname', 'job', 'phone_number')
    list_filter = ('job', 'is_dead', 'disabled')

# -------------------------
# Pojazdy
# -------------------------
@admin.register(Vehicles) 
class VehiclesAdmin(admin.ModelAdmin):
    # zmiana
    list_display = ['model'] 
    search_fields = ['plate', 'model', 'owner']
    list_filter = []

@admin.register(OwnedVehicles)
class OwnedVehiclesAdmin(admin.ModelAdmin):
    # zmiana
    list_display = ('owner', 'vehicle', 'plate')
    search_fields = ('owner', 'vehicle', 'plate')

@admin.register(VehicleCategories)
class VehicleCategoriesAdmin(admin.ModelAdmin):
    list_display = ('name', 'label')

@admin.register(VehicleSold)
class VehicleSoldAdmin(admin.ModelAdmin):
    list_display = ('client', 'model')

# -------------------------
# Bank / billing
# -------------------------
@admin.register(Banking)
class BankingAdmin(admin.ModelAdmin):
    list_display = ('identifier', 'balance', 'label')
    search_fields = ('identifier', 'label')

@admin.register(Billing)
class BillingAdmin(admin.ModelAdmin):
    list_display = ('identifier', 'sender', 'target', 'amount', 'label')
    search_fields = ('identifier', 'sender', 'target', 'label')

# -------------------------
# Domy / nieruchomości
# -------------------------
@admin.register(Houselocations)
class HouselocationsAdmin(admin.ModelAdmin):
    list_display = ('name', 'label', 'price', 'owned', 'creator')
    search_fields = ('name', 'label', 'creator')
    list_filter = ('for_sale', 'tier')

@admin.register(PlayerHouses)
class PlayerHousesAdmin(admin.ModelAdmin):
    list_display = ('owner', 'house')  # usunięto 'apartment', jeśli nie istnieje w modelu
    search_fields = ('owner', 'house')

# -------------------------
# Itemy / ekwipunek
# -------------------------
@admin.register(Items)
class ItemsAdmin(admin.ModelAdmin):
    list_display = ('name', 'label', 'weight', 'rare', 'can_remove')
    search_fields = ('name', 'label')

@admin.register(AddonInventory)
class AddonInventoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'label', 'shared')

# -------------------------
# Reszta modeli - tylko do podglądu (readonly)
# -------------------------
readonly_models = [
    AddonAccount, AddonAccountData, Datastore, DatastoreData, FineTypes,
    HouseDecorations, HouseObjects, HousePlants, HouseRents, JobGrades, Jobs,
    Licenses, ManagementOutfits, MulticharacterSlots,
    CardealerVehicles, RealVehicleshop, RentedVehicles, SocietyMoneywash,
    TrackTimes, RacerNames, RacingCrews, RacingRaces, Whitelist
]

for model in readonly_models:
    try:
        admin_class = type(f"{model.__name__}Admin", (admin.ModelAdmin,), {
            "list_display": [f.name for f in model._meta.fields],
            "readonly_fields": [f.name for f in model._meta.fields],
            "search_fields": [],
            "can_delete": False,
            "has_add_permission": lambda self, request: False,
            "has_change_permission": lambda self, request, obj=None: False,
        })
        admin.site.register(model, admin_class)
    except admin.sites.AlreadyRegistered:
        pass
