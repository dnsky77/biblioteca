from django.contrib import admin
from django.urls import path
from . import views

app_name = "autor_app"

urlpatterns = [
    path('autores/', 
        views.AutorListView.as_view(), 
        name="autores"
    ),
]