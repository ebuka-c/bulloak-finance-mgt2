class BulloakAPI {
  //base url
  static const String baseUrl = 'https://api.bulloak.org';

  // Auth
  static const String registerEndpoint = "$baseUrl/user/auth/create/"; //POST
  static const String loginEndpoint = "$baseUrl/user/auth/login/"; //POST
  static const String logoutEndpoint = "$baseUrl/user/auth/logout/"; //POST

  static const String passwordResetEndpoint =
      "$baseUrl/user/auth/password-reset/"; //POST
  static const String passwordResetCompleteEndpoint =
      "$baseUrl/user/auth/password-confirmation/"; //POST

  static const String verifyEmailEndpoint =
      "$baseUrl/user/auth/verify-email/"; //POST
}
