import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class add extends StatelessWidget {
  const add({super.key});

  @override
  Widget build(BuildContext context) {

    final String image=Platform.isAndroid? 'http://10.0.2.2:8000/api/20240430234004.jpg'
        : 'http://localhost:8000/api/20240430234004.jpg';
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Column(
        children: [
          Center(
            child:Image.network("http://yeti-steady-starling.ngrok-free.app/api/20240514130819.jpg")
          )
        ],
      ),
    );
  }
}
