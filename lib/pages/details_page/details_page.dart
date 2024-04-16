import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:fastival_application/haders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import '../../modal/app_modal.dart';
import '../../utils/global_utils/global_utils.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Future<File> getFileFromWidget() async {
    RenderRepaintBoundary boundary =
        widgetKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(
      pixelRatio: 15,
    );
    ByteData? data = await image.toByteData();
    Uint8List list = data!.buffer.asUint8List();

    Directory directory = await getTemporaryDirectory();
    File file = await File(
            "${directory.path}/QA${DateTime.now().millisecondsSinceEpoch}.png")
        .create();
    file.writeAsBytesSync(list);

    return file;
  }

  Future<void> getImg({required ImageSource source}) async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(
      source: source,
    );
    if (file != null) {
      Global.global.image = File(file.path);
      setState(() {});
    }
  }

  // TextStyle fontFamily = quoteFontFamily[0];
  // final Offset _offset = const Offset(200, 250);
  double quoteFontSize = 20;
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
                // const SizedBox(height: 40),
                Expanded(
                  flex: 3,
                  child: RepaintBoundary(
                    key: widgetKey,
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // color: color.withOpacity(opacity),
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage(data.imageB),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          SelectableText(
                            "* ${data.quotes}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: color.withOpacity(opacity),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  backgroundColor: const Color(0xff87A922),
                                  title: const Text(
                                    "Select source",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  actions: [
                                    //Camara
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        getImg(source: ImageSource.camera).then(
                                          (value) {
                                            Navigator.pop(context);
                                          },
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                      label: const Text(
                                        "Camera",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          const Color(0xff9EB23B),
                                        ), // Set your desired button color
                                      ),
                                    ),

                                    //Gallary
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        getImg(source: ImageSource.gallery)
                                            .then(
                                          (value) {
                                            Navigator.pop(context);
                                          },
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.image_rounded,
                                        color: Colors.white,
                                      ),
                                      label: const Text(
                                        "gallery",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                          const Color(0xff9EB23B),
                                        ), // Set your desired button color
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },

                            //Image
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CircleAvatar(
                                foregroundImage: Global.global.image != null
                                    ? FileImage(Global.global.image!)
                                    : null,
                                radius: 40,
                                backgroundColor: const Color(0xff789461),
                              ),
                            ),
                          ),
                          // LayoutBuilder(
                          //   builder: (context, constraints) {
                          //     return Stack(
                          //       children: [
                          //         Positioned(
                          //           left: _offset.dx,
                          //           top: _offset.dy,
                          //           child: LongPressDraggable(
                          //             feedback: Image.network(
                          //                 "https://i.pinimg.com/564x/cc/25/67/cc256755d5c86558d323039cd0c3f7f3.jpg"),
                          //             child: Image.network(
                          //                 "https://i.pinimg.com/564x/cc/25/67/cc256755d5c86558d323039cd0c3f7f3.jpg"),
                          //             onDragEnd: (details) {
                          //               setState(() {
                          //                 double adjustment =
                          //                     MediaQuery.of(context)
                          //                             .size
                          //                             .height -
                          //                         constraints.maxHeight;
                          //                 _offset = Offset(
                          //                   details.offset.dx,
                          //                   details.offset.dy - adjustment,
                          //                 );
                          //               });
                          //             },
                          //           ),
                          //         ),
                          //       ],
                          //     );
                          //   },
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "- Edit Font's Color ⤵️",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                opacity = 1;
                                color = Colors.white;
                                Global.global.image;
                                setState(() {});
                              },
                              icon: const Icon(Icons.refresh_sharp),
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                          child: ListView(
                            physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics(),
                            ),
                            scrollDirection: Axis.horizontal,
                            children: [
                              TextButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const Text(
                                          "Change Your Favorite Color😊"),
                                      content: SingleChildScrollView(
                                        child: ColorPicker(
                                          pickerColor: color,
                                          paletteType: PaletteType.hueWheel,
                                          onColorChanged: (Color value) {
                                            color = value;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Slider(
                          activeColor: Colors.white60,
                          // secondaryActiveColor: Colors.black54,
                          value: opacity,
                          min: 0,
                          max: 1,
                          onChanged: (val) {
                            opacity = val;
                            setState(() {});
                          },
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "-  Font's Style ⤵️",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () async {
                                      ImageGallerySaver.saveFile(
                                        (await getFileFromWidget()).path,
                                        isReturnPathOfIOS: true,
                                      ).then(
                                        (value) => ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content:
                                                Text("Saved to gallery !!"),
                                          ),
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.save_alt,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      "Save",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        const Color(0xff9EB23B),
                                      ), // Set your desired button color
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(15),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.share_outlined,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      "Share",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        const Color(0xff9EB23B),
                                      ), // Set your desired button color
                                    ),
                                  ),
                                ],
                                // children: quoteFontFamily
                                //     .map(
                                //       (e) => TextButton(
                                //         onPressed: () {
                                //           fontFamily = e;
                                //           setState(() {});
                                //         },
                                //         style: const ButtonStyle(),
                                //         child: Text(
                                //           "Abc",
                                //           style: e,
                                //         ),
                                //       ),
                                //     )
                                //     .toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
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
