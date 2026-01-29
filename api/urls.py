from django.urls import path
from . import views

urlpatterns = [
    path('', views.api_root),

    path('users/', views.UsersListCreateView.as_view(), name='users-list'),

    path('users/<int:pk>/', views.UsersDetailView.as_view(), name='users-detail'),
    path('vehicles/', views.VehiclesListCreateView.as_view(), name='vehicles-list'),
    path('vehicles/<str:pk>/', views.VehiclesDetailView.as_view(), name='vehicles-detail'),
    path('stats/', views.ServerStatsView.as_view(), name='server-stats'),
    path('check-license/<int:player_id>/', views.CheckLicenseView.as_view(), name='check-license'),
]