import 'package:flutter_web/material.dart';
import 'package:portfolio_website/responsive_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.all(20.0),
                  children: <Widget>[
                    NavButton(text: "about", onPressed: () {}),
                    NavButton(text: "work", onPressed: () {}),
                    NavButton(text: "contact", onPressed: () {}),
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            duration: Duration(seconds: 1),
            child: ResponsiveWidget(
                largeScreen: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                NavHeader(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                ProfileInfo(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                SocialInfo(),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavButton(
                text: "Github",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Twitter",
                onPressed: () {},
                color: Colors.blue,
              ),
              NavButton(
                text: "Facebook",
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
          Text(
            "Amadi Promise © 2019",
            textAlign: TextAlign.center,
            style: new TextStyle(color: Colors.grey),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          NavButton(
            text: "Github",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "Twitter",
            onPressed: () {},
            color: Colors.blue,
          ),
          NavButton(
            text: "Facebook",
            onPressed: () {},
            color: Colors.blue,
          ),
          Text(
            "Amadi Promise © 2019",
            textAlign: TextAlign.center,
            style: new TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => AnimatedContainer(
        duration: Duration(seconds: 1),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.35
            : MediaQuery.of(context).size.width * 0.35,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.35
            : MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.transparent,
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage('AP.jpg'),
              alignment: Alignment.center,
              fit: BoxFit.cover),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: new TextStyle(color: Colors.orange),
      ),
      Text(
        "Amadi Promise",
        textScaleFactor: 5,
        style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "A Mobile App Developer, Flutter Specialist.\n"
        "I am also an Assistant Senior Editor at Okay Nigeria (Okay.ng)",
        softWrap: true,
        textScaleFactor: 1.5,
        style: new TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            shape: StadiumBorder(),
            child: new Text("Resume"),
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20.0,
          ),
          OutlineButton(
            onPressed: () {},
            borderSide: BorderSide(color: Colors.red),
            shape: StadiumBorder(),
            child: new Text("Say Hi!"),
            padding: EdgeInsets.all(10),
          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          APDot(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: <Widget>[
                NavButton(text: "about", onPressed: () {}),
                NavButton(text: "work", onPressed: () {}),
                NavButton(text: "contact", onPressed: () {}),
              ],
            )
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(color: color),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class APDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Text(
          "AP",
          textScaleFactor: 2,
          style: new TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
        )
      ],
    );
  }
}
