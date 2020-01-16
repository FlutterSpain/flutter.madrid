import 'package:fluid_layout/fluid_layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Madrid',
      theme: ThemeData(
        textTheme: TextTheme(
            display3: GoogleFonts.balooBhai(
                textStyle: textTheme.display3
                    .copyWith(color: Color(0xff03569B), wordSpacing: 20)),
            body1: GoogleFonts.montserrat(textStyle: textTheme.body1.copyWith(color: Colors.black.withOpacity(0.7)))),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
            ),),
            Spacer(),
            Text(' Hola! ', style: Theme.of(context).textTheme.display3),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                  'Estamos preparando algo increible y emocionante\npara la comunidad de flutter en Madrid. \n\nNos vemos pronto!',
                  style: Theme.of(context).textTheme.body1),
            ),
            SizedBox(height: 60),
      Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text('Únete y mantente informado:',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Colors.black38)),),
      Padding(
        padding: EdgeInsets.only(left: 0),
        child:Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8), child:IconButton(
                    icon: Icon(FontAwesomeIcons.twitter),
                    onPressed: () => launch(
                        'https://twitter.com/FlutterMadrid'))),
                Padding(padding: EdgeInsets.all(8), child:IconButton(
                    icon: Icon(FontAwesomeIcons.telegram),
                    onPressed: () => launch(
                        'https://t.me/fluttermadrid'))),
                Padding(padding: EdgeInsets.all(8), child: IconButton(
                    icon: Icon(FontAwesomeIcons.meetup),
                    onPressed: () =>
                        launch('https://www.meetup.com/es-ES/Flutter-Madrid/'))),

          Padding(padding: EdgeInsets.all(8), child: IconButton(
                    icon: Icon(FontAwesomeIcons.github),
                    onPressed: () => launch(
                        'https://github.com/Flutter-Madrid/'))),
              ],
            ),),
            SizedBox(height: 25),
            Spacer(),
          ],
        ),
      )),
      Expanded(child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 200)
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
          else
            return Container();
        },
      ))
    ])));
  }
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
