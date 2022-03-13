import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: globalKey,
        appBar: AppBar(
            leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            globalKey.currentState!.openDrawer();
          },
        )

            // leading: Drawer(
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     color: Colors.red,
            //   ),
            // ),
            ),
        drawer: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 600,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.white,
                    child: IconButton(
                      icon: Icon(Icons.chevron_right),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
