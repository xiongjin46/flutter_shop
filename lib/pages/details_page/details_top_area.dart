import 'package:flutter/material.dart';
import 'package:flutter_shop/model/details.dart';
import 'package:provide/provide.dart';
import '../../provide/details_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsTopArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provide<DetailsInfoProvide>(builder: (context, child, val) {
      GoodInfo goodsInfo =
          Provide.value<DetailsInfoProvide>(context).goodsInfo.data.goodInfo;
      return Container(
        color:Colors.white,
        child: new Column(
          children: <Widget>[
            _goodsImage(goodsInfo.image1),
            _goodsName(goodsInfo.goodsName),
            _goodsNum(goodsInfo.goodsSerialNumber),
            _goodsPrice(goodsInfo.presentPrice, goodsInfo.oriPrice)
          ],
        ),
      );
    });
  }

  //商品图片
  Widget _goodsImage(url) {
    return Image.network(
      url,
      width: ScreenUtil().setWidth(740),
    );
  }

  //商品名称
  Widget _goodsName(name) {
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      child: Text(
        name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: ScreenUtil().setSp(30)),
      ),
    );
  }

  //商品编号
  Widget _goodsNum(num) {
    return Container(
      width: ScreenUtil().setWidth(730),
      padding: EdgeInsets.only(left: 15.0),
      margin: EdgeInsets.only(top: 8.0),
      child: Text(
        '编号:${num}',
        style: TextStyle(color: Colors.black26),
      ),
    );
  }

  //商品价格
  Widget _goodsPrice(presentPrice, oriPrice) {
    return Container(
      margin: EdgeInsets.only(top: 8.0, left: 15.0),
      child: Row(
        children: <Widget>[
          Text('￥${presentPrice}',
              style: TextStyle(
                  color: Colors.pink, fontSize: ScreenUtil().setSp(40))),
          Text(
            '市场价:￥${oriPrice}',
            style: TextStyle(
                color: Colors.black26, decoration: TextDecoration.lineThrough),
          )
        ],
      ),
    );
  }
}
