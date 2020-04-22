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
  void initState() {
    super.initState();
    getDataFromNet().then((value) {
      setState(() {
        bannerData = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        child: getSwiper(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getHttp,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void getHttp() async {
    try {
      Response response = await DioManger.getDioInstance().get("/v2/banners");
      Map<String, dynamic> map = response.data;
      TestModel t = TestModel.fromJson(map);
      print(t);
    } catch (e) {
      print(e);
    }
  }

  Swiper getSwiper() {
    return new Swiper(
      itemHeight: 300,
      itemCount: bannerData.length,
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          bannerData[index].image,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Future<List<TeModel>> getDataFromNet() async {
    List<TeModel> list = new List();
    try {
      Response response = await DioManger.getDioInstance().get("/v2/banners");
      Map<String, dynamic> map = response.data;
      TestModel t = TestModel.fromJson(map);
      list = t.data;
    } catch (e) {} finally {
      // ignore: control_flow_in_finally
      return list;
    }
  }

  // 读取 assets 文件夹中的 person.json 文件
  Future<String> _loadTestJson() async {
    return await rootBundle.loadString('assets/test.json');
  }
}
