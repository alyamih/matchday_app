import 'package:flutter/material.dart';
import 'package:matchday_app/model/puzzle_item.dart';
import 'package:matchday_app/pages/game_page.dart';
import 'package:matchday_app/widgets/bottom_bar.dart';

List<PuzzleItem> puzzles = [
  PuzzleItem(
      name: 'Goalkeeper',
      firstImage: 'assets/puzzle1.png',
      secondImage: 'assets/puzzlebig1.jpg',
      smallImages: [
        'assets/puzzle_1_1.png',
        'assets/puzzle_1_2.png',
        'assets/puzzle_1_3.png',
        'assets/puzzle_1_4.png',
        'assets/puzzle_1_5.png',
        'assets/puzzle_1_6.png',
        'assets/puzzle_1_7.png',
        'assets/puzzle_1_8.png',
        'assets/puzzle_1_9.png',
        'assets/puzzle_1_10.png',
        'assets/puzzle_1_11.png',
        'assets/puzzle_1_12.png',
        'assets/puzzle_1_13.png',
        'assets/puzzle_1_14.png',
        'assets/puzzle_1_15.png',
        'assets/puzzle_1_16.png',
      ]),
  PuzzleItem(
      name: 'Winners',
      firstImage: 'assets/puzzle2.png',
      secondImage: 'assets/puzzlebig2.jpg',
      smallImages: [
        'assets/puzzle_2_1.png',
        'assets/puzzle_2_2.png',
        'assets/puzzle_2_3.png',
        'assets/puzzle_2_4.png',
        'assets/puzzle_2_5.png',
        'assets/puzzle_2_6.png',
        'assets/puzzle_2_7.png',
        'assets/puzzle_2_8.png',
        'assets/puzzle_2_9.png',
        'assets/puzzle_2_10.png',
        'assets/puzzle_2_11.png',
        'assets/puzzle_2_12.png',
        'assets/puzzle_2_13.png',
        'assets/puzzle_2_14.png',
        'assets/puzzle_2_15.png',
        'assets/puzzle_2_16.png',
      ]),
  PuzzleItem(
      name: 'Soccer player',
      firstImage: 'assets/puzzle3.png',
      secondImage: 'assets/puzzlebig3.jpg',
      smallImages: [
        'assets/puzzle_3_1.png',
        'assets/puzzle_3_2.png',
        'assets/puzzle_3_3.png',
        'assets/puzzle_3_4.png',
        'assets/puzzle_3_5.png',
        'assets/puzzle_3_6.png',
        'assets/puzzle_3_7.png',
        'assets/puzzle_3_8.png',
        'assets/puzzle_3_9.png',
        'assets/puzzle_3_10.png',
        'assets/puzzle_3_11.png',
        'assets/puzzle_3_12.png',
        'assets/puzzle_3_13.png',
        'assets/puzzle_3_14.png',
        'assets/puzzle_3_15.png',
        'assets/puzzle_3_16.png',
      ]),
  PuzzleItem(
      name: 'Training',
      firstImage: 'assets/puzzle4.png',
      secondImage: 'assets/puzzlebig4.jpg',
      smallImages: [
        'assets/puzzle_4_1.png',
        'assets/puzzle_4_2.png',
        'assets/puzzle_4_3.png',
        'assets/puzzle_4_4.png',
        'assets/puzzle_4_5.png',
        'assets/puzzle_4_6.png',
        'assets/puzzle_4_7.png',
        'assets/puzzle_4_8.png',
        'assets/puzzle_4_9.png',
        'assets/puzzle_4_10.png',
        'assets/puzzle_4_11.png',
        'assets/puzzle_4_12.png',
        'assets/puzzle_4_13.png',
        'assets/puzzle_4_14.png',
        'assets/puzzle_4_15.png',
        'assets/puzzle_4_16.png',
      ]),
];
PuzzleItem selected = PuzzleItem();

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({super.key});

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 16),
            child: Row(
              children: [
                Text(
                  'Puzzles',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [getPuzzles()],
                ),
              ),
            ),
          ),
          const BottomBar()
        ],
      ),
    );
  }

  Widget getPuzzles() {
    List<Widget> list = [];
    for (var puzzle in puzzles) {
      list.add(InkWell(
        onTap: () {
          selected = puzzle;
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => const GamePage()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.06),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Container(
                height: 232,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(puzzle.firstImage!))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Puzzle',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          puzzle.name!,
                          style: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Container(
                      width: 140,
                      height: 40,
                      padding: const EdgeInsets.only(top: 9),
                      decoration: BoxDecoration(
                          color: const Color(0xFF159912),
                          borderRadius: BorderRadius.circular(12)),
                      child: const Text(
                        'Start',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 16,
      ));
    }
    return Column(
      children: list,
    );
  }
}
