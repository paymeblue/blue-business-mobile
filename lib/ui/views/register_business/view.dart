import 'package:blue_business/core/navigation/pages.dart';
import 'package:flutter/material.dart';

class RegisterBusinessView extends StatefulWidget {
  const RegisterBusinessView({super.key});

  @override
  State<RegisterBusinessView> createState() => _RegisterBusinessViewState();

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.registerBusinessPath,
      key: ValueKey(AppPages.registerBusinessPath),
      child: const RegisterBusinessView(),
    );
  }
}

class _RegisterBusinessViewState extends State<RegisterBusinessView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
