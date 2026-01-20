# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AddonAccount(models.Model):
    name = models.CharField(primary_key=True, max_length=60)
    label = models.CharField(max_length=100)
    shared = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'addon_account'


class AddonAccountData(models.Model):
    account_name = models.CharField(max_length=100, blank=True, null=True)
    money = models.IntegerField()
    owner = models.CharField(max_length=46, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'addon_account_data'
        unique_together = (('account_name', 'owner'),)


class AddonInventory(models.Model):
    name = models.CharField(primary_key=True, max_length=60)
    label = models.CharField(max_length=100)
    shared = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'addon_inventory'


class AddonInventoryItems(models.Model):
    inventory_name = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    count = models.IntegerField()
    owner = models.CharField(max_length=46, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'addon_inventory_items'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class AuthtokenToken(models.Model):
    key = models.CharField(primary_key=True, max_length=40)
    created = models.DateTimeField()
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'authtoken_token'


class Banking(models.Model):
    identifier = models.CharField(max_length=46, blank=True, null=True)
    type = models.CharField(max_length=50, blank=True, null=True)
    amount = models.IntegerField(blank=True, null=True)
    time = models.BigIntegerField(blank=True, null=True)
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    balance = models.IntegerField(blank=True, null=True)
    label = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'banking'


class Billing(models.Model):
    identifier = models.CharField(max_length=46, blank=True, null=True)
    sender = models.CharField(max_length=60)
    target_type = models.CharField(max_length=50)
    target = models.CharField(max_length=40)
    label = models.CharField(max_length=255)
    amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'billing'


class CardealerVehicles(models.Model):
    vehicle = models.CharField(max_length=255)
    price = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cardealer_vehicles'


class Datastore(models.Model):
    name = models.CharField(primary_key=True, max_length=60)
    label = models.CharField(max_length=100)
    shared = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'datastore'


class DatastoreData(models.Model):
    name = models.CharField(max_length=60)
    owner = models.CharField(max_length=46, blank=True, null=True)
    data = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'datastore_data'
        unique_together = (('name', 'owner'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class FineTypes(models.Model):
    label = models.CharField(max_length=255, blank=True, null=True)
    amount = models.IntegerField(blank=True, null=True)
    category = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'fine_types'


class HouseDecorations(models.Model):
    house = models.CharField(max_length=50, blank=True, null=True)
    creator = models.CharField(max_length=70)
    modelname = models.CharField(db_column='modelName', max_length=50)  # Field name made lowercase.
    coords = models.TextField(blank=True, null=True)
    rotation = models.TextField()
    instash = models.IntegerField(db_column='inStash')  # Field name made lowercase.
    inhouse = models.PositiveIntegerField(db_column='inHouse')  # Field name made lowercase.
    uniq = models.CharField(max_length=50, blank=True, null=True)
    created = models.DateTimeField(blank=True, null=True)
    lightdata = models.TextField(db_column='lightData', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'house_decorations'


class HouseObjects(models.Model):
    creator = models.CharField(max_length=50)
    model = models.CharField(max_length=50)
    coords = models.TextField()
    house = models.CharField(max_length=80, blank=True, null=True)
    construction = models.CharField(max_length=50, blank=True, null=True)
    created = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'house_objects'


class HousePlants(models.Model):
    building = models.CharField(max_length=50, blank=True, null=True)
    stage = models.CharField(max_length=50, blank=True, null=True)
    sort = models.CharField(max_length=50, blank=True, null=True)
    gender = models.CharField(max_length=50, blank=True, null=True)
    food = models.IntegerField(blank=True, null=True)
    health = models.IntegerField(blank=True, null=True)
    progress = models.IntegerField(blank=True, null=True)
    coords = models.TextField(blank=True, null=True)
    plantid = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'house_plants'


class HouseRents(models.Model):
    house = models.CharField(max_length=50)
    identifier = models.CharField(max_length=80)
    payed = models.IntegerField()
    date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'house_rents'


class Houselocations(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(primary_key=True, max_length=255)
    label = models.CharField(max_length=255, blank=True, null=True)
    coords = models.TextField(blank=True, null=True)
    owned = models.IntegerField(blank=True, null=True)
    price = models.IntegerField(blank=True, null=True)
    defaultprice = models.IntegerField(db_column='defaultPrice', blank=True, null=True)  # Field name made lowercase.
    tier = models.SmallIntegerField(blank=True, null=True)
    garage = models.TextField(blank=True, null=True)
    garageshell = models.TextField(db_column='garageShell', blank=True, null=True)  # Field name made lowercase.
    creator = models.CharField(max_length=50, blank=True, null=True)
    mlo = models.TextField(blank=True, null=True)
    ipl = models.TextField(blank=True, null=True)
    console = models.IntegerField(blank=True, null=True)
    board = models.TextField(blank=True, null=True)
    for_sale = models.IntegerField(blank=True, null=True)
    extra_imgs = models.TextField(blank=True, null=True)
    description = models.TextField()
    creatorjob = models.CharField(db_column='creatorJob', max_length=50, blank=True, null=True)  # Field name made lowercase.
    blip = models.TextField(blank=True, null=True)
    upgrades = models.TextField(blank=True, null=True)
    apartmentcount = models.IntegerField(db_column='apartmentCount', blank=True, null=True)  # Field name made lowercase.
    creatorgotmoney = models.IntegerField(db_column='creatorGotMoney')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'houselocations'


class Items(models.Model):
    name = models.CharField(primary_key=True, max_length=50)
    label = models.CharField(max_length=50)
    weight = models.IntegerField()
    rare = models.IntegerField()
    can_remove = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'items'


class JobGrades(models.Model):
    job_name = models.CharField(max_length=50, blank=True, null=True)
    grade = models.IntegerField()
    name = models.CharField(max_length=50)
    label = models.CharField(max_length=50)
    salary = models.IntegerField()
    skin_male = models.TextField()
    skin_female = models.TextField()

    class Meta:
        managed = False
        db_table = 'job_grades'


class Jobs(models.Model):
    name = models.CharField(primary_key=True, max_length=50)
    label = models.CharField(max_length=50, blank=True, null=True)
    type = models.CharField(max_length=50)
    whitelisted = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'jobs'


class KavesMechanics(models.Model):
    plate = models.TextField(blank=True, null=True)
    data = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'kaves_mechanics'


class Licenses(models.Model):
    type = models.CharField(primary_key=True, max_length=60)
    label = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'licenses'


class ManagementOutfits(models.Model):
    job_name = models.CharField(max_length=50)
    type = models.CharField(max_length=50)
    minrank = models.IntegerField()
    name = models.CharField(max_length=50)
    gender = models.CharField(max_length=50)
    model = models.CharField(max_length=50, blank=True, null=True)
    props = models.CharField(max_length=1000, blank=True, null=True)
    components = models.CharField(max_length=1500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'management_outfits'


class MechanicData(models.Model):
    name = models.CharField(primary_key=True, max_length=100)
    label = models.CharField(max_length=255)
    balance = models.FloatField()
    owner_id = models.CharField(max_length=255, blank=True, null=True)
    owner_name = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'mechanic_data'


class MechanicEmployees(models.Model):
    identifier = models.CharField(max_length=255)
    mechanic = models.CharField(max_length=255)
    role = models.CharField(max_length=100)
    joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'mechanic_employees'


class MechanicInvoices(models.Model):
    identifier = models.CharField(max_length=255, blank=True, null=True)
    mechanic = models.CharField(max_length=255)
    total = models.FloatField()
    data = models.TextField()
    paid = models.IntegerField(blank=True, null=True)
    date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'mechanic_invoices'


class MechanicOrders(models.Model):
    identifier = models.CharField(max_length=255)
    mechanic = models.CharField(max_length=255)
    plate = models.CharField(max_length=10)
    amount_paid = models.FloatField()
    cart = models.TextField()
    props_to_apply = models.TextField()
    installation_progress = models.TextField(blank=True, null=True)
    fulfilled = models.IntegerField(blank=True, null=True)
    date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'mechanic_orders'


class MechanicServicingHistory(models.Model):
    identifier = models.CharField(max_length=255)
    mechanic = models.CharField(max_length=255)
    plate = models.CharField(max_length=10)
    serviced_part = models.CharField(max_length=10)
    mileage_km = models.FloatField()
    date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'mechanic_servicing_history'


class MechanicSettings(models.Model):
    identifier = models.CharField(primary_key=True, max_length=255)
    preferences = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'mechanic_settings'


class MechanicVehicledata(models.Model):
    plate = models.CharField(primary_key=True, max_length=10)
    data = models.TextField()

    class Meta:
        managed = False
        db_table = 'mechanic_vehicledata'


class MulticharacterSlots(models.Model):
    identifier = models.CharField(primary_key=True, max_length=46)
    slots = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'multicharacter_slots'


class OwnedVehicles(models.Model):
    owner = models.CharField(max_length=46, blank=True, null=True)
    plate = models.CharField(primary_key=True, max_length=12)
    vehicle = models.TextField(blank=True, null=True)
    type = models.CharField(max_length=20)
    job = models.CharField(max_length=20, blank=True, null=True)
    stored = models.IntegerField()
    parking = models.CharField(max_length=60, blank=True, null=True)
    pound = models.CharField(max_length=60, blank=True, null=True)
    mileage = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'owned_vehicles'


class PhoneBackups(models.Model):
    id = models.CharField(primary_key=True, max_length=100)
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')

    class Meta:
        managed = False
        db_table = 'phone_backups'


class PhoneClockAlarms(models.Model):
    pk = models.CompositePrimaryKey('id', 'phone_number')
    id = models.AutoField(primary_key=True)
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    hours = models.IntegerField()
    minutes = models.IntegerField()
    label = models.CharField(max_length=50, blank=True, null=True)
    enabled = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'phone_clock_alarms'


class PhoneCrypto(models.Model):
    pk = models.CompositePrimaryKey('id', 'coin')
    id = models.CharField(max_length=100)
    coin = models.CharField(max_length=15)
    amount = models.FloatField()
    invested = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_crypto'


class PhoneDarkchatAccounts(models.Model):
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    username = models.CharField(primary_key=True, max_length=20)
    password = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'phone_darkchat_accounts'


class PhoneDarkchatChannels(models.Model):
    name = models.CharField(primary_key=True, max_length=50)

    class Meta:
        managed = False
        db_table = 'phone_darkchat_channels'


class PhoneDarkchatMembers(models.Model):
    pk = models.CompositePrimaryKey('channel_name', 'username')
    channel_name = models.ForeignKey(PhoneDarkchatChannels, models.DO_NOTHING, db_column='channel_name')
    username = models.ForeignKey(PhoneDarkchatAccounts, models.DO_NOTHING, db_column='username')

    class Meta:
        managed = False
        db_table = 'phone_darkchat_members'


class PhoneDarkchatMessages(models.Model):
    channel = models.ForeignKey(PhoneDarkchatChannels, models.DO_NOTHING, db_column='channel')
    sender = models.ForeignKey(PhoneDarkchatAccounts, models.DO_NOTHING, db_column='sender')
    content = models.CharField(max_length=1000, blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_darkchat_messages'


class PhoneInstagramAccounts(models.Model):
    display_name = models.CharField(max_length=30)
    username = models.CharField(primary_key=True, max_length=20)
    password = models.CharField(max_length=100)
    profile_image = models.CharField(max_length=500, blank=True, null=True)
    bio = models.CharField(max_length=100, blank=True, null=True)
    post_count = models.IntegerField()
    story_count = models.IntegerField()
    follower_count = models.IntegerField()
    following_count = models.IntegerField()
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    private = models.IntegerField(blank=True, null=True)
    verified = models.IntegerField(blank=True, null=True)
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_accounts'


class PhoneInstagramComments(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    post = models.ForeignKey('PhoneInstagramPosts', models.DO_NOTHING)
    username = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='username')
    comment = models.CharField(max_length=500)
    like_count = models.IntegerField()
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_comments'


class PhoneInstagramFollowRequests(models.Model):
    pk = models.CompositePrimaryKey('requester', 'requestee')
    requester = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='requester')
    requestee = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='requestee', related_name='phoneinstagramfollowrequests_requestee_set')
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_follow_requests'


class PhoneInstagramFollows(models.Model):
    pk = models.CompositePrimaryKey('followed', 'follower')
    followed = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='followed')
    follower = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='follower', related_name='phoneinstagramfollows_follower_set')

    class Meta:
        managed = False
        db_table = 'phone_instagram_follows'


class PhoneInstagramLikes(models.Model):
    pk = models.CompositePrimaryKey('id', 'username')
    id = models.CharField(max_length=10)
    username = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='username')
    is_comment = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_likes'


class PhoneInstagramMessages(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    sender = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='sender')
    recipient = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='recipient', related_name='phoneinstagrammessages_recipient_set')
    content = models.CharField(max_length=1000, blank=True, null=True)
    attachments = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_messages'


class PhoneInstagramNotifications(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    username = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='username')
    from_field = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='from', related_name='phoneinstagramnotifications_from_field_set')  # Field renamed because it was a Python reserved word.
    type = models.CharField(max_length=20)
    post_id = models.CharField(max_length=50, blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_notifications'


class PhoneInstagramPosts(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    media = models.TextField(blank=True, null=True)
    caption = models.CharField(max_length=500)
    location = models.CharField(max_length=50, blank=True, null=True)
    like_count = models.IntegerField()
    comment_count = models.IntegerField()
    username = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='username')
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_posts'


class PhoneInstagramStories(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    username = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='username')
    image = models.CharField(max_length=500)
    metadata = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_stories'


class PhoneInstagramStoriesViews(models.Model):
    pk = models.CompositePrimaryKey('story_id', 'viewer')
    story = models.ForeignKey(PhoneInstagramStories, models.DO_NOTHING)
    viewer = models.ForeignKey(PhoneInstagramAccounts, models.DO_NOTHING, db_column='viewer')
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_instagram_stories_views'


class PhoneLastPhone(models.Model):
    id = models.CharField(primary_key=True, max_length=100)
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')

    class Meta:
        managed = False
        db_table = 'phone_last_phone'


class PhoneLoggedInAccounts(models.Model):
    pk = models.CompositePrimaryKey('phone_number', 'app', 'username')
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    app = models.CharField(max_length=50)
    username = models.CharField(max_length=100)
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_logged_in_accounts'


class PhoneMailAccounts(models.Model):
    address = models.CharField(primary_key=True, max_length=100)
    password = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'phone_mail_accounts'


class PhoneMailDeleted(models.Model):
    pk = models.CompositePrimaryKey('message_id', 'address')
    message = models.ForeignKey('PhoneMailMessages', models.DO_NOTHING)
    address = models.ForeignKey(PhoneMailAccounts, models.DO_NOTHING, db_column='address')

    class Meta:
        managed = False
        db_table = 'phone_mail_deleted'


class PhoneMailMessages(models.Model):
    recipient = models.CharField(max_length=100)
    sender = models.CharField(max_length=100)
    subject = models.CharField(max_length=100)
    content = models.TextField()
    attachments = models.TextField(blank=True, null=True)
    actions = models.TextField(blank=True, null=True)
    read = models.IntegerField()
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_mail_messages'


class PhoneMapsLocations(models.Model):
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    name = models.CharField(max_length=50)
    x_pos = models.FloatField()
    y_pos = models.FloatField()

    class Meta:
        managed = False
        db_table = 'phone_maps_locations'


class PhoneMarketplacePosts(models.Model):
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=1000)
    attachments = models.TextField(blank=True, null=True)
    price = models.IntegerField()
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_marketplace_posts'


class PhoneMessageChannels(models.Model):
    is_group = models.IntegerField()
    name = models.CharField(max_length=50, blank=True, null=True)
    last_message = models.CharField(max_length=50)
    last_message_timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_message_channels'


class PhoneMessageMembers(models.Model):
    pk = models.CompositePrimaryKey('channel_id', 'phone_number')
    channel = models.ForeignKey(PhoneMessageChannels, models.DO_NOTHING)
    phone_number = models.CharField(max_length=15)
    is_owner = models.IntegerField()
    deleted = models.IntegerField()
    unread = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_message_members'


class PhoneMessageMessages(models.Model):
    channel = models.ForeignKey(PhoneMessageChannels, models.DO_NOTHING)
    sender = models.CharField(max_length=15)
    content = models.CharField(max_length=1000, blank=True, null=True)
    attachments = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_message_messages'


class PhoneMusicPlaylists(models.Model):
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    name = models.CharField(max_length=50)
    cover = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'phone_music_playlists'


class PhoneMusicSavedPlaylists(models.Model):
    pk = models.CompositePrimaryKey('playlist_id', 'phone_number')
    playlist = models.ForeignKey(PhoneMusicPlaylists, models.DO_NOTHING)
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')

    class Meta:
        managed = False
        db_table = 'phone_music_saved_playlists'


class PhoneMusicSongs(models.Model):
    pk = models.CompositePrimaryKey('song_id', 'playlist_id')
    song_id = models.CharField(max_length=100)
    playlist = models.ForeignKey(PhoneMusicPlaylists, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'phone_music_songs'


class PhoneNotes(models.Model):
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    title = models.CharField(max_length=50)
    content = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_notes'


class PhoneNotifications(models.Model):
    phone_number = models.ForeignKey('PhonePhones', models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    app = models.CharField(max_length=50)
    title = models.CharField(max_length=50, blank=True, null=True)
    content = models.CharField(max_length=500, blank=True, null=True)
    thumbnail = models.CharField(max_length=500, blank=True, null=True)
    avatar = models.CharField(max_length=500, blank=True, null=True)
    show_avatar = models.IntegerField(blank=True, null=True)
    custom_data = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_notifications'


class PhonePhoneBlockedNumbers(models.Model):
    pk = models.CompositePrimaryKey('phone_number', 'blocked_number')
    phone_number = models.CharField(max_length=15)
    blocked_number = models.CharField(max_length=15)

    class Meta:
        managed = False
        db_table = 'phone_phone_blocked_numbers'


class PhonePhoneCalls(models.Model):
    caller = models.CharField(max_length=15)
    callee = models.CharField(max_length=15)
    duration = models.IntegerField()
    answered = models.IntegerField(blank=True, null=True)
    hide_caller_id = models.IntegerField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_phone_calls'


class PhonePhoneContacts(models.Model):
    pk = models.CompositePrimaryKey('contact_phone_number', 'phone_number')
    contact_phone_number = models.CharField(max_length=15)
    firstname = models.CharField(max_length=50)
    lastname = models.CharField(max_length=50)
    profile_image = models.CharField(max_length=500, blank=True, null=True)
    email = models.CharField(max_length=50, blank=True, null=True)
    address = models.CharField(max_length=50, blank=True, null=True)
    favourite = models.IntegerField(blank=True, null=True)
    phone_number = models.CharField(max_length=15)

    class Meta:
        managed = False
        db_table = 'phone_phone_contacts'


class PhonePhoneVoicemail(models.Model):
    caller = models.CharField(max_length=15)
    callee = models.CharField(max_length=15)
    url = models.CharField(max_length=500)
    duration = models.IntegerField()
    hide_caller_id = models.IntegerField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_phone_voicemail'


class PhonePhones(models.Model):
    id = models.CharField(primary_key=True, max_length=100)
    owner_id = models.CharField(max_length=100)
    phone_number = models.CharField(unique=True, max_length=15)
    name = models.CharField(max_length=50, blank=True, null=True)
    pin = models.CharField(max_length=4, blank=True, null=True)
    face_id = models.CharField(max_length=100, blank=True, null=True)
    settings = models.TextField(blank=True, null=True)
    is_setup = models.IntegerField(blank=True, null=True)
    assigned = models.IntegerField(blank=True, null=True)
    battery = models.IntegerField()
    last_seen = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_phones'


class PhonePhotoAlbumMembers(models.Model):
    pk = models.CompositePrimaryKey('album_id', 'phone_number')
    album = models.ForeignKey('PhonePhotoAlbums', models.DO_NOTHING)
    phone_number = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number', to_field='phone_number')

    class Meta:
        managed = False
        db_table = 'phone_photo_album_members'


class PhonePhotoAlbumPhotos(models.Model):
    pk = models.CompositePrimaryKey('album_id', 'photo_id')
    album = models.ForeignKey('PhonePhotoAlbums', models.DO_NOTHING)
    photo = models.ForeignKey('PhonePhotos', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'phone_photo_album_photos'


class PhonePhotoAlbums(models.Model):
    phone_number = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    title = models.CharField(max_length=100)
    shared = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_photo_albums'


class PhonePhotos(models.Model):
    phone_number = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    link = models.CharField(max_length=500)
    is_video = models.IntegerField(blank=True, null=True)
    size = models.FloatField()
    metadata = models.CharField(max_length=20, blank=True, null=True)
    is_favourite = models.IntegerField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_photos'


class PhoneServicesChannels(models.Model):
    phone_number = models.CharField(max_length=15)
    company = models.CharField(max_length=50)
    last_message = models.CharField(max_length=100, blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_services_channels'


class PhoneServicesMessages(models.Model):
    channel = models.ForeignKey(PhoneServicesChannels, models.DO_NOTHING)
    sender = models.CharField(max_length=15)
    message = models.CharField(max_length=1000)
    x_pos = models.IntegerField(blank=True, null=True)
    y_pos = models.IntegerField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_services_messages'


class PhoneTiktokAccounts(models.Model):
    name = models.CharField(max_length=30)
    bio = models.CharField(max_length=100, blank=True, null=True)
    avatar = models.CharField(max_length=500, blank=True, null=True)
    username = models.CharField(primary_key=True, max_length=20)
    password = models.CharField(max_length=100)
    verified = models.IntegerField(blank=True, null=True)
    follower_count = models.IntegerField()
    following_count = models.IntegerField()
    like_count = models.IntegerField()
    video_count = models.IntegerField()
    twitter = models.CharField(max_length=20, blank=True, null=True)
    instagram = models.CharField(max_length=20, blank=True, null=True)
    show_likes = models.IntegerField(blank=True, null=True)
    phone_number = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tiktok_accounts'


class PhoneTiktokChannels(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    last_message = models.CharField(max_length=50)
    member_1 = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='member_1')
    member_2 = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='member_2', related_name='phonetiktokchannels_member_2_set')
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tiktok_channels'
        unique_together = (('member_1', 'member_2'),)


class PhoneTiktokComments(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    reply_to = models.ForeignKey('self', models.DO_NOTHING, db_column='reply_to', blank=True, null=True)
    video = models.ForeignKey('PhoneTiktokVideos', models.DO_NOTHING)
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    comment = models.CharField(max_length=550)
    likes = models.IntegerField()
    replies = models.IntegerField()
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tiktok_comments'


class PhoneTiktokCommentsLikes(models.Model):
    pk = models.CompositePrimaryKey('username', 'comment_id')
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    comment = models.ForeignKey(PhoneTiktokComments, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'phone_tiktok_comments_likes'


class PhoneTiktokFollows(models.Model):
    pk = models.CompositePrimaryKey('followed', 'follower')
    followed = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='followed')
    follower = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='follower', related_name='phonetiktokfollows_follower_set')

    class Meta:
        managed = False
        db_table = 'phone_tiktok_follows'


class PhoneTiktokLikes(models.Model):
    pk = models.CompositePrimaryKey('username', 'video_id')
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    video = models.ForeignKey('PhoneTiktokVideos', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'phone_tiktok_likes'


class PhoneTiktokMessages(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    channel = models.ForeignKey(PhoneTiktokChannels, models.DO_NOTHING)
    sender = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='sender')
    content = models.CharField(max_length=500)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tiktok_messages'


class PhoneTiktokNotifications(models.Model):
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    from_field = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='from', related_name='phonetiktoknotifications_from_field_set')  # Field renamed because it was a Python reserved word.
    type = models.CharField(max_length=20)
    video = models.ForeignKey('PhoneTiktokVideos', models.DO_NOTHING, blank=True, null=True)
    comment = models.ForeignKey(PhoneTiktokComments, models.DO_NOTHING, blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tiktok_notifications'


class PhoneTiktokPinnedVideos(models.Model):
    pk = models.CompositePrimaryKey('username', 'video_id')
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    video = models.ForeignKey('PhoneTiktokVideos', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'phone_tiktok_pinned_videos'


class PhoneTiktokSaves(models.Model):
    pk = models.CompositePrimaryKey('username', 'video_id')
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    video = models.ForeignKey('PhoneTiktokVideos', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'phone_tiktok_saves'


class PhoneTiktokUnreadMessages(models.Model):
    pk = models.CompositePrimaryKey('username', 'channel_id')
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    channel = models.ForeignKey(PhoneTiktokChannels, models.DO_NOTHING)
    amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_tiktok_unread_messages'


class PhoneTiktokVideos(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    src = models.CharField(max_length=500)
    caption = models.CharField(max_length=100, blank=True, null=True)
    metadata = models.TextField(blank=True, null=True)
    music = models.TextField(blank=True, null=True)
    likes = models.IntegerField()
    comments = models.IntegerField()
    views = models.IntegerField()
    saves = models.IntegerField()
    pinned_comment = models.CharField(max_length=10, blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tiktok_videos'


class PhoneTiktokViews(models.Model):
    pk = models.CompositePrimaryKey('username', 'video_id')
    username = models.ForeignKey(PhoneTiktokAccounts, models.DO_NOTHING, db_column='username')
    video = models.ForeignKey(PhoneTiktokVideos, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'phone_tiktok_views'


class PhoneTinderAccounts(models.Model):
    name = models.CharField(max_length=50)
    phone_number = models.OneToOneField(PhonePhones, models.DO_NOTHING, db_column='phone_number', primary_key=True)
    photos = models.TextField(blank=True, null=True)
    bio = models.CharField(max_length=500, blank=True, null=True)
    dob = models.DateField()
    is_male = models.IntegerField()
    interested_men = models.IntegerField()
    interested_women = models.IntegerField()
    active = models.IntegerField()
    last_seen = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tinder_accounts'


class PhoneTinderMatches(models.Model):
    pk = models.CompositePrimaryKey('phone_number_1', 'phone_number_2')
    phone_number_1 = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number_1', to_field='phone_number')
    phone_number_2 = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number_2', to_field='phone_number', related_name='phonetindermatches_phone_number_2_set')
    latest_message = models.CharField(max_length=1000, blank=True, null=True)
    latest_message_timestamp = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'phone_tinder_matches'


class PhoneTinderMessages(models.Model):
    sender = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='sender', to_field='phone_number')
    recipient = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='recipient', to_field='phone_number', related_name='phonetindermessages_recipient_set')
    content = models.CharField(max_length=1000, blank=True, null=True)
    attachments = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_tinder_messages'


class PhoneTinderSwipes(models.Model):
    pk = models.CompositePrimaryKey('swiper', 'swipee')
    swiper = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='swiper', to_field='phone_number')
    swipee = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='swipee', to_field='phone_number', related_name='phonetinderswipes_swipee_set')
    liked = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_tinder_swipes'


class PhoneTwitterAccounts(models.Model):
    display_name = models.CharField(max_length=30)
    username = models.CharField(primary_key=True, max_length=20)
    password = models.CharField(max_length=100)
    phone_number = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    bio = models.CharField(max_length=100, blank=True, null=True)
    profile_image = models.CharField(max_length=500, blank=True, null=True)
    profile_header = models.CharField(max_length=500, blank=True, null=True)
    pinned_tweet = models.CharField(max_length=50, blank=True, null=True)
    verified = models.IntegerField(blank=True, null=True)
    follower_count = models.IntegerField()
    following_count = models.IntegerField()
    private = models.IntegerField(blank=True, null=True)
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_accounts'


class PhoneTwitterFollowRequests(models.Model):
    pk = models.CompositePrimaryKey('requester', 'requestee')
    requester = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='requester')
    requestee = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='requestee', related_name='phonetwitterfollowrequests_requestee_set')
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_follow_requests'


class PhoneTwitterFollows(models.Model):
    pk = models.CompositePrimaryKey('followed', 'follower')
    followed = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='followed')
    follower = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='follower', related_name='phonetwitterfollows_follower_set')
    notifications = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_follows'


class PhoneTwitterHashtags(models.Model):
    hashtag = models.CharField(primary_key=True, max_length=50)
    amount = models.IntegerField()
    last_used = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_hashtags'


class PhoneTwitterLikes(models.Model):
    pk = models.CompositePrimaryKey('tweet_id', 'username')
    tweet_id = models.CharField(max_length=50)
    username = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='username')
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_likes'


class PhoneTwitterMessages(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    sender = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='sender')
    recipient = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='recipient', related_name='phonetwittermessages_recipient_set')
    content = models.CharField(max_length=1000, blank=True, null=True)
    attachments = models.TextField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_messages'


class PhoneTwitterNotifications(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    username = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='username')
    from_field = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='from', related_name='phonetwitternotifications_from_field_set')  # Field renamed because it was a Python reserved word.
    type = models.CharField(max_length=20)
    tweet_id = models.CharField(max_length=50, blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_notifications'


class PhoneTwitterPromoted(models.Model):
    tweet = models.OneToOneField('PhoneTwitterTweets', models.DO_NOTHING, primary_key=True)
    promotions = models.IntegerField()
    views = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_promoted'


class PhoneTwitterRetweets(models.Model):
    pk = models.CompositePrimaryKey('tweet_id', 'username')
    tweet_id = models.CharField(max_length=50)
    username = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='username')
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_retweets'


class PhoneTwitterTweets(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    username = models.ForeignKey(PhoneTwitterAccounts, models.DO_NOTHING, db_column='username')
    content = models.CharField(max_length=280, blank=True, null=True)
    attachments = models.TextField(blank=True, null=True)
    reply_to = models.CharField(max_length=50, blank=True, null=True)
    like_count = models.IntegerField(blank=True, null=True)
    reply_count = models.IntegerField(blank=True, null=True)
    retweet_count = models.IntegerField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_twitter_tweets'


class PhoneVoiceMemosRecordings(models.Model):
    phone_number = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    file_name = models.CharField(max_length=50)
    file_url = models.CharField(max_length=500)
    file_length = models.IntegerField()
    created_at = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_voice_memos_recordings'


class PhoneWalletTransactions(models.Model):
    phone_number = models.ForeignKey(PhonePhones, models.DO_NOTHING, db_column='phone_number', to_field='phone_number')
    amount = models.IntegerField()
    company = models.CharField(max_length=50)
    logo = models.CharField(max_length=200, blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_wallet_transactions'


class PhoneYellowPagesPosts(models.Model):
    phone_number = models.CharField(max_length=15)
    title = models.CharField(max_length=50)
    description = models.CharField(max_length=1000)
    attachment = models.CharField(max_length=500, blank=True, null=True)
    price = models.IntegerField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'phone_yellow_pages_posts'


class PlayerHouses(models.Model):
    house = models.CharField(max_length=50, blank=True, null=True)
    citizenid = models.CharField(max_length=50, blank=True, null=True)
    owner = models.CharField(max_length=46, blank=True, null=True)
    keyholders = models.TextField(blank=True, null=True)
    stash = models.TextField(blank=True, null=True)
    outfit = models.TextField(blank=True, null=True)
    logout = models.TextField(blank=True, null=True)
    decoratestash = models.TextField(db_column='decorateStash', blank=True, null=True)  # Field name made lowercase.
    charge = models.TextField(blank=True, null=True)
    credit = models.CharField(max_length=50, blank=True, null=True)
    creditprice = models.CharField(db_column='creditPrice', max_length=50, blank=True, null=True)  # Field name made lowercase.
    console = models.TextField(blank=True, null=True)
    decoratecoords = models.TextField(db_column='decorateCoords', blank=True, null=True)  # Field name made lowercase.
    rented = models.IntegerField(blank=True, null=True)
    rentprice = models.IntegerField(db_column='rentPrice', blank=True, null=True)  # Field name made lowercase.
    rentable = models.IntegerField(blank=True, null=True)
    purchasable = models.IntegerField(blank=True, null=True)
    vaultcodes = models.TextField(db_column='vaultCodes', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'player_houses'


class PlayerOutfitCodes(models.Model):
    outfitid = models.IntegerField()
    code = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'player_outfit_codes'


class PlayerOutfits(models.Model):
    citizenid = models.CharField(max_length=50, blank=True, null=True)
    outfitname = models.CharField(max_length=50)
    model = models.CharField(max_length=50, blank=True, null=True)
    props = models.CharField(max_length=1000, blank=True, null=True)
    components = models.CharField(max_length=1500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'player_outfits'
        unique_together = (('citizenid', 'outfitname', 'model'),)


class Playerskins(models.Model):
    citizenid = models.CharField(max_length=255)
    model = models.CharField(max_length=255)
    skin = models.TextField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'playerskins'


class RaceTracks(models.Model):
    name = models.CharField(max_length=50, blank=True, null=True)
    checkpoints = models.TextField(blank=True, null=True)
    metadata = models.TextField(blank=True, null=True)
    creatorid = models.CharField(max_length=50, blank=True, null=True)
    creatorname = models.CharField(max_length=50, blank=True, null=True)
    distance = models.IntegerField(blank=True, null=True)
    raceid = models.CharField(max_length=50, blank=True, null=True)
    access = models.TextField(blank=True, null=True)
    curated = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'race_tracks'


class RacerNames(models.Model):
    citizenid = models.TextField()
    racername = models.TextField()
    lasttouched = models.DateTimeField()
    races = models.IntegerField()
    wins = models.IntegerField()
    tracks = models.IntegerField()
    auth = models.CharField(max_length=50, blank=True, null=True)
    crew = models.CharField(max_length=50, blank=True, null=True)
    createdby = models.CharField(max_length=50, blank=True, null=True)
    revoked = models.IntegerField(blank=True, null=True)
    ranking = models.IntegerField(blank=True, null=True)
    active = models.IntegerField()
    crypto = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'racer_names'


class RacingCrews(models.Model):
    crew_name = models.TextField(blank=True, null=True)
    members = models.JSONField(blank=True, null=True)
    wins = models.IntegerField(blank=True, null=True)
    races = models.IntegerField(blank=True, null=True)
    rank = models.IntegerField(blank=True, null=True)
    founder_name = models.TextField(blank=True, null=True)
    founder_citizenid = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'racing_crews'


class RacingRaces(models.Model):
    raceid = models.CharField(db_column='raceId', max_length=255)  # Field name made lowercase.
    trackid = models.CharField(db_column='trackId', max_length=255)  # Field name made lowercase.
    results = models.JSONField(blank=True, null=True)
    amountofracers = models.IntegerField(db_column='amountOfRacers')  # Field name made lowercase.
    laps = models.IntegerField()
    hostname = models.CharField(db_column='hostName', max_length=255, blank=True, null=True)  # Field name made lowercase.
    maxclass = models.CharField(db_column='maxClass', max_length=50, blank=True, null=True)  # Field name made lowercase.
    ghosting = models.IntegerField()
    ranked = models.IntegerField()
    reversed = models.IntegerField()
    firstperson = models.IntegerField(db_column='firstPerson')  # Field name made lowercase.
    automated = models.IntegerField()
    hidden = models.IntegerField()
    silent = models.IntegerField()
    buyin = models.IntegerField(db_column='buyIn')  # Field name made lowercase.
    data = models.JSONField(blank=True, null=True)
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'racing_races'


class RealVehicleshop(models.Model):
    id = models.AutoField(primary_key=True) 
    information = models.TextField(blank=True, null=True)
    vehicles = models.TextField(blank=True, null=True)
    categories = models.TextField(blank=True, null=True)
    feedbacks = models.TextField(blank=True, null=True)
    complaints = models.TextField(blank=True, null=True)
    preorders = models.TextField(blank=True, null=True)
    employees = models.TextField(blank=True, null=True)
    soldvehicles = models.TextField(blank=True, null=True)
    transactions = models.TextField(blank=True, null=True)
    perms = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'real_vehicleshop'


class RentedVehicles(models.Model):
    vehicle = models.CharField(max_length=60)
    plate = models.CharField(primary_key=True, max_length=12)
    player_name = models.CharField(max_length=255)
    base_price = models.IntegerField()
    rent_price = models.IntegerField()
    owner = models.CharField(max_length=46, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'rented_vehicles'


class SocietyMoneywash(models.Model):
    identifier = models.CharField(max_length=46, blank=True, null=True)
    society = models.CharField(max_length=60)
    amount = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'society_moneywash'


class TrackTimes(models.Model):
    trackid = models.CharField(db_column='trackId', max_length=255)  # Field name made lowercase.
    racername = models.CharField(db_column='racerName', max_length=255)  # Field name made lowercase.
    carclass = models.CharField(db_column='carClass', max_length=50)  # Field name made lowercase.
    vehiclemodel = models.CharField(db_column='vehicleModel', max_length=255)  # Field name made lowercase.
    racetype = models.CharField(db_column='raceType', max_length=50)  # Field name made lowercase.
    time = models.IntegerField()
    reversed = models.IntegerField()
    pbhistory = models.JSONField(db_column='pbHistory', blank=True, null=True)  # Field name made lowercase.
    timestamp = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'track_times'


class UserLicenses(models.Model):
    type = models.CharField(max_length=60)
    owner = models.CharField(max_length=46, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user_licenses'


class Users(models.Model):
    identifier = models.CharField(primary_key=True, max_length=46)
    ssn = models.CharField(unique=True, max_length=11)
    accounts = models.TextField(blank=True, null=True)
    group = models.CharField(max_length=50, blank=True, null=True)
    inventory = models.TextField(blank=True, null=True)
    job = models.CharField(max_length=20, blank=True, null=True)
    job_grade = models.IntegerField(blank=True, null=True)
    loadout = models.TextField(blank=True, null=True)
    metadata = models.TextField(blank=True, null=True)
    position = models.TextField(blank=True, null=True)
    firstname = models.CharField(max_length=16, blank=True, null=True)
    lastname = models.CharField(max_length=16, blank=True, null=True)
    dateofbirth = models.CharField(max_length=10, blank=True, null=True)
    sex = models.CharField(max_length=1, blank=True, null=True)
    height = models.IntegerField(blank=True, null=True)
    skin = models.TextField(blank=True, null=True)
    status = models.TextField(blank=True, null=True)
    is_dead = models.IntegerField(blank=True, null=True)
    id = models.AutoField(unique=True)
    disabled = models.IntegerField(blank=True, null=True)
    last_property = models.CharField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)
    last_seen = models.DateTimeField(blank=True, null=True)
    phone_number = models.CharField(max_length=20, blank=True, null=True)
    pincode = models.IntegerField(blank=True, null=True)
    playtime = models.IntegerField(blank=True, null=True)
    inside = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'users'


class VehicleCategories(models.Model):
    name = models.CharField(primary_key=True, max_length=60)
    label = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'vehicle_categories'


class VehicleSold(models.Model):
    client = models.CharField(max_length=50)
    model = models.CharField(max_length=50)
    plate = models.CharField(max_length=50)
    soldby = models.CharField(max_length=50)
    date = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'vehicle_sold'


class Vehicles(models.Model):
    name = models.CharField(max_length=60)
    model = models.CharField(primary_key=True, max_length=60)
    price = models.IntegerField()
    category = models.CharField(max_length=60, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'vehicles'


class Whitelist(models.Model):
    identifier = models.CharField(primary_key=True, max_length=46)

    class Meta:
        managed = False
        db_table = 'whitelist'
