import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dars_69_lesson/services/permission_services.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';

import 'book-state.dart';
import 'book_event.dart';

String _fullPath = '';

class BookBloc extends Bloc<BookEvent,BookState> {

  BookBloc()
      :
        super(InitialBookState()) {
    on<DownloadBookEvenet>(_getDownloadBook);
    on<OpenFile>(_onOpenFile);
  }

  Future<void> _onOpenFile(OpenFile event, emit) async {
    await OpenFilex.open(event.path);
  }

  void _getDownloadBook(DownloadBookEvenet event, emit) async {
    final dio = Dio();

    if (await PermissionService.requestStoragePermission()) {
      print("kirdi");
      try {
        final fullPath = await _getSavePath();

        if (_checkFileExists(fullPath)) {
          print("uaafds");
          add(OpenFile(path: fullPath));
          emit(LoadedBookState());
        } else {
          print("yuklandi");
          final response = await dio.download(
            "https://library.navoiy-uni.uz/files/amir%20temur%20%20va%20muhammad%20tarag%E2%80%98ay%20%20.pdf",
            fullPath,
            onReceiveProgress: (count, total) {
              emit(DownloadBookState(count / total));
            },
          );
          _fullPath = fullPath;
          print("bu fayl yoli ${fullPath}");
          emit(LoadedBookState());
        }
        print("faylga yuklandi");
      } on DioException catch (e) {
        print("dioda xato");
        emit(LoadedBookState());
      } catch (e) {
        print("bu xatolik $e");
        emit(LoadedBookState());
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
    Directory? savePath = await getApplicationDocumentsDirectory();
    if (Platform.isAndroid) {
      savePath = Directory("/storage/emulated/0/download");
    }

    final fullPath = "document.pdf";

    return fullPath;
  }
}