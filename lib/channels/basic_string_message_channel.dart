
import 'package:de_logic_core/cores/common_extension.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BasicStringMessageChannel{

  final BasicMessageChannel<String> _channel = const BasicMessageChannel('StringMessageChannel', StringCodec());

  var receiveMessage = ''.obs;

  void listen(){
    _channel.setMessageHandler((message){
      print('-------------BasicMessageChannel receive message=$message');
      if(message.notEmpty) {
        receiveMessage.firstRebuild = true;
        receiveMessage.value = message!;
      }
      return Future.value('');
    });
  }
  
  void send(String message){
    _channel.send(message);
  }

  void cancelListen(){
    _channel.setMessageHandler(null);
  }

}