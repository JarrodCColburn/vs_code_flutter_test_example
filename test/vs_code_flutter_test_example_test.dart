import 'package:flutter_test/flutter_test.dart';

import 'dart:io' show File;

const String path = './hello.txt';

const String expectedString = 'Hello World';
void main() {
  test(
      'This will succeed if run from terminal, but fail if run with VS Code extension',
      () {
    expect(File(path).readAsStringSync(), expectedString);
  });
}
// In order to make succeed in VS Code, set `path = ./test/hello.txt`, but the
// terminal will then fail with new path.
