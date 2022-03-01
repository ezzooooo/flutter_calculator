import 'package:calculator/bindings/common_binding.dart';
import 'package:calculator/bindings/home_binding.dart';
import 'package:calculator/ui/page/home/home_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const HomePage(),
      bindings: [
        HomeBinding(),
        CommonBinding(),
      ],
    )
  ];
}
