import 'package:flutter/material.dart';

class NoItemsContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  const NoItemsContainer({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      alignment: Alignment.center,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: complete build
        ],
      ),
    );
  }
}

class NoMoreItemsContainer extends StatelessWidget {
  final String title;
  const NoMoreItemsContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: complete build
        ],
      ),
    );
  }
}

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({
    super.key,
    required this.onRefresh,
  });

  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      alignment: Alignment.center,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: complete build
        ],
      ),
    );
  }
}

class LoadingItemsFirstPageContainer extends StatelessWidget {
  const LoadingItemsFirstPageContainer({
    super.key,
    required this.loadingMessage,
  });

  final String loadingMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      alignment: Alignment.center,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: complete build
        ],
      ),
    );
  }
}

class LoadingMoreItemsContainer extends StatelessWidget {
  const LoadingMoreItemsContainer({
    super.key,
    required this.loadingMessage,
  });

  final String loadingMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      alignment: Alignment.center,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //TODO: complete build
        ],
      ),
    );
  }
}
