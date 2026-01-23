from django.urls import path
from . import views

urlpatterns = [

    path('users/', views.UsersListCreateView.as_view(), name='users-list'),

    path('users/<int:pk>/', views.UsersDetailView.as_view(), name='users-detail'),
]