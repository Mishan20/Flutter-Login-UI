import 'package:flutter/material.dart';
import 'package:ui_design/UI/CustomInput.dart';

void main() {
  runApp(MaterialApp(
    title: "Login App",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/1246483.png', width: 100, height: 100),
                CustomInput(
                    Icon(Icons.person, color: Colors.white), 'Username'),

                CustomInput(
                    Icon(Icons.lock, color: Colors.white), 'Password'),

                Container(
                  width: 150,
                    child: MaterialButton(onPressed: (){}, color: Colors.deepOrange, textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text('Login', style: TextStyle(
                      fontSize: 20.0
                    ),),))

              ],
            ),
          ),
        ),
      ),
    );
  }
}



