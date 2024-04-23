import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchday_app/pages/home_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/background.png'))),
        child: Column(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 65, 16, 0),
                        child: Column(children: [
                          Text(
                            'Join the football world with our app!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Track matches, read football news in one app!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 84, 20, 24),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                },
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: const Color(0xFF159912),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      'Get started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Terms of Use / Privacy Policy',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getStars() {
    List<Widget> list = [];
    for (var i = 0; i < 5; i++) {
      list.add(const Icon(
        Icons.star,
        color: Colors.yellow,
        size: 16,
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: list,
    );
  }
}
