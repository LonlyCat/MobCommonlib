package com.mob.plugin.flutter.mobcommonlib_example;

import android.os.Bundle;

import com.mob.MobSDK;

import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends FlutterActivity {
	// 通过Mob console申请获得
	private static final String MOB_APPKEY = "moba6b6c6d6";
	private static final String MOB_APPSECRET = "b89d2427a3bc7ad1aea1e1e8c1d36bf3";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		// 初始化MobSDK
		MobSDK.init(this, MOB_APPKEY, MOB_APPSECRET);
	}
}
