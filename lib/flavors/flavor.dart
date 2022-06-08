//// Run with
//// flutter run --flavor dev -t lib/main_dev.dart
//// flutter run --flavor stag -t lib/main_stag.dart
//// flutter run --flavor prod -t lib/main_prod.dart
//// NOTE: On iOS, we need to create a matching Xcode scheme

enum Flavor { dev, staging, preprod, prod }
