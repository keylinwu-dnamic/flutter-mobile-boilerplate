import '../flavors/flavor.dart';
import '../flavors/main_common.dart';

Future<void> main() async {
  await mainCommon(Flavor.dev);
}
