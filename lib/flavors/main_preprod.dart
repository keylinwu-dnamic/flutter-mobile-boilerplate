import 'package:boilerplate/flavors/flavor.dart';
import 'package:boilerplate/flavors/main_common.dart';

Future<void> main() async {
  // This flavor should point to all of the prod config
  await mainCommon(Flavor.preprod);
}
