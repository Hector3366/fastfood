import 'package:flutter/cupertino.dart';

import 'package:hola_mundo/features/auth/data/models/user.dart';

class UserProvider with ChangeNotifier {
  User _user;
  List<User> _users = List<User>();

  User getUser(String email) {
    return _users.firstWhere(
      (element) => element.email == email,
      orElse: () {
        return null;
      },
    );
  }

  get user {
    return _user;
  }

  set user(User user) {
    _user = user;
    notifyListeners();
  }

  get users {
    return _users;
  }

  set users(User user) {
    _users.add(user);
    notifyListeners();
  }
}