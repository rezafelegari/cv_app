import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileFourPage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile4.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  "Over 4+ years of experience and Android development and 1+ years of experience in flutter (android + ios) applications development "),
            ),
            _buildTitle("Skills"),
            SizedBox(height: 10.0),
            _buildSkillRow("Android", 0.9),
            SizedBox(height: 10.0),
            _buildSkillRow("Flutter", 0.75),
            SizedBox(height: 10.0),
            _buildSkillRow("Java", 0.65),
            SizedBox(height: 10.0),
            _buildSkillRow("Dart", 0.65),
            SizedBox(height: 10.0),
            _buildSkillRow("Python", 0.65),
            SizedBox(height: 30.0),
            _buildTitle("Experience"),
            _buildExperienceRow(
                company: "Barakat E-Health",
                position: "Senior Mobile Developer",
                duration: "2018 - Current"),
            _buildExperienceRow(
                company: "Changal (freelance)",
                position: "Senior Mobile Developer",
                duration: "2019 - 2020"),
            _buildExperienceRow(
                company: "Infotech International",
                position: "Android Developer",
                duration: "2017 - 2018"),
            _buildExperienceRow(
                company: "Brandkadeh",
                position: "Android Developer",
                duration: "2016 - 2017"),
            _buildExperienceRow(
                company: "Farimah Amaj Farda",
                position: "Android Developer",
                duration: "2014 - 2016"),
            SizedBox(height: 20.0),
            _buildTitle("Education"),
            SizedBox(height: 5.0),
            _buildExperienceRow(
                company: "University of Kurdistan (UOK), Sanandaj,Iran",
                position: "B.Sc. Computer Engineering (Software)",
                duration: "2013 - 2017"),
            _buildExperienceRow(
                company: "PayamNoor University, Tehran,Iran",
                position: "M.sc. Computer Engineering (Software)",
                duration: "2017 - now"),
            SizedBox(height: 20.0),
            _buildTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "felegarireza72@gmail.com",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "+98-9379189785",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            _buildSocialsRow(),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.filePdf,
                      color: Colors.red,
                    ),
                    Text('Download my cv ')
                  ],
                ),
              ),
              onTap: (){
                _launchURL("https://raw.githubusercontent.com/rezafelegari/rezafelegari.github.io/master/assets/CV.pdf");
              },
            )
          ],
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.linkedin),
          onPressed: () {
            _launchURL(
                "https://www.linkedin.com/in/reza-felegari-3b86649a/?originalSubdomain=ir");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.grey,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: () {
            _launchURL("https://github.com/rezafelegari");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.blue,
          icon: Icon(FontAwesomeIcons.twitter),
          onPressed: () {
            _launchURL("https://twitter.com/Reza67707456");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow(
      {String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
            )),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
            width: 100.0,
            height: 100.0,
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/reza.jpg'),
              ),
            )),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Reza Felegari",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text("Mobile Application Developer"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.map,
                  size: 12.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Tehran, Iran",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
