from django.contrib import admin
from .models_fivem import Users

@admin.register(Users)
class UsersAdmin(admin.ModelAdmin):
    list_display = ('identifier', 'firstname', 'lastname', 'job', 'job_grade', 'phone_number')
    search_fields = ('identifier', 'firstname', 'lastname', 'job')
