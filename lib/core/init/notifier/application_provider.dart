import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'theme_notifer.dart';

class ApplicationProvider {
  static ApplicationProvider? _instance;
  static ApplicationProvider get instance {
    _instance ??= ApplicationProvider._init();
    return _instance!;
  }

  ApplicationProvider._init();

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
    ),
    // Provider.value(value: NavigationService.instance)
  ];
}