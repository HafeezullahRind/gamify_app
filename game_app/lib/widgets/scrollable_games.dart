import 'package:flutter/material.dart';
import 'package:game_app/data/data.dart';

// ignore: camel_case_types
class scrollableGameWidget extends StatelessWidget {
  scrollableGameWidget(this._height, this._width, this._gamedata,
      {super.key, required this.showtitle});

  final double _height;
  final double _width;
  final bool showtitle;

  final List<Game> _gamedata;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _gamedata.map((_game) {
          return Container(
            height: _height,
            width: _width * 0.30,
            padding: EdgeInsets.only(right: _width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _height * 0.80,
                  width: _width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(_game.coverImage!.url)),
                  ),
                ),
                if (showtitle) title(_game)
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Text title(Game _game) {
    return Text(
      _game.title!,
      style: TextStyle(color: Colors.white, fontSize: _height * 0.06),
      maxLines: 2,
    );
  }
}
