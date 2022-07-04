import 'package:boilerplate/flavors/flavor.dart';
import 'package:boilerplate/flavors/main_common.dart';

Future<void> main() async {
  await mainCommon(Flavor.prod);
}
