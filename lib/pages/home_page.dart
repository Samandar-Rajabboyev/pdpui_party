import 'package:flutter/material.dart';
import 'package:pdpui_party/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  FadeAnimation(
                    1,
                    const Text(
                      'Find the best parties near you.',
                      style: TextStyle(color: Colors.yellow, fontSize: 40),
                    ),
                  ),
                  const SizedBox(height: 30),
                  FadeAnimation(
                    1.2,
                    const Text(
                      'Let us find you a tutorial for your interest',
                      style: TextStyle(color: Colors.greenAccent, fontSize: 25),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  _isLogin
                      ? FadeAnimation(
                          1.5,
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.yellow[900],
                            ),
                            child: const Center(
                              child: Text(
                                'Start',
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ))
                      : FadeAnimation(
                          1.6,
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Google',
                                      style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Facebook',
                                      style: TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
