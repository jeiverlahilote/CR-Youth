extension EmailValidationExtension on String {
  bool isValidEmail() {
    final emailRegex = RegExp(
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'); // Regular expression untuk validasi email

    return emailRegex.hasMatch(this); // Validasi email
  }
}
