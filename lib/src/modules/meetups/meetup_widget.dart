import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_madrid/src/modules/meetups/meetup_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MeetupCard extends StatelessWidget {
  final MeetupData data;

  const MeetupCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black.withOpacity(0.04)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                if (data.meetUrl != null) launch(data.meetUrl);
              },
              child:
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: SizedBox(
                    height: 169,
                    width: 300,
                    child: Image.asset(
                      'assets/meetup_10_02_2020.png',
                      fit: BoxFit.cover,
                    )),
              ),
            )
            /* SizedBox(height: 12),
                Text(data.title, style: Theme.of(context).textTheme.title),
                Text(data.description,
                    style: Theme.of(context).textTheme.subtitle),*/
          ],
        )
    );
  }
}
