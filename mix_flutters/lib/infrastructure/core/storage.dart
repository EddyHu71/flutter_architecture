import 'dart:typed_data';
import 'package:bloc_flutters/domain/core/i_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IStorage)
class Storage implements IStorage {
  late Box box;
  final HiveInterface hive;

  Storage(this.hive);

  @override
  Future openBox(
    StorageConstants boxName,
  ) async {
    final List<int> hiveKey = await hiveKeys;

    box = await hive.openBox(
      describeEnum(boxName),
      encryptionCipher: HiveAesCipher(hiveKey),
    );
  }

  @override
  Future<void> putData({required Map<String, dynamic> json}) async {
    try {
      print('check box is open ${box.isOpen}');
      await box.putAll(json);
      return;
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Future putDynamicData({required String key, required dynamic value}) async {
    await box.put(key, value);
  }

  @override
  Future<void> putListData({required List dataList}) async {
    try {
      dataList.map((e) async {
        await box.add(e);
      });
    } catch (e) {
      print(e);
    }

    return;
  }

  @override
  Future<void> putString({required String key, required String value}) async {
    await box.put(key, value);
    return;
  }

  @override
  Future<void> putBool({required String key, required bool value}) async {
    await box.put(key, value);
    return;
  }

  @override
  String? getString({required String key}) {
    final String? value = box.get(key) as String?;
    return value;
  }

  @override
  DateTime? getDate({required String key}) {
    final DateTime? date = box.get(key) as DateTime?;
    // box.close();
    return date;
  }

  @override
  int? getInt({required String key}) {
    final int? value = box.get(key) as int?;
    return value;
  }

  @override
  bool getBool({required String key}) {
    bool? value = box.get(key) as bool?;

    // box.close();
    return value ??= false;
  }

  @override
  double? getDouble({required String key}) {
    final double? value = box.get(key) as double?;
    // box.close();
    return value;
  }

  @override
  Map<String, dynamic>? getData() {
    final Map<String, dynamic> value = Map<String, dynamic>.from(box.toMap());

    return value;
  }

  @override
  dynamic getDynamicData({required String key}) {
    return box.get(key);
  }

  @override
  List? getListData() {
    final value = box.toMap();

    final List datas = [];
    value.forEach((key, value) {
      datas.add(value);
    });
    // box.close();
    return datas;
  }

  @override
  Future<void> deleteData() async {
    await box.deleteFromDisk();
    return;
  }

  @override
  Future<void> deleteString({required String key}) async {
    await box.delete(key);
    // box.close();
    return;
  }

  Future<List<int>> get hiveKeys async {
    const FlutterSecureStorage ss = FlutterSecureStorage();
    String? stringKey = await ss.read(key: 'boxKey');
    List<int> hiveKey;
    if (stringKey != null) {
      hiveKey = stringKey.codeUnits;
    } else {
      hiveKey = Hive.generateSecureKey();
      final Uint8List bytes = Uint8List.fromList(hiveKey);
      stringKey = String.fromCharCodes(bytes);
      await ss.write(key: 'boxKey', value: stringKey);
    }
    return hiveKey;
  }

  @override
  Future close() {
    return box.close();
  }
}
