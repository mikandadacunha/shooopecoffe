import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xfffffffff),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xff007564),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(160, 30),
                        bottomRight: Radius.elliptical(160, 30))),
                child: const FittedBox(),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Color(0xffffffff)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Step into ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('Our Word of',
                            style: TextStyle(
                                color: const Color(0xff007564),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Coffee',
                            style: TextStyle(
                                color: Color(0xff007564),
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text('  Delight!',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Button of start
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 4,
                              vertical: 14),
                          shape: const RoundedRectangleBorder(
                              side: BorderSide.none),
                          backgroundColor: const Color(0xff007564),
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: const Text('Lets Get Started'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sign IN',
                          style: TextStyle(
                              color: Color(0xff007564),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
