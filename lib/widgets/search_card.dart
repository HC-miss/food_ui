import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  SearchCard({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: TextField(
          controller: _searchController,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            hintText: 'Search..',
            hintStyle: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
            ),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            suffixIcon: Icon(Icons.filter_list, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
