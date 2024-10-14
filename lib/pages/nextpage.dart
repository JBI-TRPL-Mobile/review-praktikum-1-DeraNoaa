import 'package:flutter/material.dart';
import 'package:template_project/models/next.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Item.Judul),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(tag: Item.Judul, child: Image.network(Item.imageUrl),
          ),

          SizedBox(height: 20),
          Text(
            'Judul :${Next.Judul}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Penulis : ${Next.Penulis}',
            style : TextStyle(fontSize: 18).
          ),

           SizedBox(height: 10),
          Text(
            'Deskripsi : ${Next.Deskripsi}',
            style : TextStyle(fontSize: 18).
          ),
        ],
      ),)
  
        ),
        );
        }
}