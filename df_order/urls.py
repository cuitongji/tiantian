#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import url
from views import *

urlpatterns = [
    url(r'^order/$', order, name='order'),
    url(r'^order/order_handler/$', order_handler, name='order_handler'),
    url(r'^order/pay(\d+)/$', pay, name='pay'),
]