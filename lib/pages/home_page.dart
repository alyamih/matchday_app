import 'package:flutter/material.dart';
import 'package:matchday_app/model/api.dart';
import 'package:matchday_app/pages/description_match_page.dart';
import 'package:matchday_app/widgets/bottom_bar.dart';
import 'package:matchday_app/widgets/match_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> matches = [];
  final ApiRepository apiRepository = ApiRepository();
  bool _isLoading = true;
  dynamic liveMatch;
  DateTime filterDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    fetchMatches();
  }

  void fetchMatches() async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
    });

    try {
      var fetchedMatches = await apiRepository.fetchMatches();

      if (!mounted) return;

      setState(() {
        matches = fetchedMatches;
        liveMatch = matches.firstWhere((element) => element['status'] == 'LIVE',
            orElse: () => null);
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFAFAFA), body: getContent());
  }

  Widget getContent() {
    return _isLoading ? _buildLoadingIndicator() : _buildMatchList();
  }

  Widget _buildLoadingIndicator() {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: const Center(
                    child: CircularProgressIndicator(
                  color: Color(0xFF159912),
                )),
              ),
            ],
          ),
        ),
        const BottomBar()
      ],
    );
  }

  Widget _buildMatchList() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 65, bottom: 16, left: 16, right: 16),
          child: Row(
            children: [
              Text(
                'Matches',
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
          child: getMatches(),
        ))),
        const BottomBar()
      ],
    );
  }

  Widget getMatches() {
    List<Widget> list = [];

    for (var match in matches) {
      list.add(InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => DescriptionMatchPage(
                      match: match,
                    )),
          );
        },
        child: MatchItemWidget(
          match: match,
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
