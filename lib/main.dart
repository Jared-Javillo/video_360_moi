import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_360_moi/video_360_page.dart';
import 'package:uni_links/uni_links.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final init = await handleInitialLink();
  runApp(MyApp(initLink: init));
}

class MyApp extends StatelessWidget {
  final String? initLink;

  const MyApp({super.key, this.initLink});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Video 360 Player",
      initialRoute: '/',
      routes: {
        '/': (context) => Video360Page(initialLink: initLink),
      },
      debugShowCheckedModeBanner: false,

    );
  }
}

Future<String?> handleInitialLink({Future<String?>? getLinkMethod }) async {
  try {
    getLinkMethod ??= getInitialLink();
    final url = await getLinkMethod;
    if(url != null){
      return url;
    }
  } on Exception catch (_, err) {
    if (kDebugMode) {
      print(err.toString());
    }
  }
  return null;
}
