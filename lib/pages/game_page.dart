import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:matchday_app/pages/puzzle_page.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool started = false;
  bool finished = false;
  List<String> shuffledPuzzle = [];
  String selectedPart1 = '';
  String selectedPart2 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 16),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/arrow.png',
                      color: const Color(0xFF5EC286),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Puzzles',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          selected.name!,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/arrow.png',
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
            if (!started)
              Column(
                children: [
                  getPuzzleParts(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.06),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                              child: Column(
                                children: [
                                  Text(
                                    'Puzzle',
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.black.withOpacity(0.4),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: Text(
                                      selected.name!,
                                      style: const TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      started = true;
                                      shuffledPuzzle
                                          .addAll(selected.smallImages!);
                                      shuffledPuzzle.shuffle();
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 40,
                                      padding: const EdgeInsets.only(top: 9),
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF159912),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: const Text(
                                        'Shuffle',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            if (started && !finished) getShuffledParts(),
            if (finished)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Image.asset(selected.secondImage!),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        padding: const EdgeInsets.only(top: 9),
                        decoration: BoxDecoration(
                            color: const Color(0xFF159912),
                            borderRadius: BorderRadius.circular(12)),
                        child: const Text(
                          'Menu',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget getPuzzleParts() {
    List<Widget> list = [];
    for (var part in selected.smallImages!) {
      list.add(Image.asset(part));
    }
    return Wrap(
      runSpacing: 4,
      spacing: 4,
      children: list,
    );
  }

  Widget getShuffledParts() {
    List<Widget> list = [];
    for (var part in shuffledPuzzle) {
      list.add(InkWell(
          onTap: () {
            if (selectedPart1.isEmpty) {
              selectedPart1 = part;
              setState(() {});
            } else {
              selectedPart2 = part;
              shuffledPuzzle.swap(shuffledPuzzle.indexOf(selectedPart2),
                  shuffledPuzzle.indexOf(selectedPart1));
              selectedPart1 = '';
              selectedPart2 = '';
              if (const ListEquality()
                  .equals(shuffledPuzzle, selected.smallImages)) {
                finished = true;
                setState(() {});
              }
              setState(() {});
            }
          },
          child: Image.asset(part)));
    }
    return Wrap(
      runSpacing: 4,
      spacing: 4,
      children: list,
    );
  }
}
