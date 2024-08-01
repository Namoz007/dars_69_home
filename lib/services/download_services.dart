import 'dart:io';
import 'package:dars_69_lesson/services/permission_services.dart';
import 'package:dio/dio.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

String path = '';

Future<void> _onOpenFile(String path) async {
  await OpenFilex.open(path);
}

void getDownloadBook() async {
  final dio = Dio();

  if (await PermissionService.requestStoragePermission()) {
    print("kirdi");
    try {
      print("flasldfas");
      final fullPath = await _getSavePath();
      print("fasdf");
      if (_checkFileExists(fullPath)) {
        print("uaafds");
        _onOpenFile(fullPath);
      } else {
        print("yuklandi");
        final response = await dio.download(
          "https://github.com/Namoz007/dars_69_home.git",
          fullPath,
        );
        path = fullPath;
        print("bu fayl yoli ${fullPath}");
      }
      print("faylga yuklandi");
    } on DioException catch (e) {
      print("dioda xato");
    } catch (e) {
      print("bu xatolik $e");
      print("xatolik kep qopti");
    }
  }
  print("vanihoyat tugadi");
}

bool _checkFileExists(String filePath) {
  final file = File(filePath);

  return file.existsSync();
}


Future<String> _getSavePath() async {
  print("Flajslkdflasfd");
  Directory? savePath = await getApplicationDocumentsDirectory();
  print('alfdklkasfdas');
  if (Platform.isAndroid) {
    savePath = Directory("/storage/emulated/0/download");
  }

  final fullPath = "document.pdf";
  path = fullPath;

  return fullPath;
}
