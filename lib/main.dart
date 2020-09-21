import 'package:flutter/material.dart';
import 'basicinfo.dart';

void main() {
  runApp(MaterialApp(
    title: 'Jazy',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 500,
          color: Colors.orangeAccent[700],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                child: Image.network("https://logodix.com/logo/1040862.png"),
              ),
              Container(
                child: Text(
                  'jazy',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
              SizedBox(height: 160),
              Container(
                child: FlatButton(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AllPages()),
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.orangeAccent[700],
                  child: Text("Get Started".toUpperCase(),
                      style: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AllPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Column(
          children: [
            Container(
              height: 100,
              child: Image.network("https://logodix.com/logo/1040862.png"),
            ),
            Container(
              child: Text(
                "Jazy",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        )),
        toolbarHeight: 230,
        backgroundColor: Colors.orangeAccent[700],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
        // child: Center(child: Text('Sign in' ,style: TextStyle(color: Colors.orangeAccent[700] ,fontSize: 16 ,fontWeight: FontWeight.bold),)),
        child: OnBoardingPage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
