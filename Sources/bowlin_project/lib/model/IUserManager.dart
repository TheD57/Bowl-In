import 'package:uuid/uuid.dart';
import 'Player.dart';
import 'User.dart';
import 'IAuthManager.dart';

abstract class IUserManager {
  IAuthManager _authMgr;

  // Constructor
  IUserManager(this._authMgr);

  // Methods
  IAuthManager get authMgr => _authMgr;
  List<User> getUsersByName(String name);
  Player getUserById(Uuid id);
}
