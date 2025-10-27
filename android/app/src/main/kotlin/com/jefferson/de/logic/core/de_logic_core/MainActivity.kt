package com.jyt.inspect

import android.os.Bundle
import android.util.Log
import android.view.KeyEvent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.StringCodec

class MainActivity: FlutterActivity(){

    private var enterCamera = false
    private var channel : BasicMessageChannel<String>? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        channel = flutterEngine?.dartExecutor?.let {
            BasicMessageChannel(
                it.binaryMessenger,
                "StringMessageChannel",StringCodec.INSTANCE)
        }

        channel?.setMessageHandler { message,reply ->
            if(message.equals("startCamera")){
                enterCamera = true
            }
            if(message.equals("endCamera")){
                enterCamera = false
            }
        }
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        Log.e("Fluttermain", "onKeyDown: keycode=$keyCode")
        if(keyCode == KeyEvent.KEYCODE_VOLUME_UP
            || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN)
        {
            if(enterCamera){
                return true
            }
        }
        return super.onKeyDown(keyCode, event)
    }

    override fun onKeyUp(keyCode: Int, event: KeyEvent?): Boolean {
        if(keyCode == KeyEvent.KEYCODE_VOLUME_UP
            || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN)
        {
            if(enterCamera){
                channel?.send("takePhoto")
                return true
            }
        }
        return super.onKeyUp(keyCode, event)
    }


    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        flutterEngine.plugins.add(MyFlutterPlugin())
        super.configureFlutterEngine(flutterEngine)
    }


    override fun onRestart() {
        super.onRestart()
        if (flutterEngine!=null){
            flutterEngine!!.lifecycleChannel.appIsResumed()
        }

    }

}
