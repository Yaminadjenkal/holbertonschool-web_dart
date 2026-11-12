
class Password {
  String _password = "";

  Password({required String password})
      : _password = password;

  bool isValid() {
    if (_password.length >= 8 &&
        _password.length <= 16 &&
        RegExp(r'[A-Z]').hasMatch(_password) &&
        RegExp(r'[a-z]').hasMatch(_password) &&
        RegExp(r'[0-9]').hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }

  String get password {
    return _password;
  }

  set password(String value) {
    _password = value;
  }
}

