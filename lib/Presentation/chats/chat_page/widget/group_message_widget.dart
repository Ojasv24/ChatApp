import 'package:chatapp_dda/Domain/app/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

class GroupMessageWidget extends StatelessWidget {
  final Message message;
  final bool showNotch;
  const GroupMessageWidget(
      {Key? key, required this.message, required this.showNotch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const notchWidth = 4.0;
    return Padding(
      padding: EdgeInsets.fromLTRB(message.isByMe ? 32.0 : 2.0, 4, 2, 4),
      child: Row(
        mainAxisAlignment:
            message.isByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: CustomPaint(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          6 + notchWidth, 6, 6 + notchWidth, 6),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  message.message,
                                  style: const TextStyle(fontSize: 16),
                                  overflow: TextOverflow.visible,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Text(DateFormat('h:mm a').format(message.timeStamp)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              painter: showNotch
                  ? message.isByMe
                      ? MyMessagePainter(notchWidth)
                      : OtherUserMessagePainter(notchWidth)
                  : message.isByMe
                      ? MyCommonMessagePainter(notchWidth)
                      : OtherCommonMessagePainter(notchWidth),
            ),
          ),
        ],
      ),
    );
  }
}

class MyMessagePainter extends CustomPainter {
  final double notchWidth;

  MyMessagePainter(this.notchWidth);

  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        rect.centerLeft,
        rect.centerRight,
        [
          const Color.fromARGB(255, 170, 86, 144),
          const Color.fromARGB(255, 110, 75, 141),
        ],
      )
      ..strokeWidth = 15;
    final path = Path();

    const borderRadius = 12.0;
    const notchCurve = 2.0;
    const notchCurveThicknes = 2.0;

    path.moveTo(borderRadius, 0);
    path.quadraticBezierTo(0, 0, 0, borderRadius);
    path.lineTo(0, size.height - borderRadius);
    path.quadraticBezierTo(0, size.height, borderRadius, size.height);
    path.lineTo(size.width - 2, size.height);
    path.quadraticBezierTo(size.width, size.height - notchCurve / 2,
        size.width - 2, size.height - notchCurve);
    path.quadraticBezierTo(
        size.width - 2 - notchWidth,
        size.height - notchCurveThicknes * notchCurve,
        size.width - 2 - notchWidth,
        size.height - notchCurveThicknes * notchCurve - notchWidth);
    path.lineTo(size.width - 2 - notchWidth, borderRadius);
    path.quadraticBezierTo(size.width - 2 - notchWidth, 0,
        size.width - 2 - notchWidth - borderRadius, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class OtherUserMessagePainter extends CustomPainter {
  final double notchWidth;

  OtherUserMessagePainter(this.notchWidth);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 33, 33, 35)
      ..strokeWidth = 15;
    var path = Path();

    const borderRadius = 12.0;
    const notchCurve = 2.0;
    const notchCurveThicknes = 2.0;

    path.moveTo(notchWidth + borderRadius + 2, 0);
    path.quadraticBezierTo(notchWidth + 2, 0, notchWidth + 2, borderRadius);
    path.lineTo(notchWidth + 2, size.height - borderRadius);
    path.quadraticBezierTo(
      notchWidth + 2,
      size.height - notchCurveThicknes * notchCurve,
      notchCurve,
      size.height - notchCurve,
    );
    path.quadraticBezierTo(
      0,
      size.height - notchCurve / 2,
      notchCurve,
      size.height,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - borderRadius, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - borderRadius);
    path.lineTo(size.width, borderRadius);
    path.quadraticBezierTo(size.width, 0, size.width - borderRadius, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyCommonMessagePainter extends CustomPainter {
  final double notchWidth;

  MyCommonMessagePainter(this.notchWidth);
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        rect.centerLeft,
        rect.centerRight,
        [
          const Color.fromARGB(255, 170, 86, 144),
          const Color.fromARGB(255, 110, 75, 141),
        ],
      )
      ..strokeWidth = 15;
    var path = Path();

    const borderRadius = 12.0;
    path.moveTo(borderRadius, 0);
    path.quadraticBezierTo(0, 0, 0, borderRadius);
    path.lineTo(0, size.height - borderRadius);
    path.quadraticBezierTo(0, size.height, borderRadius, size.height);
    path.lineTo(size.width - notchWidth, size.height);
    path.lineTo(size.width - notchWidth - borderRadius, size.height);
    path.quadraticBezierTo(size.width - notchWidth, size.height,
        size.width - notchWidth, size.height - borderRadius);
    path.lineTo(size.width - notchWidth, borderRadius);
    path.quadraticBezierTo(
        size.width - notchWidth, 0, size.width - borderRadius, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class OtherCommonMessagePainter extends CustomPainter {
  final double notchWidth;

  OtherCommonMessagePainter(this.notchWidth);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 33, 33, 35)
      ..strokeWidth = 15;
    var path = Path();

    const borderRadius = 12.0;
    path.moveTo(borderRadius + notchWidth, 0);
    path.quadraticBezierTo(notchWidth, 0, notchWidth, borderRadius);
    path.lineTo(notchWidth, size.height - borderRadius);
    path.quadraticBezierTo(notchWidth, size.height, borderRadius, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width - borderRadius, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - borderRadius);
    path.lineTo(size.width, borderRadius);
    path.quadraticBezierTo(size.width, 0, size.width - borderRadius, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
