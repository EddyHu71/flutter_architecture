enum StorageConstants { base, articles, user, security, cache }

abstract class IStorage {
  Future openBox(
    StorageConstants boxName,
  );
  Future close();
  Future<void> putData({required Map<String, dynamic> json});
  Future putDynamicData({required String key, required dynamic value});
  Future<void> putListData({required List dataList});
  Future<void> putString({required String key, required String value});
  Future<void> putBool({required String key, required bool value});
  String? getString({required String key});
  DateTime? getDate({required String key});
  int? getInt({required String key});
  bool getBool({required String key});
  double? getDouble({required String key});
  Map<String, dynamic>? getData();
  dynamic getDynamicData({required String key});
  List? getListData();
  Future<void> deleteData();
  Future<void> deleteString({required String key});
}
