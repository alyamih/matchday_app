import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MatchItemWidget extends StatelessWidget {
  final dynamic match;

  const MatchItemWidget({
    super.key,
    required this.match,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      decoration: BoxDecoration(
          color: const Color(0xFFE8E8E8),
          borderRadius: BorderRadius.circular(8)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      if (!(match['homeTeam']['crest'])
                          .toString()
                          .contains('.svg'))
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                      match['homeTeam']['crest'],
                                    ))),
                          ),
                        ),
                      if ((match['homeTeam']['crest'])
                          .toString()
                          .contains('.svg'))
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/team_image.png'))),
                          ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              '${match['homeTeam']['name']}',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: const TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        if (match['score']['fullTime']['home'] != null)
          Text(
            '${match['score']['fullTime']['home']} : ${match['score']['fullTime']['away']}',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 32,
                fontWeight: FontWeight.w700),
          ),
        if (match['score']['fullTime']['home'] == null)
          const Text(
            'Not\nstarted',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: const Color(0xFFFAFAFA),
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                if (!(match['awayTeam']['crest']).toString().contains('.svg'))
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                match['awayTeam']['crest'],
                              ))),
                    ),
                  ),
                if ((match['awayTeam']['crest']).toString().contains('.svg'))
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: AssetImage('assets/team_image.png'))),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        '${match['awayTeam']['name']}',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
