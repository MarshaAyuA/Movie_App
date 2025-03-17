import 'package:flutter/material.dart';
import 'package:movie_app/models/response_data_list.dart';
import 'package:movie_app/services/movie.dart';
import 'package:movie_app/widgets/bottomnav.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  MovieService movie = MovieService();
List? film;
void initState() {
    super.initState();
    getFilm(); // Panggil fungsi getFilm() saat widget pertama kali dibangun
  }

  getFilm() async {
    ResponseDataList getMovie = await movie.getMovie();
    setState(() {
      film = getMovie.data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: film != null
          ? ListView.builder(
              itemCount: film!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading:
                        Image(image: NetworkImage(film![index].posterPath)),
                    title: Text(film![index].title),
                  ),
                );
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
      bottomNavigationBar: BottomNav(1),
    );
  }
  }