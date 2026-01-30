from django.db import models
from django.contrib.auth.models import User

class UserProfile(models.Model):
    # Łączymy się z wbudowanym użytkownikiem Django (OneToOne)
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='profile')
    
    # Tutaj przechowamy ten kluczowy identyfikator (np. steam:110000abcde...)
    fivem_identifier = models.CharField(max_length=50, unique=True, help_text="Twój Hex ID z FiveM (np. steam:...)")

    def __str__(self):
        return f"Profil gracza {self.user.username} ({self.fivem_identifier})"