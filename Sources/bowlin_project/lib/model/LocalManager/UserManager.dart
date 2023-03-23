import 'package:bowl_in/model/IUserManager.dart';
import 'package:bowl_in/model/LocalManager/LocalData.dart';
import 'package:bowl_in/model/Player.dart';
import 'package:bowl_in/model/User.dart';
import '../Game.dart';
import 'AuthManager.dart';

class UserManager extends IUserManager {
  final LocalData parent;

  // Constructor
  UserManager(this.parent) : super(AuthManager(parent)) {
    User user = User(0, "Dave", "./assets/images/image_user_red.png", "", [], []);
    user.games.add(Game(0,DateTime.now(), 30, []));
    saveUser(user);
    _initUser();
  }

  _initUser() async {
    var user = await parent.userDatabase.readUser(0);
    if (user == null) {
      User user2 =
          User(1, "Unknown", "./assets/images/image_user_cyan.png", "", [], []);
      parent.userCurrent = user2;
    } else {
      parent.userCurrent = user;
    }
  }

  saveUser(User user) {
    parent.userDatabase.updateUser(user);
  }

  Map<String, dynamic> userToMap(User user) {
    return {
      '_id': user.id,
      'name': user.name,
      'image': user.image,
      '_mail': user.mail,
    };
  }

  @override
  List<User> getRankingWithFriends() {
    // TODO: implement getRankingWithFriends
    throw UnimplementedError();
  }

  @override
  Player getUserById(int id) {
    // TODO: implement getUserById
    throw UnimplementedError();
  }

  @override
  List<Player> getUsersByName(String name) {
    // TODO: implement getUsersByName
    throw UnimplementedError();
  }
}
