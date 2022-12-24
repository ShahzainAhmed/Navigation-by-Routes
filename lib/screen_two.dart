import 'package:flutter/material.dart';

import 'Utils/routes_names.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({super.key, required this.data}); // Constructor

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen 2"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.screenThree, arguments: {
                    'Flutter' : 'Good Mobile Apps'
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.deepOrange,
                  ),
                  child: Center(
                    child: Text(
                      widget.data['Node'],
                      style: const TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
