import 'package:flutter/material.dart';
import 'package:matchday_app/pages/home_page.dart';
import 'package:matchday_app/pages/news_page.dart';
import 'package:matchday_app/pages/settings_page.dart';
import 'package:matchday_app/pages/puzzle_page.dart';

enum EPageOnSelect {
  mathcesPage,
  puzzlePage,
  newsPage,
  settingsPage,
}

EPageOnSelect page = EPageOnSelect.mathcesPage;

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFEEEEEE),
          border:
              Border(top: BorderSide(color: Colors.black.withOpacity(0.06)))),
      padding: const EdgeInsets.fromLTRB(16, 7, 16, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              page = EPageOnSelect.mathcesPage;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                  (route) => false);
              setState(() {});
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.mathcesPage
                        ? Image.asset(
                            'assets/home.png',
                            color: const Color(0xFF159912),
                          )
                        : Image.asset(
                            'assets/home.png',
                            color: const Color(0xFF969696),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Matches',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              color: page == EPageOnSelect.mathcesPage
                                  ? const Color(0xFF159912)
                                  : const Color(0xFF969696),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              page = EPageOnSelect.puzzlePage;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const PuzzlePage()),
                  (route) => false);
              setState(() {});
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.puzzlePage
                        ? Image.asset('assets/puzzle.png',
                            color: const Color(0xFF159912))
                        : Image.asset(
                            'assets/puzzle.png',
                            color: const Color(0xFF969696),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Puzzles',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              color: page == EPageOnSelect.puzzlePage
                                  ? const Color(0xFF159912)
                                  : const Color(0xFF969696),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              page = EPageOnSelect.newsPage;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const NewsPage()),
                  (route) => false);
              setState(() {});
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.newsPage
                        ? Image.asset('assets/news.png',
                            color: const Color(0xFF159912))
                        : Image.asset(
                            'assets/news.png',
                            color: const Color(0xFF969696),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('News',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              color: page == EPageOnSelect.newsPage
                                  ? const Color(0xFF159912)
                                  : const Color(0xFF969696),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              page = EPageOnSelect.settingsPage;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
                  (route) => false);
              setState(() {});
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.settingsPage
                        ? Image.asset('assets/settings.png',
                            color: const Color(0xFF159912))
                        : Image.asset(
                            'assets/settings.png',
                            color: const Color(0xFF969696),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Settings',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              color: page == EPageOnSelect.settingsPage
                                  ? const Color(0xFF159912)
                                  : const Color(0xFF969696),
                              fontSize: 10)),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
