import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'account_circle' : Icons.account_circle,
  'contacts' : Icons.contacts,
  'add' : Icons.add,
  'info' : Icons.info
};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color: Colors.blue);
}