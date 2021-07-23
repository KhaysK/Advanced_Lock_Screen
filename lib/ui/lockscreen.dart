import 'package:advanced_lockscreen/custom_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LockScreen",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () => debugPrint("Settings tapped"),
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.30,
              child: const Center(
                  child: Text(
                    "13325",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5.0,
                    ),
                  )
              )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.50,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: GridView.builder(
                itemCount: 11,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 50.0,
                  mainAxisExtent: 35.0,
                  crossAxisSpacing: 35.0,
                ),
                itemBuilder: (context, index) => ButtonCustom(text: "TEST"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
