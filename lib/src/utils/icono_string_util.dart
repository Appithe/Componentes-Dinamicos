import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'account_circle' : Icons.account_circle,
  'contacts' : Icons.contacts
};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color: Colors.blue);
}