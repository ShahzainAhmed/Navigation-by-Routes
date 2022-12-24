import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  dynamic data;
  ScreenThree({super.key, required this.data});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen 3"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      widget.data['Flutter'],
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
