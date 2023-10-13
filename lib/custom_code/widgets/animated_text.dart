// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Center(
        child: AnimatedTextKit(
          pause: Duration(milliseconds: 50),
          repeatForever: true,
          animatedTexts: [
            ScaleAnimatedText(
              'FlutterFlow Pride',
              textStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontWeight: FontWeight.w500,
                  ),
              duration: const Duration(milliseconds: 1000),
              scalingFactor: 1,
            ),
            ScaleAnimatedText(
              'Flutter Pride',
              textStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontWeight: FontWeight.w500,
                  ),
              duration: const Duration(milliseconds: 1000),
              scalingFactor: 1,
            ),
            ScaleAnimatedText(
              'Dart Pride',
              textStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontWeight: FontWeight.w500,
                  ),
              duration: const Duration(milliseconds: 1000),
              scalingFactor: 1,
            ),
          ],
        ),
      ),
    );
  }
}
