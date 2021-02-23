import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Luncher extends StatefulWidget {
  @override
  _LuncherState createState() => _LuncherState();
}

class _LuncherState extends State<Luncher> {

  void showEmail()  {
    _luanch('mailto:atk721@icloud.com');
  }

  void showUrl() {
    _luanch('https://github.com/atsuki-sakai/FlutterAnimation/blob/master/lib/Animation/animated_widget.dart');
  }

  void showTell() {
    _luanch('tel:090-9282-6180');
  }

  void showSms() {
    _luanch('sms:090-9282-6180');
  }
  
  void _luanch(String urlString) async{
    if(await canLaunch(urlString)){
      await launch(urlString);
    }else {
      throw Exception('Error: Could not found.');
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              showUrl();
            }, child: Text('URL')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              showEmail();
            }, child: Text('Email')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              showSms();
            }, child: Text('SMS')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              showTell();
            }, child: Text('Tell')),
          ),

        ],
      ),
    );
  }
}
