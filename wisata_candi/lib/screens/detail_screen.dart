import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({
    super.key,
    required this.candi,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack( 
            children:[              
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton (
                    onPressed: () {}, 
                    icon: const Icon(Icons.favorite_border),
                    ), 
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16,),
                Row(),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Icon(Icons.place, color: Colors.red),
                    SizedBox(width: 8),
                    SizedBox(width: 78,
                      child: Text('Lokasi', style: TextStyle(
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(': ${candi.location}',),                
                ],),
                Row(
                  children: [
                    Icon(Icons.calendar_month, color: Colors.blue),
                    SizedBox(width: 8),
                    SizedBox(width: 78,
                      child: Text('Dibangun', style: TextStyle(
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(': ${candi.built}')
                ],),
                Row(
                  children: [
                    Icon(Icons.house, color: Colors.green),
                    SizedBox(width: 8),
                    SizedBox(width: 78,
                      child: Text('Tipe', style: TextStyle(
                        fontWeight: FontWeight.bold,),
                      ),
                    ),
                    Text(': ${candi.type}'),
                ],),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}
 