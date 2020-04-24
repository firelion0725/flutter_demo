import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterapp2/data/DioManger.dart';

import 'model/BannerListModel.dart';
import 'model/BannerModel.dart';
import 'model/TypeListModel.dart';
import 'model/TypeModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '干货集中营',
      theme: ThemeData(
        primarySwatch: Colors.grey,
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
  List<BannerModel> bannerData = new List();
  List<TypeModel> typeData = new List();
  List<Image> imageList = new List();
  List<Tab> tabs = new List();

  @override
  void initState() {
    super.initState();
    getBannerDataFromNet().then((value) {
      setState(() {
        bannerData = value;
        imageList = getImage();
      });
    });
    getTypeDataFromNet().then((value) {
      setState(() {
        typeData = value.data;
        tabs = getTabs();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: new Color.fromARGB(50, 50, 50, 100),
        title: new Text("干货集中营"),
      ),
      body: Container(
          child: Container(
        height: 300,
        child: getSwiper(),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: getTypeDataFromNet,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void getHttp() async {
    try {
      Response response = await DioManger.dioInstance().get("/v2/banners");
      Map<String, dynamic> map = response.data;
      BannerListModel t = BannerListModel.fromJson(map);
      print(t);
    } catch (e) {
      print(e);
    }
  }

  Swiper getSwiper() {
    return new Swiper(
      itemHeight: 300,
      itemCount: bannerData.length == null ? 0 : bannerData.length,
      itemBuilder: (BuildContext context, int index) {
        return imageList[index];
      },
    );
  }

  List<Image> getImage() {
    List<Image> list = new List();
    for (int i = 0; i < bannerData.length; i++) {
      list.add(new Image.network(bannerData[i].image, fit: BoxFit.cover));
    }
    return list;
  }

  Future<List<BannerModel>> getBannerDataFromNet() async {
    List<BannerModel> list = new List();
    try {
      Response response = await DioManger.dioInstance().get("/v2/banners");
      Map<String, dynamic> map = response.data;
      BannerListModel t = BannerListModel.fromJson(map);
      list = t.data;
    } catch (e) {} finally {
      // ignore: control_flow_in_finally
      return list;
    }
  }

  List<Tab> getTabs() {
    List<Tab> list = new List();
    for (int i = 0; i < typeData.length; i++) {
      list.add(new Tab(text: typeData[i].title));
    }
    return list;
  }

  Future<TypeListModel> getTypeDataFromNet() async {
    TypeListModel t;
    try {
      Response response =
          await DioManger.dioInstance().get("/v2/categories/GanHuo");
      Map<String, dynamic> map = response.data;
      t = TypeListModel.fromJson(map);
    } catch (e) {} finally {
      print("============>" + t.status.toString());
      // ignore: control_flow_in_finally
      return t;
    }
  }
}
