import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<String> favoriteCoffees;

  FavoritesScreen({required this.favoriteCoffees});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        backgroundColor: Color(0xFF212325),
        foregroundColor: Colors.grey,
      ),
      body:
          favoriteCoffees.isEmpty
              ? Center(
                child: Text(
                  "No favorites added yet!",
                  style: TextStyle(color: Colors.white),
                ),
              )
              : ListView.builder(
                itemCount: favoriteCoffees.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      favoriteCoffees[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(Icons.favorite, color: Colors.red),
                  );
                },
              ),
      backgroundColor: Color(0xFF212325),
    );
  }
}
