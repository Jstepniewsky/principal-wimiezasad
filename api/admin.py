from django.contrib import admin
from .models_fivem import *

# -------------------------
# Użytkownicy / gracze
# -------------------------
@admin.register(Userss)
class UsersAdmin(admin.ModelAdmin):
    list_display = ('identifier', 'firstname', 'lastname', 'job', 'job_grade', 'phone_number', 'playtime')
    search_fields = ('identifier', 'firstname', 'lastname', 'job', 'phone_number')
    list_filter = ('job', 'is_dead', 'disabled')

# -------------------------
# Pojazdy
# -------------------------
@admin.register(Vehicles)
class VehiclesAdmin(admin.ModelAdmin):
    list_display = ('plate', 'model', 'owner')
    search_fields = ('plate', 'model', 'owner')
    list_filter = ('garage',)

@admin.register(OwnedVehicles)
class OwnedVehiclesAdmin(admin.ModelAdmin):
    list_display = ('owner', 'vehicle', 'plate')
    search_fields = ('owner', 'vehicle', 'plate')

@admin.register(VehicleCategories)
class VehicleCategoriesAdmin(admin.ModelAdmin):
    list_display = ('category', 'label')

@admin.register(VehicleSold)
class VehicleSoldAdmin(admin.ModelAdmin):
    list_display = ('buyer', 'vehicle', 'price')

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
    list_display = ('owner', 'house', 'apartment')
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

@admin.register(AddonInventoryItems)
class AddonInventoryItemsAdmin(admin.ModelAdmin):
    list_display = ('inventory_name', 'name', 'count', 'owner')
    search_fields = ('inventory_name', 'name', 'owner')

# -------------------------
# Mechanik / warsztat
# -------------------------
@admin.register(KavesMechanics)
class KavesMechanicsAdmin(admin.ModelAdmin):
    list_display = ('identifier', 'name', 'label')
    search_fields = ('identifier', 'name')

@admin.register(MechanicVehicledata)
class MechanicVehicledataAdmin(admin.ModelAdmin):
    list_display = ('owner', 'vehicle', 'plate')
    search_fields = ('owner', 'vehicle', 'plate')

@admin.register(MechanicEmployees)
class MechanicEmployeesAdmin(admin.ModelAdmin):
    list_display = ('boss', 'employee', 'job')
    search_fields = ('boss', 'employee', 'job')

# -------------------------
# Automatyczna rejestracja pozostałych tabel (do podglądu)
# -------------------------
# Lista wszystkich pozostałych modeli
remaining_models = [
    AddonAccount, AddonAccountData, Datastore, DatastoreData, FineTypes,
    HouseDecorations, HouseObjects, HousePlants, HouseRents,
    JobGrades, Jobs, Licenses, ManagementOutfits, MulticharacterSlots,
    PhoneBackups, PhoneClockAlarms, PhoneCrypto, PhoneDarkchatAccounts,
    PhoneDarkchatChannels, PhoneDarkchatMembers, PhoneDarkchatMessages,
    PhoneInstagramAccounts, PhoneInstagramComments, PhoneInstagramFollowRequests,
    PhoneInstagramFollows, PhoneInstagramLikes, PhoneInstagramMessages,
    PhoneInstagramNotifications, PhoneInstagramPosts, PhoneInstagramStories,
    PhoneInstagramStoriesViews, PhoneLastPhone, PhoneLoggedInAccounts, PhoneMailAccounts,
    PhoneMailDeleted, PhoneMailMessages, PhoneMapsLocations, PhoneMarketplacePosts,
    PhoneMessageChannels, PhoneMessageMembers, PhoneMessageMessages, PhoneMusicPlaylists,
    PhoneMusicSavedPlaylists, PhoneMusicSongs, PhoneNotes, PhoneNotifications,
    PhonePhoneBlockedNumbers, PhonePhoneCalls, PhonePhoneContacts, PhonePhoneVoicemail,
    PhonePhones, PhonePhotoAlbumMembers, PhonePhotoAlbumPhotos, PhonePhotoAlbums,
    PhonePhotos, PhoneServicesChannels, PhoneServicesMessages, PhoneTiktokAccounts,
    PhoneTiktokChannels, PhoneTiktokComments, PhoneTiktokCommentsLikes, PhoneTiktokFollows,
    PhoneTiktokLikes, PhoneTiktokMessages, PhoneTiktokNotifications, PhoneTiktokPinnedVideos,
    PhoneTiktokSaves, PhoneTiktokUnreadMessages, PhoneTiktokVideos, PhoneTiktokViews,
    PhoneTinderAccounts, PhoneTinderMatches, PhoneTinderMessages, PhoneTinderSwipes,
    PhoneTwitterAccounts, PhoneTwitterFollowRequests, PhoneTwitterFollows,
    PhoneTwitterHashtags, PhoneTwitterLikes, PhoneTwitterMessages, PhoneTwitterNotifications,
    PhoneTwitterPromoted, PhoneTwitterRetweets, PhoneTwitterTweets,
    PhoneVoiceMemosRecordings, PhoneWalletTransactions, PhoneYellowPagesPosts,
    CardealerVehicles, RealVehicleshop, RentedVehicles, SocietyMoneywash,
    TrackTimes, RacerNames, RacingCrews, RacingRaces, Whitelist
]

for model in remaining_models:
    try:
        admin.site.register(model)
    except admin.sites.AlreadyRegistered:
        pass
