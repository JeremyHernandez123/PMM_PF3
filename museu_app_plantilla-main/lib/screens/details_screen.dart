import 'package:flutter/material.dart';
import 'package:movies_app/widgets/widgets.dart';
import 'package:movies_app/models/models.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Canviar després per una instància de Peli
    final artWork = ModalRoute.of(context)?.settings.arguments as ArtWork;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(artWork: artWork),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _PosterAndTitile(artWork: artWork),
                _Overview(artWork: artWork),
                CastingCards(artists: artWork.artists ?? []),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  final ArtWork artWork; 
  const _CustomAppBar({Key? key, required this.artWork}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Exactament igual que la AppBaer però amb bon comportament davant scroll

    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          padding: const EdgeInsets.only(bottom: 10),
          /* child: Text(
            artWork.title ?? 'No hi ha títol disponible',
            style: TextStyle(fontSize: 16),
          ), */
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(artWork.primaryimageurl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitile extends StatelessWidget {
    final ArtWork artWork; 
    const _PosterAndTitile({Key? key, required this.artWork}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;    
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage(artWork.primaryimageurl),
              height: 150,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                artWork.title ?? 'No hi ha títol disponible',
                style: textTheme.headlineSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
             /* Text(
                artWork.tit ?? 'No hi ha títol original disponible',
                style: textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Row(
                children: [
                  const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text('Nota mitjana', style: textTheme.bodySmall),

                ], 
              ) */
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  final ArtWork artWork;
  _Overview({required this.artWork});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        artWork.description ?? 'No hi ha descripció disponible',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
