import 'package:flutter_web_ui/ui.dart' as ui;
import 'package:web_one/main.dart' as app;

main() async {
  await ui.webOnlyInitializePlatform();
  app.main();
}
