import 'package:flutter/material.dart';
import 'package:food_ui/util/restaurants.dart';
import 'package:food_ui/widgets/search_card.dart';
import 'package:food_ui/widgets/trending_item.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Trending Restaurants"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SearchCard(),
              const SizedBox(height: 10.0),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: restaurants.length,
                itemBuilder: (context, index) {
                  Map restaurant = restaurants[index];
                  return TrendingItem(
                    img: restaurant["img"],
                    title: restaurant["title"],
                    address: restaurant["address"],
                    rating: restaurant["rating"],
                  );
                },
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
