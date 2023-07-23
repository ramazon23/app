import '../positions/cross.dart';
import '../positions/zero.dart';
import '../service/io_service.dart';

class Game {
  IOService io;
  List<String> area = [for (int i = 1; i < 10; i++) '$i '];

  Game(this.io, startGame);

  void startGame() {
    Cross cross = Cross(IOService(), area);
    Zero zero = Zero(IOService(), area);

    io.drowArea(area);
    cross.start();
    io.clear();
    if (isWinner()) {
      print('Cross win');
      return;
    }
    if (isTie()) {
      print('TIE');
      return;
    }
    io.drowArea(area);
    zero.start();
    if (isWinner()) {
      print('Zero win');
      return;
    }
    if (isTie()) {
      print('TIE');
      return;
    }
    io.clear();
    startGame();
  }

  bool isTie() {
    for (String i in area) {
      if (RegExp(r'[1-9]').hasMatch(i)) return false;
    }
    return true;
  }

  bool isWinner() {
    for (int i = 0; i < 9; i += 3) {
      if (area[i] == area[i + 1] && area[i + 1] == area[i + 2]) return true;
    }
    if (area[0] == area[3] && area[3] == area[6]) return true;
    if (area[1] == area[4] && area[4] == area[7]) return true;
    if (area[2] == area[5] && area[5] == area[8]) return true;

    if (area[0] == area[4] && area[4] == area[8]) return true;
    if (area[2] == area[4] && area[4] == area[6]) return true;
    return false;
  }
}
