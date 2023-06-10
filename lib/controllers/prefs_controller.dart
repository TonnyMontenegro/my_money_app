import 'package:shared_preferences/shared_preferences.dart';

saveValue(type, name, value) async {
  final prefs = await SharedPreferences.getInstance();
  if (type == 'int') {
    prefs.setInt(name, value);
  } else if (type == 'double') {
    prefs.setDouble(name, value);
  } else if (type == 'string') {
    prefs.setString(name, value);
  } else if (type == 'bool') {
    prefs.setBool(name, value);
  } else if (type == 'stringList') {
    prefs.setStringList(name, value);
  }
}

getValue(type, name) async {
  final prefs = await SharedPreferences.getInstance();
  if (type == 'int') {
    return prefs.getInt(name) ?? 0;
  } else if (type == 'double') {
    return prefs.getDouble(name) ?? 0.0;
  } else if (type == 'string') {
    return prefs.getString(name) ?? '';
  } else if (type == "bool") {
    return prefs.getBool(name) ?? false;
  } else if (type == 'stringList') {
    return prefs.getStringList(name) ?? [];
  }
}

cleanValues() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.clear();
}
