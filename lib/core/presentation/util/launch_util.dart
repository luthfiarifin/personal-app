import 'package:url_launcher/url_launcher.dart';

class LaunchUtil {
  static Future<void> launchWeb(String? url) async {
    if (url == null) return;

    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, webOnlyWindowName: '_blank');
    }
  }
}
