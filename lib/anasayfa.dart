import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AnasayfaPage extends StatefulWidget {
  const AnasayfaPage({ Key? key }) : super(key: key);

  @override
  _AnasayfaPageState createState() => _AnasayfaPageState();
}

class _AnasayfaPageState extends State<AnasayfaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ANASAYFA",style: TextStyle(fontSize: 30.0),)),
      body: Anasayfa(),
    );
    
  }
}
class Anasayfa extends StatelessWidget {
  const Anasayfa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
