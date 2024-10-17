import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';



class DetailScreen extends StatelessWidget 
  const DetailScreen({
    super.key,
    required this.candi,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Stack(
            children: <Widget> [
              
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8,0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),)
          ],),
          Text(data: candi.name),
          Text(data: candi.description),
        ],
      ),
    );
  }
}
 