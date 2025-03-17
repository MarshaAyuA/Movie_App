import 'package:flutter/material.dart';
import 'package:movie_app/views/dashboard.dart';
import 'package:movie_app/views/login_view.dart';
import 'package:movie_app/views/movie_view.dart';
import 'package:movie_app/views/pesan_movie.dart';
import 'package:movie_app/views/register_user_view.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context)=>RegisterUserView(),
      '/login':(context)=>LoginView(),
      '/dashboard':(context)=>DashboardView(),
      '/movie': (context)=>MovieView(),
      '/pesan': (context)=> PesanView(),

    },
  ));
 
}


