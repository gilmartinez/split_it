import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFirebase() async {
    try {
      await Firebase.initializeApp();
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushReplacementNamed(context, "/login");
    } catch (e) {
      Navigator.pushNamed(context, "/error");
    }
  }

  @override
  void initState() {
    initializeFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppTheme.colors.background,
      body: Container(
          decoration: BoxDecoration(
            gradient: AppTheme.gradients.background,
          ),
          child: SafeArea(
            top: true,
            bottom: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-dir.png",
                            width: 198,
                            height: 98,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-dir.png",
                            width: 114,
                            height: 54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 128,
                  height: 112,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-esq.png",
                            width: 114,
                            height: 54,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            "assets/images/retangulo-esq.png",
                            width: 198,
                            height: 98,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
