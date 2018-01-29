#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import url
from views import *

urlpatterns = [
    url(r'^order/$', order, name='order'),
    url(r'^order/order_handle/$', order_handle, name='order_handle'),
    url(r'^order/pay(\d+)/$', pay, name='pay'),
]