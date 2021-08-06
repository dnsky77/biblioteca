from django.contrib import admin
from django.urls import path
from . import views

app_name = "lector_app"

urlpatterns = [
    path('prestamo/add/', 
        views.RegistrarPrestamo.as_view(), 
        name="prestamo_add"
    ),
]