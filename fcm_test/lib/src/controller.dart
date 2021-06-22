import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NotificationController extends GetxController {
  static NotificationController get to => Get.find();
  FirebaseMessaging _messaging = FirebaseMessaging();

  @override
  void onInit() {
    _initNotification();
    super.onInit();
  }

  Future<void> _getToken() async {
    try {
      String token = await _messaging.getToken();
      print(token);
    } catch (e) {
      e.printError();
    }
  }

  void _initNotification() {
    _messaging.requestNotificationPermissions(const IosNotificationSettings(
        sound: true, badge: true, alert: true, provisional: true));
    _messaging.configure(
        onMessage: _onMessage, onLaunch: _onLaunch, onResume: _onResume);
  }

  Future<void>? _onMessage(Map<String, dynamic> message) {
    print("_onMessage : $message");
    return null;
  }

  Future<void>? _onLaunch(Map<String, dynamic> message) {
    print("_onLaunch : $message");
    return null;
  }

  Future<void>? _onResume(Map<String, dynamic> message) {
    print("_onResume : $message");
    return null;
  }
}
