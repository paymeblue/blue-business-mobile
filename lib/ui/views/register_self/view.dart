import 'package:blue_business/core/navigation/pages.dart';
import 'package:flutter/material.dart';

class RegisterSelfView extends StatefulWidget {
  const RegisterSelfView({super.key});

  @override
  State<RegisterSelfView> createState() => _RegisterSelfViewState();

  static MaterialPage page() {
    return MaterialPage(
      name: AppPages.registerSelfPath,
      key: ValueKey(AppPages.registerSelfPath),
      child: const RegisterSelfView(),
    );
  }
}

class _RegisterSelfViewState extends State<RegisterSelfView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
