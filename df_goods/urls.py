#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import url
from views import *

urlpatterns = [
    url(r'^$', index, name="index"),
    url(r'^detail/$', detail, name="detail"),
    url(r'^list/$', list, name="list")
]