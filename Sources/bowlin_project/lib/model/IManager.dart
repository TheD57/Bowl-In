import 'User.dart';
import 'Game.dart';
import 'IUserManager.dart';
import 'IGameManager.dart';

abstract class IManager {
  late User _userCurrent;
  late Game _gameCurrent;
  late IUserManager _userMgr;
  late IGameManager _gameMgr;

  // Getters and setters
  User get userCurrent => _userCurrent;

  set userCurrent(User user) {
    _userCurrent = user;
  }

  Game get gameCurrent => _gameCurrent;
  IUserManager get userMgr => _userMgr;
  IGameManager get gameMgr => _gameMgr;
}
