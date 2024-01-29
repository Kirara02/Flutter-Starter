import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';

Future<File> compressAndGetFile(String file, {int? rotate}) async {
  final filePath = file;
  final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  final splitted = filePath.substring(0, (lastIndex));
  final outPath = '${splitted}_out${filePath.substring(lastIndex)}';
  var result = await FlutterImageCompress.compressAndGetFile(file, outPath,
      quality: 75, rotate: rotate ?? 0);

  return File(result!.path);
}
