#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.shortcuts import render

def index(request):
    return render(request, 'df_goods/index.html')
