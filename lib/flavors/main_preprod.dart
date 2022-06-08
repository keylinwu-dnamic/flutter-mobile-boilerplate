import 'flavor.dart';
import 'main_common.dart';

Future<void> main() async {
  // This flavor should point to all of the prod config
  await mainCommon(Flavor.preprod);
}
