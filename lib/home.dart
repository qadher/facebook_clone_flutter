import 'package:facebook_clone_flutter/sections/headerButtonSection.dart';
import 'package:facebook_clone_flutter/sections/statusSection.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_flutter/widgets/appBarButton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          ),
          actions: [
            AppBarButton(buttonIcon: Icons.search,
                buttonAction: (){
                   print("Search Screen");
            },
            ),
            AppBarButton(buttonIcon: Icons.messenger,
              buttonAction: (){
                print("messanger Screen");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 10,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
