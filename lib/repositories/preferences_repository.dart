// class _PreferenceKeys {
//   static const String _replaceMeKey = 'replaceMeKey';
// }

abstract class IPreferencesRepository {}

class PreferencesRepository implements IPreferencesRepository {
  // Future<SharedPreferences> get _preferencesInstance async =>
  //     await SharedPreferences.getInstance();
  //
  // Future<StreamingSharedPreferences> get _streamingPreferencesInstance async =>
  //     await StreamingSharedPreferences.instance;

  // @override
  // Future<User> get user async {
  //   final sharedPreferences = await _streamingPreferencesInstance;
  //   final savedUser = sharedPreferences.getCustomValue<User>(
  //     _PreferenceKeys._replaceMeKey,
  //     defaultValue: User(),
  //     adapter: JsonAdapter(
  //       deserializer: (value) => User.fromJson(
  //         value as Map<String, dynamic>,
  //       ),
  //     ),
  //   );
  //   return savedUser.first;
  // }
  //
  // @override
  // Future<bool> saveUser(User user) async {
  //   try {
  //     final sharedPreferences = await _streamingPreferencesInstance;
  //     bool isSaved = await sharedPreferences.setCustomValue<User>(
  //         _PreferenceKeys._replaceMeKey, user,
  //         adapter: JsonAdapter(serializer: (city) => user.toJson()));
  //     return isSaved;
  //   } catch (error) {
  //     log('Preference error: $error');
  //     return false;
  //   }
  // }
}
