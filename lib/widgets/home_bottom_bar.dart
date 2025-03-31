import 'package:coffee_menu/profile_page.dart';
import 'package:flutter/material.dart';
import 'favorites_screen.dart'; // Import the FavoritesScreen

class HomeBottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final List<String> favoriteCoffees; // List of favorite coffees

  const HomeBottomBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
    required this.favoriteCoffees, // Add this parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF212325),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: selectedIndex == 0 ? Color(0xFFE57734) : Colors.white,
              size: 35,
            ),
            onPressed: () => onItemTapped(0),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_outline,
              color: selectedIndex == 1 ? Color(0xFFE57734) : Colors.white,
              size: 35,
            ),
            onPressed: () {
              // Navigate to Favorites Screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) =>
                          FavoritesScreen(favoriteCoffees: favoriteCoffees),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: selectedIndex == 2 ? Color(0xFFE57734) : Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
