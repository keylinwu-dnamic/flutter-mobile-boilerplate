import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_viewmodel.dart';

final homeViewModelProvider = Provider<HomeViewModel>(
  (ref) {
    return HomeViewModel();
  },
);
