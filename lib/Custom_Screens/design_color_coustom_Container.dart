import 'package:flutter/material.dart';

import '../Color/App_Colors.dart';

class DesignColorCoustomContainer extends StatefulWidget {
  final Widget child;
  const DesignColorCoustomContainer({Key? key, required this.child})
      : super(key: key);

  @override
  State<DesignColorCoustomContainer> createState() =>
      _DesignColorCoustomContainerState();
}

class _DesignColorCoustomContainerState
    extends State<DesignColorCoustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorConst.gainsboro.withOpacity(0.7),
          border: Border.all(color: ColorConst.silver, width: 1)),
      child: widget.child,
    );
  }
}
