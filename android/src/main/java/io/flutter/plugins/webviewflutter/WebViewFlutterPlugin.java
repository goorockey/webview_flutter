// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package io.flutter.plugins.webviewflutter;

import io.flutter.plugin.common.PluginRegistry.Registrar;
import com.tencent.stat.hybrid.StatHybridHandler;

/** WebViewFlutterPlugin */
public class WebViewFlutterPlugin {

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    registrar.platformViewRegistry().registerViewFactory("plugins.flutter.io/webview",
        new WebViewFactory(registrar.messenger()));
    FlutterCookieManager.registerWith(registrar.messenger());

    // 使用默认Appkey初始化Hybrid模块
    StatHybridHandler.init(registrar.activity());
  }
}
