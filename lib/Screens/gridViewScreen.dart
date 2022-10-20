import 'package:flutter/material.dart';

class forGridView extends StatefulWidget {
  const forGridView({Key? key}) : super(key: key);


  @override
  State<forGridView> createState() => _forGridViewState();
}

class _forGridViewState extends State<forGridView> {

  bool ohTurn = true;
  String O = '' ;
  List<String> displayExoh = ['','','','','','','','','',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: GridView.builder(
        itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext contex, int index){
          return GestureDetector(
          onTap:(){
            _tapped(index);
          },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              child: Center(
                child: Text(displayExoh[index], style: const TextStyle(color: Colors.white, fontSize: 40),),
              ),
            ),
          );
          }
      ),
    );
  }
  void _tapped(int index ){
    setState(() {
      if(ohTurn && displayExoh[index] == ''){
        O == Image.asset('assets/O.png'
        ,height: 2,
        width: 2,);
        displayExoh[index] = O;
      } else if (!ohTurn && displayExoh[index] == ''){
        displayExoh[index] == 'x';
      }
      ohTurn = !ohTurn;
      _checkWinner();
    });
  }
  void _checkWinner(){
  if(displayExoh[0] == displayExoh[1] &&
     displayExoh[0] == displayExoh[2] &&
     displayExoh[0] != ''){
    _showAlertDialogue(displayExoh[0]);
  }

  if(displayExoh[3] == displayExoh[4] &&
      displayExoh[3] == displayExoh[5] &&
      displayExoh[3] != ''){
    _showAlertDialogue(displayExoh[3]);
  }
  if(displayExoh[6] == displayExoh[7] &&
      displayExoh[6] == displayExoh[8] &&
      displayExoh[6] != ''){
    _showAlertDialogue(displayExoh[6]);
  }
  if(displayExoh[0] == displayExoh[4] &&
      displayExoh[0] == displayExoh[8] &&
      displayExoh[0] != ''){
    _showAlertDialogue(displayExoh[0]);
  }

  if(displayExoh[1] == displayExoh[4] &&
      displayExoh[1] == displayExoh[7] &&
      displayExoh[1] != ''){
    _showAlertDialogue(displayExoh[1]);
  }
  if(displayExoh[2] == displayExoh[5] &&
      displayExoh[2] == displayExoh[8] &&
      displayExoh[2] != '') {
    _showAlertDialogue(displayExoh[2]);
  }

    if(displayExoh[2] == displayExoh[4] &&
        displayExoh[2] == displayExoh[6] &&
        displayExoh[2] != ''){
      _showAlertDialogue(displayExoh[2]);
    }
  if(displayExoh[0] == displayExoh[3] &&
      displayExoh[0] == displayExoh[6] &&
      displayExoh[0] != ''){
    _showAlertDialogue(displayExoh[0]);
  }
  }

  void _showAlertDialogue(String winner){
  showDialog(
      context: context,
      builder: (BuildContext context){
      return AlertDialog(
          title: Text('Winner is: ' + winner),
        );
      }
    );
  }
}
