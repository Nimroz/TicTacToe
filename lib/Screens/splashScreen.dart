import 'package:flutter/material.dart';
import 'package:tictactoe_game/Screens/gridViewScreen.dart';
import 'package:tictactoe_game/Screens/homeScreen.dart';
import 'package:tictactoe_game/widgets/splashText.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(seconds: 4)).then((value)
    => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const forGridView())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF0D47A1),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topCenter,
                      color: const Color(0xFF0D47A1),
                      width: MediaQuery.of(context).size.width,
                      child: const Padding(
                          padding: EdgeInsets.only(top: 66),
                          child: splashText(
                              text: "KATI ZERO",
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 20)),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color(0xFF42A5F5),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 55),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            splashText(
                                text: "POWERED BY",
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 12),
                            SizedBox(height: 10),
                            splashText(
                                text: "TECH IDARA",
                                color: Color(0xFF0D47A1),
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 12)
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 65),
                child: Image.asset("assets/logo.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
