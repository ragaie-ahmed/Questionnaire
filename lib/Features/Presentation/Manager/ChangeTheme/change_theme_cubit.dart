import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemeCubit extends Cubit<bool> {
  ChangeThemeCubit() : super(false) {
    _loadTheme();
  }

  void changeTheme(bool isDarkMode) async {
    await CacheHelper.saveData(key: "theme", value: isDarkMode);
    emit(isDarkMode);
  }

  void _loadTheme() {
    final isDarkMode = CacheHelper.getData(key: "theme") as bool?;
    emit(isDarkMode ?? false); // Default to false if no value is found
  }
}
