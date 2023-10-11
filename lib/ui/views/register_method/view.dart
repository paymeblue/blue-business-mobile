import 'package:blue_business/core/navigation/pages.dart';
import 'package:flutter/material.dart';

class RegisterMethodView extends StatefulWidget {
  const RegisterMethodView({super.key});

  @override
  State<RegisterMethodView> createState() => _RegisterMethodViewState();

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.loginPath,
      key: ValueKey(AppPages.loginPath),
      child: const RegisterMethodView(),
    );
  }
}

class _RegisterMethodViewState extends State<RegisterMethodView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
