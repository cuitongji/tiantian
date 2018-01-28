#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import url
from views import *

urlpatterns = [
    url(r'^cart/$', cart, name='cart'),
    url(r'^cart/add(\d+)/$', add, name='add'),
    url(r'^cart/edit(\d+)_(\d+)/$', edit, name='edit'),
    url(r'^cart/delete(\d+)/$', delete, name='delete'),
]