import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PageThreeWeb extends StatelessWidget {
  const PageThreeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/bg3.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: MyCarousel(),
      ),
    );
  }
}

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: [
        Container(
          child: Image.asset(
            "assets/page3/diet.png",
            height: 300, // Ajuste o tamanho da imagem conforme necessário
            width: 300,
            fit: BoxFit.cover, // Configura o BoxFit
          ),
        ),
        Container(
          height: 1200,
          width: 600,
          child: Image.asset(
            "assets/page3/marketplace.png",
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
