#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.contrib import admin
from models import *

# Register your models here.
class TypeInfoAdmin(admin.ModelAdmin):
    # list_display = ['title', 'isDelete']
    list_per_page = 10

class GoodsInfoAdmin(admin.ModelAdmin):
    list_display = ['gtitle', 'gpic', 'gprice', 'isDelete', 'gunit',
                    'gclick', 'gjianjie', 'gkuncun', 'gcontent', 'gtype']
    list_per_page = 20

admin.site.register(TypeInfo, TypeInfoAdmin)
admin.site.register(GoodsInfo, GoodsInfoAdmin)