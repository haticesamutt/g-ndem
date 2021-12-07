import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class KayitolPage extends StatefulWidget {
  const KayitolPage({ Key? key }) : super(key: key);

  @override
  _KayitolPageState createState() => _KayitolPageState();
}

class _KayitolPageState extends State<KayitolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KAYIT OL",style:TextStyle(fontSize: 30.0)),),
      body: Kayitol_Page(),
    );
  }
}
class Kayitol_Page extends StatelessWidget {
  const Kayitol_Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,children:[Center
    (child:Column(children: <Widget>[
    CupertinoTextFormFieldRow(
      textInputAction: TextInputAction.next,
      autofocus: true,
      keyboardType: TextInputType.name,
      style:TextStyle(fontSize: 25.0),
  prefix: const Text('İsim Soyisim:',style:TextStyle(fontSize: 25.0)),
  
  onSaved: (String? value) {
    
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
    
     ),
     CupertinoTextFormFieldRow(
       maxLength: 30,
       textInputAction: TextInputAction.next,
       keyboardType: TextInputType.emailAddress,
       style:TextStyle(fontSize: 25.0),
       placeholder: 'email',
  prefix: const Text('Email:',style:TextStyle(fontSize: 25.0)),
  
  onSaved: (String? value) {
    
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
     ),
     CupertinoTextFormFieldRow(
       maxLength: 13,
       textInputAction: TextInputAction.next,
       style:TextStyle(fontSize: 25.0),
  prefix: const Text('Kullanıcı Adı:',style:TextStyle(fontSize: 25.0)),
  
  onSaved: (String? value) {
    
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
     ), 
     CupertinoTextFormFieldRow( 
       maxLength: 6,
       keyboardType: TextInputType.number,
      style:TextStyle(fontSize: 25.0),
      prefix: const Text('Şifre:',style:TextStyle(fontSize: 25.0)),
  
  onSaved: (String? value) {
    
  },
  validator: (String? value) {
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
  },
     ),
     ElevatedButton(onPressed:null,child: Text("Kayıt Ol",style:TextStyle(fontSize: 25.0)),)
     ],) ,)
    ]
      
    );
  }
}