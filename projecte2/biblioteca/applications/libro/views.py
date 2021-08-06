from django.db.models import query
from django.shortcuts import render
from django.views.generic import ListView, DetailView
from .models import Libro

# Create your views here.

class LibrosListView(ListView):
    template_name = "libro/libros_list.html"
    context_object_name = "lista_libros"
    
    def get_queryset(self):
        palabra_clave = self.request.GET.get("kword", '')
        #Fecha 1
        f1 = self.request.GET.get("fecha1", '')
        #Fecha 2
        f2 = self.request.GET.get("fecha2", '')
        
        if f1 and f2:
            return Libro.objects.listar_libros2(palabra_clave, f1, f2)
        else:
            return Libro.objects.listar_libros(palabra_clave) 

class LibrosListTrg(ListView):
    template_name = "libro/libros_list.html"
    context_object_name = "lista_libros"
    
    def get_queryset(self):
        palabra_clave = self.request.GET.get("kword", '')
        return Libro.objects.listar_libros_trg(palabra_clave) 


class LibrosListView2(ListView):
    template_name = "libro/libros_list2.html"
    context_object_name = "lista_libros"
    
    def get_queryset(self):
        return Libro.objects.listar_libros_categoria('1')


class LibroDetailView(DetailView):
    model = Libro
    template_name = "libro/detalle.html"
