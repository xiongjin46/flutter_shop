import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  List<String> testList =[];

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void _add() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    String temp='hahahha';
    testList.add(temp);
    preferences.setStringList('testInfo', testList);
    _show();
  }

  void _show() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if(prefs.getStringList('testInfo')!=null){
        testList=prefs.getStringList('testInfo');
      }
    });
  }
}


