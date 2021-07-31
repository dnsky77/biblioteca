from django.contrib import admin

from .models import Libro
from .models import Categoria

# Register your models here.
admin.site.register(Libro)
admin.site.register(Categoria)
