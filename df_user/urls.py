#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.conf.urls import url

from views import *

urlpatterns = [
    url(r'^register/$', register, name='register'),
    url(r'^register_exist/$', register_exist, name='register_exist'),
    url(r'^register_handle/$', register_handle, name='register_handle'),
    url(r'^login/$', login, name='login'),
    url(r'^login_handle/$', login_handle, name='login_handle'),
    url(r'^logout/$', logout, name='logout'),
    url(r'^user_center_info/$', user_center_info, name='user_center_info'),
    url(r'^user_center_order(\d*)/$', user_center_order, name='user_center_order'),
    url(r'^user_center_site/$', user_center_site, name='user_center_site'),

]
