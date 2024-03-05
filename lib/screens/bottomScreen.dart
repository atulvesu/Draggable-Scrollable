import 'package:flutter/material.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Bottom Sheet'),
      ),
      body: Column(
        children: [
          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   color: Colors.green[100],
          // ),
          Expanded(
            child: DraggableScrollableSheet(
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Material(
                  child: Container(
                    color: Colors.teal,
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(
                            'item $index',
                            style: TextStyle(color: Color(0xfffcf8f7)),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
