import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchday_app/widgets/bottom_bar.dart';
import 'package:matchday_app/pages/show_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 65, bottom: 16, left: 16, right: 16),
          child: Row(
            children: [
              Text(
                'Settings',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 13, 8, 13),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/share.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Share wth friends',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black.withOpacity(0.4),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                        child: Divider(
                          color: Colors.black.withOpacity(0.08),
                          height: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/sub.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                'Subscription info',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black.withOpacity(0.4),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                        child: Divider(
                          color: Colors.black.withOpacity(0.08),
                          height: 1,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ReadTermsOrPrivacyScreenView(
                                      link: 'google.com',
                                    )),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/terms.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Terms of use',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                        child: Divider(
                          color: Colors.black.withOpacity(0.08),
                          height: 1,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const ReadTermsOrPrivacyScreenView(
                                      link: 'google.com',
                                    )),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/Privacy.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  'Privacy policy',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
        const BottomBar()
      ]),
    );
  }
}
