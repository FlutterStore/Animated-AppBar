import 'package:animated_appbar/animated_appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: BaseLayout(
          appBar: AnimatedAppBar(
            initHeight: 90.0,
            backgroundColor: Colors.green,
            child: Container(
              key: UniqueKey(),
              child:Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.apps,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    Text(
                      "Animated Appbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),  
                    ),
                    Icon(
                      Icons.manage_search,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          scaffold: Page1(),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget with RoutePage{
  Widget newAppBar = Container(
    key:UniqueKey(),
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Animated Appbar",
          style: TextStyle(
            color: Color(0xfff7f4cc),
            fontSize: 15,
          ),
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              decoration:BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(8)
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child: TextButton(
                  onPressed: ()=> routePageWithNewAppBar(Page2(),newAppBar),
                  child: Text(
                    "Click here to navigate Page2!",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget with RoutePage{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            Container(
              height: 40,
              decoration:BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(8)
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                onPressed: () => previousPage(),
                child: Text(
                  "back to Page1",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
