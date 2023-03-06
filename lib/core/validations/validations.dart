class AuthValidation {
  static String? nameValidation(String value){
    if (value.length < 2)
      {
        return 'يجب إدخال على الأقل حرفان';
      }
    return null;
  }
  static String? phoneNumberValidation(String value){
    if (value.length != 10)
    {
      return 'رقم الهاتف يجب ان يتكون من 10 أرقام';
    }
    return null;
  }
  static String? emailValidation(String value){
    if (value.length < 3 || !value.contains('@') || !value.contains('.com'))
    {
      return 'يجب إدخال بريد إلكتروني صالح';
    }
    return null;
  }
  static String? passwordValidation(String value){
    if (value.length < 8)
    {
      return 'يجب إدخال على الأقل 8 أحرف';
    }
    return null;
  }
  static String? birthdayValidation(String value){
    if (value.length < 8)
    {
      return 'يجب إدخال على الأقل 8 أحرف';
    }
    return null;
  }

}