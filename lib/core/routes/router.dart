import 'package:auto_route/annotations.dart';

import '../../features/authentication/presentation/pages/authentication_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Authentication, initial: true),
  ],
)
class $AppRouter {}
