
import 'base_method_channel.dart';

class InstallApkUtil {
  static var channel = BaseMethodChannel();


  ///去浏览器里下载apk
  static Future<int> toDownload(String url) async {
    var res = await channel.callNativeMethod('toDownload', {"url":url});
    return res;
  }

}