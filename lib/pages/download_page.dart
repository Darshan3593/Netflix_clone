import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  @override
  _DownloadsPageState createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text(
          "My Downloads",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.collections_bookmark,
                size: 28,
              ),
              onPressed: () {}),
          IconButton(
              icon: Image.asset(
                "assets/images/profile.jpeg",
                fit: BoxFit.cover,
                width: 26,
                height: 26,
              ),
              onPressed: () {}),
        ],
      ),
      body: getbody(),
    );
  }

  Widget getbody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white38.withOpacity(0.1),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Start Downloads",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "On",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3), shape: BoxShape.circle),
              child: Container(
                child: Icon(
                  Icons.file_download,
                  size: 80,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Never be without FlixApp !",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: Text(
                "    Download shows and movies so you'll never be without something to watch even when you are offline.",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
              ),
              child:   Center(
                child: Text(
                  "See What You Can Download !",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
        Spacer()
      ],
    );
  }
}
