package com.jyt.inspect

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Intent
import android.net.Uri

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler


class MyFlutterPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {


    private var flutterPluginBinding: FlutterPluginBinding? = null
    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "toDownload" -> {
                val url: String? = call.argument("url")
                val uri = Uri.parse(url)
                val intent = Intent(Intent.ACTION_VIEW, uri)
                activity?.startActivity(intent)
            }



            else -> result.notImplemented()
        }
    }



    override fun onAttachedToEngine(binding: FlutterPluginBinding) {
        flutterPluginBinding = binding
    }

    override fun onDetachedFromEngine(binding: FlutterPluginBinding) {
        channel!!.setMethodCallHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        channel = MethodChannel(flutterPluginBinding!!.flutterEngine.dartExecutor, "MethodChannel")
        channel!!.setMethodCallHandler(this)
    }

    override fun onDetachedFromActivityForConfigChanges() {}
    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {}
    override fun onDetachedFromActivity() {
        flutterPluginBinding = null
    }


    companion object {
        private var channel: MethodChannel? = null

        @SuppressLint("StaticFieldLeak")
        private var activity: Activity? = null
    }
}