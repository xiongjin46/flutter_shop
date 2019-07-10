import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Cart with ChangeNotifier {
  String cartString = "[]";

  save(goodsId,goodsName,count,price,images) async{
    //初始化sp
    SharedPreferences prefs =await SharedPreferences.getInstance();
    cartString=prefs.getString('cartInfo');//获取持久化存储的值
    //判断cartString是否为空，为空说明是第一次添加，或者key被清除
    //如果有值进行decode操作
  }
}

