import 'package:flutter/material.dart';
import 'package:flutterbimby/screens/bimby.dart';
import 'package:flutterbimby/screens/home.dart';
import 'package:flutterbimby/theme/appThemeBimby.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

const String NewsBox = "NewsBox";

void main() async{

  await Hive.initFlutter();
//  Hive.registerAdapter(ArticleAdapter());

//  await Hive.openBox<Article>(NewsBox);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
//    return MultiProvider(
//      providers: [
//        Provider<Bloc>(create: (_) => Bloc()),
//      ],
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        initialRoute: '/',
        theme: appTheme,
        routes: {
          '/': (context) => Home(),
          '/bimby': (context) => Bimby(),
//          '/news_web_detail': (context) => NewsWebDetail(),
//          '/my_news': (context) => Search(),
        },
      );
//    );
  }
}

