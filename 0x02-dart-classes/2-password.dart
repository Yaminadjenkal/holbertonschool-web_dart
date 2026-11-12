class Password {
    String password = "";

    Password();

    bool isValid() {
        if (password.length >= 8 && password.length <= 16 && RegExp(r'[A-Z]').hasMatch(password) && RegExp(r'[a-z]').hasMatch(password) && RegExp(r'[0-9]').hasMatch(password)) {
            return true;
        } else {
            return false;
        }
    }

    @override
        String toString() {
            return "Your Password is: ${password}";
        }
}
