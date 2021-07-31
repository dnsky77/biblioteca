from django.db.models import query
from django.shortcuts import render
from .models import Autor
from django.views.generic import ListView
from django.views.generic.edit import FormView

# Create your views here.

class AutorListView(ListView):
    template_name = "autor/autor_list.html"
    context_object_name = "lista_autores"
    def get_queryset(self):
        palabra_clave = self.request.GET.get("kword", '')
        
        return Autor.objects.buscar_autor4(palabra_clave)