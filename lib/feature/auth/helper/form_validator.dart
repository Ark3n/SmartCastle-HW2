// Helper class to validate Text Form Field

class FormValidator {
  // ensure that text not empty
  static String? requiredField(String? value, String hintText) {
    if (value == null || value.trim().isEmpty) return 'Please enter $hintText';
    return null;
  }

  // ensure that email has correct format
  static String? emailField(String? value, String hintText) {
    if (value == null || value.trim().isEmpty) return 'Please enter $hintText';

    const pattern = r'^[^@]+@[^@]+\.[^@]+';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(value.trim())) {
      return 'Please enter correct email format';
    }
    return null;
  }

  // ensure that password minimum 6 symbols
  static String? password(String? value, String hintText) {
    if (value == null || value.isEmpty) return 'Please enter $hintText';
    // compare passwords
    if (value.length < 6) return '$hintText must be at least 6 characters';
    return null;
  }

  // compare password
  static String? confirmPassword(
    String? value,
    String hintText,
    String password,
  ) {
    if (value == null || value.isEmpty) return 'Please enter $hintText';
    if (value != password) return 'Passwords don\'t match';
    return null;
  }
}
