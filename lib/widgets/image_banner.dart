import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _path;

  ImageBanner(this._path);

  @override
  // put images in a widget/container so you can edit padding, etc
  Widget build(BuildContext context){
    return Container(
      constraints: BoxConstraints.expand(height: 200.0),
      // add a bkgd colour, in case the image fails to load
      decoration: BoxDecoration(color: Colors.grey), 
      child: Image.asset(
        _path, 
        fit: BoxFit.cover)
    );
  }
}