import 'package:flutter/material.dart';

void Navigationito(context,Widget widget)=> Navigator.push(context,MaterialPageRoute(builder: (context)=>widget));
void Navigationito_pop(context,Widget widget)=> Navigator.pop(context,MaterialPageRoute(builder: (context)=>widget));