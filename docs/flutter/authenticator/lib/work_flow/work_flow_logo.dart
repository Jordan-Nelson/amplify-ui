import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorkFlowLogo extends StatelessWidget {
  const WorkFlowLogo({Key? key, this.size = 80}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/workflow-logo.svg',
      height: size,
      semanticsLabel: 'Workflow Logo',
    );
  }
}

class WorkFlowLogoFull extends StatelessWidget {
  const WorkFlowLogoFull({Key? key, this.size = 80}) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/workflow-logo-white.svg',
      height: size,
      semanticsLabel: 'Workflow Logo',
    );
  }
}
