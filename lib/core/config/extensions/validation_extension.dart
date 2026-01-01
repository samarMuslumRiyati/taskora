
extension ValidationExt on String? {
  String? get isNotEmptyField {
    final trimmed = this?.trim();

    if (trimmed == null || trimmed.isEmpty) {
      return '';
    }
    return null;
  }

  String? get isValidEmail {
    final trimmed = this?.trim();

    if (trimmed == null || trimmed.isEmpty) {
      return '';
    }
    // Check if the entered email has the right format
    else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(this!)) {
      return '';
    }
    return null;
  }

  String? get isValidPassword {
    final trimmed = this?.trim();
    final hasLetter = RegExp(r'[A-Za-z]').hasMatch(trimmed ?? '');
    final hasNumber = RegExp(r'\d').hasMatch(trimmed ?? '');

    if (trimmed == null || trimmed.isEmpty) {
      return '';
    }

    if (!hasLetter || !hasNumber) {
      return '';
    }
    return null;
  }


  String? isValidConfirmationPassword(String password) {
    final trimmed = this?.trim();

    if (trimmed == null || trimmed.isEmpty) {
      return '';
    }

    if (password != this) {
      return '';
    }

    return null;
  }


  String? get isValidOtpCode {
    final trimmed = this?.trim();
    if (trimmed == null || trimmed.isEmpty) {
      return '';
    }

    if (!RegExp(r'^\d+$').hasMatch(trimmed)) {
      return '';
    }

    return null;
  }
}