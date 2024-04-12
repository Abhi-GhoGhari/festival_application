import 'package:fastival_application/haders.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: size.height * 0.8,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.4,
                  width: size.width * 0.9,
                  child: const Image(
                    image: AssetImage("lib/assets/logo/logo.gif"),
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  " ALL your \n festival post \n in one app!",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.homepage,
                      );
                    },
                    child: const Text(
                      "Run >",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
