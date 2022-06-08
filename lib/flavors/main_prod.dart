import 'flavor.dart';
import 'main_common.dart';

Future<void> main() async {
  await mainCommon(Flavor.prod);
}
