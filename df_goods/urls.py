#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import url
from views import *

urlpatterns = [
    url(r'^$', index, name="index")
]