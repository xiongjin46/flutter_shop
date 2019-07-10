import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/provide/category_goods_list.dart';
import 'package:flutter_shop/provide/child_category.dart';
import 'package:flutter_shop/provide/counter.dart';
import 'package:flutter_shop/provide/details_info.dart';
import 'package:provide/provide.dart';
import 'index_page.dart';
import '../routers/routes.dart';
import '../routers/application.dart';

void main() {
  var counter = Counter();
  var providers = Providers();
  var childCategory = ChildCategory();
  var categoryGoodsListProvide = CategoryGoodsListProvide();
  var detailsInfoProvide = DetailsInfoProvide();

  providers
    ..provide(Provider<Counter>.value(counter))
    ..provide(Provider<ChildCategory>.value(childCategory))
    ..provide(Provider<CategoryGoodsListProvide>.value(categoryGoodsListProvide))
    ..provide(Provider<DetailsInfoProvide>.value(detailsInfoProvide));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //初始化router
    final router=Router();
    Routes.configureRoutes(router);
    Application.router=router;

    return new Container(
      child: MaterialApp(
        title: '百姓生活',
        debugShowCheckedModeBanner: false,
        //开始router
        onGenerateRoute: Application.router.generator,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
