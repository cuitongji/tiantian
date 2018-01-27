#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import url
from views import *

urlpatterns = [
    url(r'^$', index, name="index"),
    url(r'^(\d+)/$', detail, name="detail"),
    url(r'^list(\d+)_(\d+)_(\d+)/$', list, name="list"),
    # url(r'^search/', MySearchView())
]