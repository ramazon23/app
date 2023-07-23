import 'dart:io';

class IOService {
  const IOService();

  void write(String text) => stdout.write(text);

  int readInt() => int.parse(stdin.readLineSync() ?? '-1');

  void drowArea(List<String> area) {
    for (int i = 0; i < 9; i += 3) {
      write('''
 ---------- ---------- ----------
|          |          |          |
|    ${area[i]}    |    ${area[i + 1]}    |    ${area[i + 2]}    |
|          |          |          |
 ---------- ---------- ----------
''');
    }
  }

  void clear() => print("\x1B[2J\x1B[0;0H");
}
