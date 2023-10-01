import 'package:flutter/material.dart';
import 'package:game_app/widgets/scrollable_games.dart';

import '../data/data.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _devheight;
  var _devwidth;
  var _selectedPage;

  @override
  void initState() {
    super.initState();
    _selectedPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    _devheight = MediaQuery.of(context).size.height;
    _devwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _featuredgames(),
          _gradientBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _featuredgames() {
    return SizedBox(
        height: _devheight * 0.50,
        width: _devwidth,
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              _selectedPage = value;
            });
          },
          scrollDirection: Axis.horizontal,
          children: games.map((_game) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(_game.coverImage!.url),
              )),
            );
          }).toList(),
        ));
  }

  Widget _gradientBoxWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _devheight * 0.80,
        width: _devwidth,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromRGBO(35, 45, 59, 1.0), Colors.transparent],
                stops: [0.65, 1.0],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
      ),
    );
  }

  Widget _topLayerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: _devwidth * 0.05, vertical: _devheight * 0.005),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBarWidget(),
          SizedBox(
            height: _devheight * 0.13,
          ),
          _featuredgamesinfoWdget(),
          scrollableGameWidget(_devheight * 0.24, _devwidth, games,
              showtitle: true),
          SizedBox(
            height: _devheight * 0.006,
          ),
          _featuredBannerWidget(_devheight * 0.14, _devwidth),
          SizedBox(
            height: _devheight * 0.004,
          ),
          scrollableGameWidget(_devheight * 0.22, _devwidth, games,
              showtitle: false),
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return SizedBox(
      height: _devheight * 0.13,
      width: _devwidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: _devwidth * 0.03),
              const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _featuredgamesinfoWdget() {
    return SizedBox(
      height: _devheight * 0.12,
      width: _devwidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            games[_selectedPage].title ?? '',
            style: TextStyle(
                color: Colors.white,
                fontSize: _devheight * 0.040,
                fontWeight: FontWeight.bold),
            maxLines: 2,
          ),
          SizedBox(
            height: _devheight * 0.013,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: games.map((_games) {
                bool isActive = _games.title == games[_selectedPage].title;
                double circleRadius = _devheight * 0.004;
                return Container(
                  margin: EdgeInsets.only(right: _devheight * 0.015),
                  height: circleRadius * 2,
                  width: circleRadius * 2,
                  decoration: BoxDecoration(
                      color: isActive ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(100)),
                );
              }).toList())
        ],
      ),
    );
  }

  Widget _featuredBannerWidget(_height, _width) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: featuredgames.length,
        itemBuilder: (context, index) {
          return Container(
            height: _height,
            width: _width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(featuredgames[index].coverImage!.url))),
          );
        },
      ),
    );
  }
}
