import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBottom  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(80),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: (){},
            child: Container(
              width: ScreenUtil().setWidth(110),
              alignment: Alignment.center,
              child: Icon(
                Icons.shopping_cart,
                size: 35,
                color: Colors.red,
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              color: Colors.green,
              width: ScreenUtil().setWidth(320),
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(80),
              child: Text(
                '加入购物车',
                style: TextStyle(fontSize: ScreenUtil().setSp(28),color: Colors.white),
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              color: Colors.red,
              width: ScreenUtil().setWidth(320),
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(80),
              child: Text(
                '立即购买',
                style: TextStyle(fontSize: ScreenUtil().setSp(28),color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
