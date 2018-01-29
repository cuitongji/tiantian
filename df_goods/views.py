#!/usr/bin/env python
# -*- coding: utf-8 -*-
from django.core.paginator import Paginator
from django.shortcuts import render
from django.http import HttpResponse
from models import *
from df_cart.models import *


def index(request):
    # 查询各分类的最新四条,最热四条数据
    typelist = TypeInfo.objects.all()
    type0 = typelist[0].goodsinfo_set.order_by('-id')[0:4]
    type01 = typelist[0].goodsinfo_set.order_by('-gclick')[0:4]
    type1 = typelist[1].goodsinfo_set.order_by('-id')[0:4]
    type11 = typelist[1].goodsinfo_set.order_by('-gclick')[0:4]
    type2 = typelist[2].goodsinfo_set.order_by('-id')[0:4]
    type21 = typelist[2].goodsinfo_set.order_by('-gclick')[0:4]
    type3 = typelist[3].goodsinfo_set.order_by('-id')[0:4]
    type31 = typelist[3].goodsinfo_set.order_by('-gclick')[0:4]
    type4 = typelist[4].goodsinfo_set.order_by('-id')[0:4]
    type41 = typelist[4].goodsinfo_set.order_by('-gclick')[0:4]
    type5 = typelist[5].goodsinfo_set.order_by('-id')[0:4]
    type51 = typelist[5].goodsinfo_set.order_by('-gclick')[0:4]

    context = {
        'title': '首页', 'guest_cart': 1,
        'type0': type0, 'type01': type01,
        'type1': type1, 'type11': type11,
        'type2': type2, 'type21': type21,
        'type3': type3, 'type31': type31,
        'type4': type4, 'type41': type41,
        'type5': type5, 'type51': type51,
        'cart_count': cart_count(request)}
    return render(request, 'df_goods/index.html', context)


def list(request, tid, pindex, sort):
    typeinfo = TypeInfo.objects.get(pk=int(tid))
    news = typeinfo.goodsinfo_set.order_by('id')[0:2]
    if sort == '1':  # 按照最新排序（默认排序方式）
        goods_list = GoodsInfo.objects.filter(gtype_id=int(tid)).order_by('-id')
    elif sort == '2':  # 按照价格排序
        goods_list = GoodsInfo.objects.filter(gtype_id=int(tid)).order_by('-gprice')
    elif sort == '3':  # 按照人气排序（点击量）
        goods_list = GoodsInfo.objects.filter(gtype_id=int(tid)).order_by('-gclick')
    paginator = Paginator(goods_list, 10)
    page = paginator.page(int(pindex))
    context = {'title': typeinfo.ttitle,'guest_cart': 1,
               'page': page,
               'paginator': paginator,
               'typeinfo': typeinfo,
               'sort': sort,
               'news': news,
               'cart_count': cart_count(request)}
    return render(request, 'df_goods/list.html', context)


def detail(request, id):
    goods = GoodsInfo.objects.get(pk=int(id))
    goods.gclick = goods.gclick + 1
    goods.save()

    news = goods.gtype.goodsinfo_set.order_by('-id')[0:2]
    context = {'title': goods.gtype.ttitle, 'guest_cart': 1,
               'goods': goods, 'news': news, 'id': id,
               'cart_count': cart_count(request)}
    response = render(request, 'df_goods/detail.html', context)

    # 记录最近浏览，在用户中心使用
    goods_ids = request.COOKIES.get('goods_ids', '')
    goods_id = '%d' % goods.id
    # 判断是否由浏览记录,如果有,则继续判断
    if goods_ids != '':
        # 拆分为列表
        goods_ids1 = goods_ids.split(',')
        # 如果商品已经被记录,则删除
        if goods_ids1.count(goods_id) >= 1:
            goods_ids1.remove(goods_id)
        # 添加到第一个
        goods_ids1.insert(0, goods_id)
        # 如果超过6个,则删除最后一个
        if len(goods_ids1) >= 6:
            del goods_ids1[5]
        # 拼接为字符串
        goods_ids = ','.join(goods_ids1)
    # 如果没有,则直接增加
    else:
        goods_ids = goods_id
    # 写入cookie
    response.set_cookie('goods_ids', goods_ids)

    return response


# 购物车的数量
def cart_count(request):
    if request.session.has_key('user_id'):
        return CartInfo.objects.filter(user_id=request.session['user_id']).count()
    else:
        return 0


from haystack.views import SearchView
class MySearchView(SearchView):
    def extra_context(self):
        context = super(MysearchView, self).extra_context()
        context['title'] = '搜索'
        context['guest_cart'] = 1
        context['cart_count'] = cart_count(self.request)
        return context















