import 'package:flutter/material.dart';
import 'package:wallpaperapp/model/wallpaper_model.dart';

Widget brandName(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Wallpaper",style: TextStyle(color:Colors.black87),),
      Text("Hub",style: TextStyle(color: Colors.blue),)
    ],
  );
}

Widget WallpapersList({List<WallpaperModel> wallpapers,context}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
        crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((e){
        return GridTile(
          child:Container(
            child: Image.network(e.src.portrait,fit: BoxFit.cover,),
          ) ,
        );
      }).toList(),
    ),
  );

}