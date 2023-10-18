import 'package:flutter/material.dart';
import 'package:recipe_id/models/resep_models.dart';

class ResepCard extends StatelessWidget {
  final ResepMakanan resep;

  ResepCard(this.resep);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              resep.gambar, // URL gambar
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(resep.nama),
              subtitle: Text('Bahan: ${resep.bahan.join(", ")}'),
            ),
          ],
        ),
      ),
    );
  }
}
