import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:matchday_app/widgets/bottom_bar.dart';

class DescriptionMatchPage extends StatefulWidget {
  const DescriptionMatchPage({super.key, this.match});
  final dynamic match;

  @override
  State<DescriptionMatchPage> createState() => _DescriptionMatchPageState();
}

class _DescriptionMatchPageState extends State<DescriptionMatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/description.png'))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/arrow.png'),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'Match',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      '${widget.match['homeTeam']['name']} vs ${widget.match['awayTeam']['name']}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          fontSize: 14,
                                          color: const Color(0xFFFAFAFA)
                                              .withOpacity(0.7),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/arrow.png',
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 20),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      if (!(widget.match['homeTeam']['crest'])
                                          .toString()
                                          .contains('.svg'))
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 8),
                                          child: Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image:
                                                        CachedNetworkImageProvider(
                                                      widget.match['homeTeam']
                                                          ['crest'],
                                                    ))),
                                          ),
                                        ),
                                      if ((widget.match['homeTeam']['crest'])
                                          .toString()
                                          .contains('.svg'))
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 12),
                                          child: Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                image: const DecorationImage(
                                                    image: AssetImage(
                                                        'assets/team_image.png'))),
                                          ),
                                        ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              '${widget.match['homeTeam']['name']}',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                  fontFamily: 'SF Pro Text',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          if (widget.match['score']['fullTime']['home'] != null)
                            Text(
                              '${widget.match['score']['fullTime']['home']} : ${widget.match['score']['fullTime']['away']}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700),
                            ),
                          if (widget.match['score']['fullTime']['home'] == null)
                            const Text(
                              'Not\nstarted',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                if (!(widget.match['awayTeam']['crest'])
                                    .toString()
                                    .contains('.svg'))
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: CachedNetworkImageProvider(
                                                widget.match['awayTeam']
                                                    ['crest'],
                                              ))),
                                    ),
                                  ),
                                if ((widget.match['awayTeam']['crest'])
                                    .toString()
                                    .contains('.svg'))
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/team_image.png'))),
                                    ),
                                  ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        '${widget.match['awayTeam']['name']}',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: const TextStyle(
                                            fontFamily: 'SF Pro Text',
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset('assets/soccer.png'),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  Random().nextInt(150).toString(),
                                  style: const TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Goals',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                Random().nextInt(150).toString(),
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Image.asset('assets/soccer.png'),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                Text(
                                  'Statistics',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: Colors.black.withOpacity(0.4),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${Random().nextInt(100)}%',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Statistics',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    color: Colors.black.withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '${Random().nextInt(100)}%',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Divider(
                              color: Colors.black.withOpacity(0.08),
                              height: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${Random().nextInt(100)}%',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Passing',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    color: Colors.black.withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '${Random().nextInt(100)}%',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Divider(
                              color: Colors.black.withOpacity(0.08),
                              height: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${Random().nextInt(100)}%',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Shooting',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    color: Colors.black.withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '${Random().nextInt(100)}%',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            child: Divider(
                              color: Colors.black.withOpacity(0.08),
                              height: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${Random().nextInt(20)}',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Yellow cards',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    color: Colors.black.withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '${Random().nextInt(20)}',
                                style: const TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const BottomBar()
        ],
      ),
    );
  }
}
