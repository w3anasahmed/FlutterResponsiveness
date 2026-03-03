import 'package:flutter/material.dart';
import 'package:flutter_responsiveness/constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      backgroundColor: defaultBackGroundColor,
      body: Row(
        children: [
          //drawer
          drawer,

          //body
          Expanded(
            flex: 1,
            child: Column(
              children: [
                //4 box on the top
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                        itemBuilder: (context, index) {
                          return
                          // padding: const EdgeInsets.only(top: 8.0, left: 8),
                          Container(
                            color: Colors.blue,
                            child: Center(child: Text(media.toString())),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                //tiles below it
                Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Container(height: 40, color: Colors.green),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          Expanded(child: Container(color: Colors.pink)),
        ],
      ),
    );
  }
}
