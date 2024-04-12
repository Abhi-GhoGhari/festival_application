import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fastival_application/haders.dart';
import 'package:fastival_application/utils/fastival_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://i.pinimg.com/564x/be/0f/8b/be0f8b175a60ae9d9ecf92237e4bb184.jpg",
            ),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Image(
                image: const AssetImage("lib/assets/logo/logo.gif"),
                height: size.height * 0.1,
              ),
            ),
            const Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Create cards of \nyour choice",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SearchBar(
              hintText: "Search",
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.8),
                child: ListView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  children: festivalData.festivals
                      .map(
                        (e) => GestureDetector(
                          onTap: () => Navigator.pushNamed(
                            context,
                            AppRoutes.detailspage,
                            arguments: e,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black26,
                                // color: const Color(0xff212121),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                e.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: size.height * 0.3,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.yellow,
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://i.pinimg.com/564x/82/1f/73/821f732dd56cf56a402a3c5f3360e22c.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Container(
                      height: size.height * 0.3,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: CarouselSlider(
                        items: festivalData.festivals
                            .map(
                              (e) => Container(
                                height: double.infinity,
                                width: size.width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red,
                                  image: DecorationImage(
                                    image: AssetImage(e.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Easing.standard,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                          scrollDirection: Axis.vertical,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 5,
              child: Container(
                height: size.height * 0.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  ),
                  color: Colors.black26,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.detailspage,
                        arguments: e,
                      );
                    },
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: size.height * 0.29,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.yellow,
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    "https://i.pinimg.com/736x/df/86/e3/df86e38d628abae4967f59d8e6856f52.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            // Align(
                            //   alignment: const Alignment(0, -0.7),
                            //   child: Image.network(""),
                            // ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: size.height * 0.29,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.yellow,
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/564x/0d/63/9c/0d639c1848376d71797e798648294714.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: size.height * 0.29,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.yellow,
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/564x/02/24/f1/0224f11c9eeb28e0fce7eba8220b01f1.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: size.height * 0.29,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.yellow,
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/736x/c1/aa/78/c1aa787ea1d15baf6f8941f0271860fd.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: size.height * 0.29,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.yellow,
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/564x/65/a6/29/65a629a11a15f958d06dd56f562a3d74.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: size.height * 0.29,
                          width: size.width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.yellow,
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/564x/fb/79/34/fb79342d9b131f145f11071201da0f3d.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
