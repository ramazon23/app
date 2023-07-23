import '../service/io_service.dart';

class Zero {
  final IOService io;
  final List<String> area;
  const Zero(this.io, this.area);

  void start() {
    io.write('O: ');
    int result = io.readInt();
    while (!RegExp(r'[1-9]{1}').hasMatch(result.toString())) {
      io.write('Notogri son kiritildi! Iltimos kaytadan kiriting: ');
      result = io.readInt();
    }
    if (!RegExp(r'[1-9]').hasMatch(area[result - 1])) {
      io.write('Kiritilgan joy band!\n');
      start();
    }
    area[result - 1] = '⭕️';
  }
}
