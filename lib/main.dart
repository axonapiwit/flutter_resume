import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle("skills"),
                        SizedBox(
                          height: 10,
                        ),
                        _buildSubTitle("programing language"),
                        SizedBox(
                          height: 20,
                        ),
                        _buildSkillRow('html5/css3', 0.95),
                        _buildSkillRow('php', 0.60),
                        _buildSkillRow('wordpress', 0.75),
                        _buildSkillRow('javascript', 0.65),
                        _buildSkillRow('typescript', 0.50),
                        SizedBox(
                          height: 20,
                        ),
                        _buildSubTitle("database"),
                        SizedBox(
                          height: 10,
                        ),
                        _buildSkillRow('mysql', 0.55),
                        _buildSkillRow('mongo db', 0.65),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSubTitle("tools"),
                      ],
                    ),
                  ),
                  Personal(),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle("experience"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'OneDee Solution Co., Ltd.',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Text(
                          'Full Stack Developer (2021)',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle("education"),
                        SizedBox(
                          height: 10,
                        ),
                        _buildSubTitle("2019 - present"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'School of Information and Communication Technology Bacheior of Engineering in Software Engineering University of Phayao',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 10, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTitle("contact me"),
                      ],
                    ),
                  ),
                  ContactMe(),
                ],
              )),
        ),
      ),
    );
  }
}

class Personal extends StatelessWidget {
  const Personal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        children: [
          Cards(
            title: 'Figma',
            assetName: 'assets/icons/figma.svg',
          ),
          Cards(
            title: 'Photoshop',
            assetName: 'assets/icons/photoshop.svg',
          ),
          Cards(
            title: 'After Effects',
            assetName: 'assets/icons/after-effects.svg',
          ),
          Cards(
            title: 'Illustrator',
            assetName: 'assets/icons/illustrator.svg',
          ),
          Cards(
            title: 'VS Code',
            assetName: 'assets/icons/vs-code.svg',
          ),
          Cards(
            title: 'IntelliJ IDEA',
            assetName: 'assets/icons/intellij.svg',
          ),
        ],
      ),
    );
  }
}

class ContactMe extends StatelessWidget {
  const ContactMe({
    Key? key,
  }) : super(key: key);

  void facebook() async {
    await FlutterWebBrowser.openWebPage(
      url: "https://facebook.com/axonapiwit",
    );
  }

  void instagram() async {
    await FlutterWebBrowser.openWebPage(
      url: "https://www.instagram.com/sir.aont/",
    );
  }

  void github() async {
    await FlutterWebBrowser.openWebPage(
      url: "https://github.com/axonapiwit/",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey[800]),
              onPressed: facebook,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/facebook.svg',
                    height: 60,
                  ),
                ],
              ))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey[800]),
              onPressed: instagram,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/instagram.svg',
                    height: 60,
                  ),
                ],
              ))),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey[800]),
              onPressed: github,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/github.svg',
                    height: 60,
                  ),
                ],
              )))
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  Cards({this.title = '', this.assetName = ''});

  final String title;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Colors.grey[800],
      child: InkWell(
        onTap: () {},
        splashColor: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                assetName,
                // color: customColor,
                height: 50,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: new TextStyle(
                    fontSize: 17.0, fontFamily: 'Poppins', color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
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
          style: TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        width: 10.0,
      ),
      Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            color: Colors.yellow,
            backgroundColor: Colors.white,
            value: level,
          )),
      SizedBox(
        width: 16.0,
      )
    ],
  );
}

Container _buildTitle(String title) {
  return Container(
    child: Text(
      title.toUpperCase(),
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}

Container _buildSubTitle(String title) {
  return Container(
    child: Text(
      title.toUpperCase(),
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey[300]),
    ),
  );
}

Row _buildHeader() {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 100.0,
      ),
      Container(
        width: 85,
        height: 85,
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.grey[800],
          child: CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Column(
        children: <Widget>[
          Text(
            'Apwit Thammachai'.toUpperCase(),
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Colors.white),
          ),
          Text(
            'Full Stack Developer',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              Text(
                'Chiangrai Thailand',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          )
        ],
      )
    ],
  );
}
