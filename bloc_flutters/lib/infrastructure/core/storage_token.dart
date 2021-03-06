import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageToken {
  final _storage = FlutterSecureStorage();

  writeToken(String token) async {
    print("Write token");
    print(token);
    await _storage.write(key: "token", value: token);
  }

  readToken() async {
    print("Token");
    final token = await _storage.read(key: "token");
    if (token != null) {
      return true;
    } else {
      return false;
    }
  }

  deleteAll() async {
    print("Delete All");
    await _storage.deleteAll();
  }
}

final storageData = StorageToken();
