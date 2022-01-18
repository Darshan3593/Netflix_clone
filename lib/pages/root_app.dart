
import 'package:flutter/material.dart';
import 'package:netflixclone/json/root_app_json.dart';
import 'package:netflixclone/pages/search_page.dart';

import 'coming_soon_page.dart';
import 'download_page.dart';
import 'home_page.dart';

class Rootapp extends StatefulWidget {
  const Rootapp({Key? key}) : super(key: key);

  @override
  _RootappState createState() => _RootappState();
}

class _RootappState extends State<Rootapp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody() ,
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        ComingSoonPage(),
        SearchPage(),
        DownloadsPage(),
      ],
    );
  }

  Widget getFooter() {
    return Container(
        height: 55,
        decoration: BoxDecoration(color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(right: 30,left: 30,top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(items.length, (index) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      activeTab = index;
                    });
                  },
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Icon(items[index]['icon'],color: Colors.white,),
                          SizedBox(height: 5,),
                          Text(items[index]['text'],style: TextStyle(color: Colors.white,fontSize: 10),
                          )
                        ],
                      )

                    ],
                  ),
                );
              }
              )
          ),
        ));
  }


}
