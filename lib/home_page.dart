import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart';
import 'package:template_project/pages/item_page.dart';

class HomePage extends StatelessWidget{
  final List<Item> items = [
    Item(
    Judul : 'Keajaiban Toko Kelontong Namiya',
    imageUrl : 'https://cdn.gramedia.com/uploads/items/9786020648293_Keajaiban_Toko_Kelontong_Namiya_cov.jpg'
  ),
  
  Item(
    Judul: 'Laut Bercerita',
   imageUrl: 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//106/MTA-43199665/gramedia_pustaka_utama_laut_bercerita_full01_qutx1upu.jpg',
   ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 8,
          mainAxisExtent: 250
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/nextpage', arguments :item );
              },
              child: Hero(
                tag: item.Judul, child: Card(
                child: Column(
                  children: [
                    Expanded(child: Image.memory(item.imageUrl as Uint8List,
                    fit: BoxFit.cover,
                    ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.Judul, style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),

                      ],
                    ),),
                     TextButton ( 
                     style : TextButton.styleFrom (
                      backgroundColor : Color(0x0000FF),),
                      onPressed: () {},
                     child: Text(
                      'Detail', 
                      style : TextStyle(
                       color : Colors.white,
                      )
                    ))
                  ],
                ),
              )),
            );

          },
          ),
          
    bottomNavigationBar: Container(
      padding: EdgeInsets.all(16),
      child: Text(' Dibuat oleh : Dea Cipta Ningrum - versi : 1.0'),
    ),
    );

  }
}
