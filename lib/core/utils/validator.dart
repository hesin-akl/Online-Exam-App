class Validator {
  Validator._();

  static String? validateEmail(String? val) {
    final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+$",
    );
    if (val == null || val.trim().isEmpty) {
      return 'Email is required';
    } else if (!emailRegex.hasMatch(val.trim())) {
      return 'This email is not valid';
    }
    return null;
  }

  static String? validatePassword(String? val) {
    final RegExp passwordRegex = RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).{8,}$');
    if (val == null || val.trim().isEmpty) {
      return 'Password is required';
    } else if (!passwordRegex.hasMatch(val.trim())) {
      return 'Password must be at least 8 characters, with letters and numbers';
    }
    return null;
  }

  static String? validateConfirmPassword(String? val, String password) {
    if (val == null || val.trim().isEmpty) {
      return 'Confirm password is required';
    } else if (val.trim() != password.trim()) {
      return 'Password does not match';
    }
    return null;
  }

  static String? validateUsername(String? val) {
    final RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9_.-]+$');
    if (val == null || val.trim().isEmpty) {
      return 'Username is required';
    } else if (!usernameRegex.hasMatch(val.trim())) {
      return 'Username is not valid';
    }
    return null;
  }

  static String? validateFullName(String? val) {
    if (val == null || val.trim().isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? validatePhoneNumber(String? val) {
    if (val == null || val.trim().isEmpty) {
      return 'Phone number is required';
    } else if (!RegExp(r'^\d{11}$').hasMatch(val.trim())) {
      return 'Phone number must be 11 digits';
    }
    return null;
  }
}
