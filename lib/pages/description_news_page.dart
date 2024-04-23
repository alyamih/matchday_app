import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:matchday_app/model/news_item.dart';
import 'package:matchday_app/widgets/bottom_bar.dart';

class DescriptionNewsPage extends StatefulWidget {
  const DescriptionNewsPage({
    super.key,
    required this.news,
    required this.newsList,
  });
  final NewsItem news;
  final List<NewsItem> newsList;

  @override
  State<DescriptionNewsPage> createState() => _DescriptionNewsPageState();
}

class _DescriptionNewsPageState extends State<DescriptionNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      widget.news.image!,
                    ))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 100),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/arrow.png',
                      color: const Color(0xFF5EC286),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Column(children: [
                          Text(
                            widget.news.title!,
                            style: const TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Color(0xFF1E2321),
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                Text(
                                  widget.news.date!,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            widget.news.text!,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                      ],
                    ),
                  ),
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
