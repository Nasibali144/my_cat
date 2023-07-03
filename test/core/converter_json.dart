import 'dart:io';

Future<String> jsonConverter(String path) {
  final file = File(path);
  return file.readAsString();
}