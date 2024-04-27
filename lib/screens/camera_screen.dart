import 'dart:io';
import 'package:camera_camera/camera_camera.dart';
import 'package:clone_instagram/widgets/anexo.dart';
import 'package:clone_instagram/widgets/previewPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

late List<CameraDescription> _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();
  runApp(const CameraApp());
  Get.testMode = true;
}

/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: CameraPreview(controller),
    );
  }
}

class CameraBottom extends StatefulWidget {
  const CameraBottom({super.key});

  @override
  State<CameraBottom> createState() => _CameraBottomState();
}

class _CameraBottomState extends State<CameraBottom> {
  File? arquivo;
  final picker = ImagePicker();

  _CameraBottomState() : arquivo = null;

//objetos

  Future getFileFromGallery() async {
    final file = await picker.pickImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => arquivo = File(file.path));
    }
  }

  showPreview(File? file) async {
    if (file != null) {
      file = await Get.to(() => PreviewPage(file: file!));

      if (file != null) {
        setState(() => arquivo = file);
        Get.back();
      }
    }
  }

//metodos

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('Adicione seu post',
              style: TextStyle(
                  fontFamily: 'FontSpring', fontSize: 26, color: Colors.white)),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (arquivo != null) Anexo(arquivo: arquivo!),
                ElevatedButton.icon(
                  onPressed: () => Get.to(
                    () => CameraCamera(onFile: (file) => showPreview(file)),
                  ),
                  icon: const Icon(Icons.camera_alt, color: Colors.white),
                  label: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('Tire uma foto',
                        style: TextStyle(
                            fontFamily: 'Helvetica_Neue',
                            fontSize: 26,
                            color: Colors.white),),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                      elevation: 0.0,
                      textStyle: const TextStyle(
                        fontSize: 18,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('ou', style: TextStyle(
                    fontFamily: 'Helvetica_Neue',
                    fontSize: 16,
                    color: Colors.white60
                  ),),
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.attach_file, color: Colors.white,),
                  label: const Text(
                    'Selecione um arquivo',
                    style: TextStyle(
                        fontFamily: 'Helvetica_Neue',
                        fontSize: 26,
                        color: Colors.white),
                  ),
                  onPressed: (() => getFileFromGallery()),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
