import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluid_layout/fluid_layout.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FluidLayout(
        child: Scaffold(
            body: Row(children: <Widget>[
      Fluid(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                padding: EdgeInsets.only(top: 72),
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/logo.png',
                  height: 50,
                ),
              ),
            ),
            Spacer(),
            Text('Hola! ', style: Theme.of(context).textTheme.display3),
            SizedBox(height: 12),
            Text(
                'Estamos preparando algo increíble\npara la comunidad de flutter en Madrid. \n\nNos vemos pronto!',
                style: Theme.of(context).textTheme.body1),
            SizedBox(height: 60),
            Text('Únete y mantente informado:',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Colors.black38)),
            _socialIconsRow(),
            SizedBox(height: 25),
            Spacer(),
          ],
        ),
      )),
      Expanded(child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 50.0)
            return _backgroundImage(context);
          else
            return Container();
        },
      ))
    ])));
  }
}

Widget _backgroundImage(context) {
  return Container(
    child: ClipPath(
        clipper: ArrowClipper(arrowDistance: 200),
        child: Stack(fit: StackFit.expand, children: <Widget>[
          Image(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black38,
          )
        ])),
  );
}

Widget _socialIconsRow() {
  return Row(
    children: <Widget>[
      Padding(
          padding: EdgeInsets.all(8),
          child: IconButton(
              icon: Icon(FontAwesomeIcons.google),
              onPressed: () => launch('mailto://fluttermadrid@gmail.com'))),
      Padding(
          padding: EdgeInsets.all(8),
          child: IconButton(
              icon: Icon(FontAwesomeIcons.twitter),
              onPressed: () => launch('https://twitter.com/FlutterMadrid'))),
      Padding(
          padding: EdgeInsets.all(8),
          child: IconButton(
              icon: Icon(FontAwesomeIcons.telegram),
              onPressed: () => launch('https://t.me/fluttermadrid'))),
      Padding(
          padding: EdgeInsets.all(8),
          child: IconButton(
              icon: Icon(FontAwesomeIcons.meetup),
              onPressed: () =>
                  launch('https://www.meetup.com/es-ES/Flutter-Madrid/'))),
      Padding(
          padding: EdgeInsets.all(8),
          child: IconButton(
              icon: Icon(FontAwesomeIcons.github),
              onPressed: () => launch('https://github.com/Flutter-Madrid/'))),
    ],
  );
}

class ArrowClipper extends CustomClipper<Path> {
  final arrowDistance;

  ArrowClipper({this.arrowDistance = 12});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(arrowDistance, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
