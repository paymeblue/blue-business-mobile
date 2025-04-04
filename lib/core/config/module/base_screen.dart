import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:blue_business/core/utils/connection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;
  final T model;
  final Widget? child;
  final Function(T)? onModelReady;
  final Function(T)? onDispose;
  final bool closeKeyboardOnTap;

  const BaseView({
    super.key,
    required this.builder,
    required this.model,
    this.child,
    this.onModelReady,
    this.onDispose,
    this.closeKeyboardOnTap = true,
  });
  @override
  State<BaseView> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>> {
  late T model;

  @override
  void initState() {
    super.initState();
    model = widget.model;

    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
  }

  @override
  void dispose() {
    model = widget.model;

    if (widget.onDispose != null) {
      widget.onDispose!(model);
    }

    ConnectionHelper.subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: model,
      child: GestureDetector(
        onTap: () {
          GoRouterState state = GoRouterState.of(context);
          FocusManager.instance.primaryFocus?.unfocus();

          if (state.matchedLocation.contains("/dash")) {
            RefreshTimer().resetTimer();
          }
        },
        onPanDown: (details) {
          GoRouterState state = GoRouterState.of(context);
          if (state.matchedLocation.contains("/dash")) {
            RefreshTimer().resetTimer();
          }
        },
        child: Consumer<T>(
          builder: widget.builder,
          child: widget.child,
        ),
      ),
    );
  }
}
