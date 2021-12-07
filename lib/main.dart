import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staj_calisma/anasayfa.dart';
import 'package:staj_calisma/kayit_ol.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GÜNDEM',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home:  GirisEkrani(),
    );
  }
}
class GirisEkrani extends StatelessWidget {
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("GİRİŞ YAP",style: TextStyle(fontSize: 25.0),),
       ),
       body:kaydolEkran(),
    );
  }
}
class kaydolEkran extends StatefulWidget {
  const kaydolEkran({ Key? key }) : super(key: key);

  @override
  _kaydolEkranState createState() => _kaydolEkranState();
}

class _kaydolEkranState extends State<kaydolEkran> {


  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,children:[Center(
        child: Column(children: <Widget>[
        CupertinoTextFormFieldRow( 
          maxLength: 13,
          textInputAction: TextInputAction.next,
          autofocus: true,
          style:TextStyle(fontSize: 25.0),
  prefix: const Text('Kullanıcı Adı:',style:TextStyle(fontSize: 25.0),),
  
  onSaved: (String? value) {
    
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
  
),CupertinoTextFormFieldRow(
  maxLength: 6,
  keyboardType: TextInputType.number,
  style:TextStyle(fontSize: 25.0,),
  prefix: const Text('Şifre:',style:TextStyle(fontSize: 25.0)),
  onSaved: (String? value) {
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
),
   ElevatedButton(onPressed:(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>AnasayfaPage()));
   },child: Text("giriş yap",style:TextStyle(fontSize: 25.0)),),
   ElevatedButton(onPressed: (){
     Navigator.push(context, MaterialPageRoute(builder: (context )=>KayitolPage()));
   }, child: Text("kayıt ol",style:TextStyle(fontSize: 25.0)),),
        ],),
      ),]
       
      
    );
  }
}




 

  
