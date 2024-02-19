import 'package:flutter/material.dart';

mixin Constant {
  /// PATH API
  static String _pathApi = "https://afiex.online/";

  static String get pathApi => _pathApi;

  static void setPathApi(String path) => _pathApi = path;

  static String _clientSecret = "NBiJ2aCTS65haei0iWhVepd122XI2xfd";

  static String get clientSecret => _clientSecret;

  static void setClientKey(String key) => _clientSecret = key;

  /// -------------------------------
  /// NAME APP
  static String _appName = "AFIEX Shop";

  static String get appName => _appName;

  static void setAppName(String name) => _appName = name;

  /// -------------------------------
  /// KEY BOOLEAN
  static const isDebug = false;
  static const isDEV = false;
  static const isUAT = false;
  static const isPRD = false;

  /// -------------------------------
  /// KEY DOUBLE/INT
  static double get radius => 10;

  static int get limit => 10;

  /// -------------------------------
  /// PATH CERTIFICATE
  static String _pathCert = "assets/certificates/afiex.online-cert.pem";

  static String get pathCert => _pathCert;

  static void setPathCert(String path) => _pathCert = path;

  /// -------------------------------
  /// DURATION
  static Duration get timeRequest => const Duration(seconds: 30);
  static Duration timeAnimationShort = const Duration(milliseconds: 200);
  static Duration timeAnimationLong = const Duration(milliseconds: 500);

  /// -------------------------------
  /// OTHER
  static final navigatorKey = GlobalKey<NavigatorState>();
}
