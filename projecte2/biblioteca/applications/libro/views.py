from django.db.models import query
from django.shortcuts import render
from django.views.generic import ListView
from .models import Libro

# Create your views here.

class LibrosListView(ListView):
    template_name = "libro/libros_list.html"
    context_object_name = "lista_libros"
    
    def get_queryset(self):
        palabra_clave = self.request.GET.get("kword", '')
        
        return Libro.objects.listar_libros(palabra_clave)
