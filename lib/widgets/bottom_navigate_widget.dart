import 'package:flutter/material.dart';

void main() => runApp(MyContainer());

class CustomClipperImage extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    // var firstEnd = Offset(size.width / 2, size.height / 2);
    path.arcToPoint(const Offset(0, -800), radius: const Radius.circular(1));

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class MyContainer extends StatelessWidget {
  Widget makeButtom(IconData icon, Color? color) {
    final iconColor = color!.withOpacity(0.7);
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: iconColor)),
        child: Icon(
          icon,
          size: 30,
          color: iconColor,
        ));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipPath(
        clipper: CustomClipperImage(),
        child: Container(
          height: 120,
          width: 500,
          padding: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            // color: const Color.fromRGBO(14, 11, 79, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: 50.0,
                spreadRadius: 50.0,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              makeButtom(Icons.home_outlined, theme.textTheme.headline1!.color),
              makeButtom(Icons.show_chart, theme.textTheme.headline1!.color),
              makeButtom(Icons.supervisor_account_outlined,
                  theme.textTheme.headline1!.color),
            ],
          ),
        ));
  }
}
