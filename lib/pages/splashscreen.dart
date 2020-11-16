import 'package:flutter/material.dart';
import 'widgets/waving_hand.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1800), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffff4757),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Text(
                //  'Hello',
                //  style: Theme.of(context)
                //      .textTheme
                //      .headline2
                //      .copyWith(color: Colors.black87),
                //),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: WavingHand(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
