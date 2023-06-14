import 'package:flutter/material.dart';
import 'package:flutter_first/utils/common_app_bar.dart';
import 'package:flutter_first/utils/common_bottom_bar.dart';
import 'package:flutter_first/utils/common_methods.dart';

import '../model/stocks_model.dart';
import '../utils/common_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AvengersModel> avengersList = [];

  @override
  Widget build(BuildContext context) {
    avengersList.add(AvengersModel("Chris hemsworth","https://th.bing.com/th/id/R.08916520bf9a01469b7943cf5c2fe0d1?rik=ZIAYSp81L1GCeA&riu=http%3a%2f%2fmedia2.popsugar-assets.com%2ffiles%2f2015%2f01%2f15%2f142%2fn%2f1922398%2facaed4e47f2e59a8_461595176zsRNJG.xxxlarge%2fi%2fHot-Male-Celebrities-Critics-Choice-Awards-2015.jpg&ehk=svH8wvfpWUl1fMmuz73yr5cAta4iJencD18VMDJa1gY%3d&risl=&pid=ImgRaw&r=0"));
    avengersList.add(AvengersModel("Robert dawney jr.","https://www.thelist.com/img/gallery/the-stunning-transformation-of-robert-downey-jr/intro-1499809511.jpg"));
    avengersList.add(AvengersModel("Mark rufflo","https://th.bing.com/th/id/OIP.B6Duh5s8AqNJa_ehmQ3WgwAAAA?pid=ImgDet&rs=1"));
    avengersList.add(AvengersModel("Jeremy renner","https://qph.fs.quoracdn.net/main-qimg-c4d2b2b6456873e79640232a7e431b87"));
    avengersList.add(AvengersModel("Chadwick boseman","https://th.bing.com/th/id/OIP.zwlEfMuwR92tuCxU-FCykgHaD4?pid=ImgDet&rs=1"));

    return Scaffold(
        appBar: const CommonAppBar(title: "Home"),
        bottomNavigationBar: const CommonBottomNavigationBar(),
        body: Center(
            child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: avengersList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.white,
              child: Center(
                child: InkWell(
                  onTap: ()=>{
                    showToastMessage(avengersList[index].avengerName)
                  },
                  child: Row(
                    children: [
                      Image.network(
                        avengersList[index].avengerImg,
                        width: 20.0,
                        height: 20.0,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: Text(avengersList[index].avengerName))
                    ],
                  ),
                ),
              ),
            );
          },
        )),
        drawer: const CommonNavigationDrawer());
  }
}
