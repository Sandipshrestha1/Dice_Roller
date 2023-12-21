import 'package:flutter/material.dart';
import 'styled_text.dart';

const startAlignent = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignent,
          end: endAlignment,
        ),
      ),
      child:  Center(
        child: StyledText("-----Hello Developers----!"),
      ),
    );
  }
}
