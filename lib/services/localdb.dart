import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class LocalDB {
  Box _appDataBox;

  LocalDB() {
    _setupBox().then((Box appDataBox) {
      _appDataBox = appDataBox;
    });
  }

  Future<Box> _setupBox() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    return await Hive.openBox('_appDataBox');
  }

  void closeBox() => _appDataBox.close();

  void setToken(String token) => _appDataBox.put('token', token);

  dynamic getToken() => _appDataBox.get('token');
}
