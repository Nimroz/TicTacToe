import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

@override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only( top: 71),
            height: 91,
            width: 91,
            decoration: BoxDecoration(
                color: const Color(0xff42A5F5),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/O.png'))),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28, top: 87),
            child: Text(
              'VS',
              style: TextStyle(
                  color: Color(0xffDBDBDB),
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left:25, top: 71),
            height: 91,
            width: 91,
            decoration: BoxDecoration(
                color: const Color(0xff42A5F5),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/X.png'))),
            ),
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                  padding: EdgeInsets.only(top: 11),
                child: Text(
                  'Player 1',
                  style: TextStyle(
                      color: Color(0xff656565),
                      fontSize: 25,
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 11, left: 110),
                child: Text(
                  'Player 2',
                  style: TextStyle(
                    color: Color(0xff656565),
                    fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
        ],
       ),

      //Next Stage
      

      );
  }
}
