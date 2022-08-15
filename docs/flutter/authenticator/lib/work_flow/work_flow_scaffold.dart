import 'dart:math';

import 'package:flutter_authenticator_example/work_flow/work_flow_logo.dart';
import 'package:flutter/material.dart';

class WorkFlowScaffold extends StatelessWidget {
  const WorkFlowScaffold({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: min(460, width)),
                        child: Padding(
                          padding: const EdgeInsets.all(32),
                          child: child,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (width > 960)
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primary,
                child: const Center(
                  child: WorkFlowLogoFull(size: 100),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
