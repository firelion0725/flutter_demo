import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp2/data/DioManger.dart';
import 'package:flutterapp2/model/TestModel.dart';

import 'model/TeModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String message = 'You have pushed the button this many times:';
  List<TeModel> bannerData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: 300,
          child: Swiper(
            itemCount: bannerData != null && bannerData.length != null ? bannerData.length : 0,
            //item数量
            itemBuilder: (BuildContext context, int index) {
              //item构建
              return new Image.network(
//                "https://www.wanandroid.com/blogimgs/acc23063-1884-4925-bdf8-0b0364a7243e.png",
                bannerData[index].image,
                fit: BoxFit.contain,
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getHttp,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void getHttp() async {
    try {
      Response response = await DioManger.getDioInstance().get("/v2/banners");
      Map<String, dynamic> map = response.data;
      TestModel t = TestModel.fromJson(map);
      print(t);

      setState(() {
//        message = t.data[0].title;
        bannerData = t.data;
      });
    } catch (e) {
      print(e);
    }
  }

  // 读取 assets 文件夹中的 person.json 文件
  Future<String> _loadTestJson() async {
    return await rootBundle.loadString('assets/test.json');
  }
}
