// ignore_for_file: avoid_print, import_of_legacy_library_into_null_safe

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/devinfo.dart';
import 'package:sampleproject/productview.dart';
import 'package:sampleproject/sidemenu.dart';
import 'package:sampleproject/account.dart';
import 'package:sampleproject/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //application routes
      routes: {
        //  '/': (context) => const MyHomePage(),
        '/home': (context) => const MyHomePage(),
        '/cart': (context) => MyCart(),
        '/account': (context) => const MyAccount(),
        '/sidemenu': (context) => const MySideMenu(),
        '/devinfo': (context) => const Myinfo(),
      },
      debugShowCheckedModeBanner: false,
      title: 'MiniCart',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(color: Colors.amber)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          )
        ],
      ),
      drawer: const Drawer(
        child: MySideMenu(),
      ),
      backgroundColor: Colors.grey[150],
      body: ProductScreen(),
      bottomNavigationBar: const BottomNavBarFb1(),
    );
  }
}

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({Key? key, this.value = 0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}

class BottomNavBarFb1 extends StatelessWidget {
  const BottomNavBarFb1({Key? key}) : super(key: key);

  final primaryColor = Colors.amber;
  final secondaryColor = Colors.amber;
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar2(
                  text: "Home",
                  icon: Icons.home,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  }),
              IconBottomBar(
                  text: "Account",
                  icon: Icons.person,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamed(context, '/account');
                  }),
              IconBottomBar(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamed(context, '/cart');
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final primaryColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.amber,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final Function() onPressed;
  final primaryColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.amber,
        ),
      ),
    );
  }
}

class MyCarousel extends StatelessWidget {
  const MyCarousel(
      {Key? key,
      required List<Image> images,
      required double dotSize,
      required MaterialColor dotColor,
      required double indicatorBgPadding})
      : super(key: key);

//   @override
//   _CarouselState createState() => _CarouselState();
// }

// class _CarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      width: double.infinity,
      child: Carousel(
        images: [
          Image.asset(
            "assets/carol1.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/carol2.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/carol3.jpg",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
