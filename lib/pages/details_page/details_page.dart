import 'package:fastival_application/haders.dart';
import 'package:fastival_application/utils/fastival_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../modal/app_modal.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // TextStyle fontFamily = quoteFontFamily[0];
  double quoteFontSize = 14;
  double opacity = 1;
  GlobalKey widgetKey = GlobalKey();
  Color color = Colors.white60;
  @override
  Widget build(BuildContext context) {
    Festival data = ModalRoute.of(context)!.settings.arguments as Festival;
    Size size = MediaQuery.sizeOf(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (val) {
        if (val) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            // backgroundColor: Colors.white60,
            backgroundColor: const Color(0xff87A922),
            content: const Text(
              "!! Are You Sure To Exit !!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const Image(
            image: NetworkImage(
              "https://i.pinimg.com/564x/be/0f/8b/be0f8b175a60ae9d9ecf92237e4bb184.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
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
            alignment: const Alignment(0, -0.8),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  height: size.height * 0.45,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // image: DecorationImage(
                    //   image: AssetImage(data.image),
                    // ),
                    color: Colors.black38,
                  ),
                  child: Text(
                    data.name,
                    style: const TextStyle(color: Colors.white),
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
