from django.contrib import admin
from django.urls import path
from . import views

app_name = "libro_app"

urlpatterns = [
    path('libros/', 
        views.LibrosListView.as_view(), 
        name="libros"
    ),
    path('libros2/', 
        views.LibrosListView2.as_view(), 
        name="libros2"
    ),
    path('libros-detalle/<pk>', 
        views.LibroDetailView.as_view(), 
        name="libro_detalle"
    ),
    path('libros-trg/', 
        views.LibrosListTrg.as_view(), 
        name="libro_trg"
    ),      
]