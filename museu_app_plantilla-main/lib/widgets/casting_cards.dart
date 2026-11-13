import 'package:flutter/material.dart';
import 'package:movies_app/models/models.dart';

class CastingCards extends StatelessWidget {
  final List<String> artists;

  CastingCards({required this.artists});

  @override
  Widget build(BuildContext context) {
    if (artists.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text('No hi ha autor disponible'),
      );
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 200,
      // color: Colors.red,
      child: ListView.builder(
          itemCount: artists.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => _CastCard(autorName: artists[index])),
    );
  }
}

class _CastCard extends StatelessWidget {

  final String autorName;
  const _CastCard({Key? key, required this.autorName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      // color: Colors.green,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            /* child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://placehold.co/150x300/png'),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ), */
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            autorName.isEmpty ? 'Autor desconegut' : autorName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
