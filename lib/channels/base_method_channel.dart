import 'package:flutter/services.dart';

class BaseMethodChannel{

  static var channel = const MethodChannel('MethodChannel');

  Future callNativeMethod(String methodName,Map<String,dynamic> params) async{
    return await channel.invokeMethod(methodName, params);
  }
}