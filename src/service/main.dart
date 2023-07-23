
import '../pages/game_page.dart';
import 'io_service.dart';
void main(List<String> args) {
 Game game=Game(IOService(),())..startGame();
}