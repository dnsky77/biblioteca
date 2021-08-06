from django.contrib import admin
from .models import Lector
from .models import Prestamo
# Register your models here.
admin.site.register(Prestamo)
admin.site.register(Lector)