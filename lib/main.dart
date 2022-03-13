import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:razor_pay/payment/razorpay.dart';

import 'image_downlod/image_downloder.dart';
import 'mobile_ads/video_ads.dart';
import 'recoder/audio_recording.dart';
import 'drawer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VideoAds(),
    );
  }
}
