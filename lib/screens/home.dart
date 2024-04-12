import 'package:flutter/material.dart';
import 'package:food_ui/util/categories.dart';
import 'package:food_ui/util/friends.dart';
import 'package:food_ui/util/restaurants.dart';
import 'package:food_ui/widgets/category_item.dart';
import 'package:food_ui/widgets/search_card.dart';
import 'package:food_ui/widgets/slide_item.dart';

import 'categories.dart';
import 'trending.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
          child: Column(
            children: [
              _buildSearchBar(),
              const SizedBox(height: 20.0),
              _buildRestaurantRow('Trending Restaurants', context),
              const SizedBox(height: 10.0),
              _buildRestaurantList(context),
              const SizedBox(height: 10.0),
              _buildCategoryRow('Category', context),
              const SizedBox(height: 10.0),
              _buildCategoryList(context),
              const SizedBox(height: 10.0),
              _buildCategoryRow('Friends', context),
              const SizedBox(height: 10.0),
              _buildFriendsList(),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildFriendsList() {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: friends.length,
        itemBuilder: (context, index) {
          String img = friends[index];
          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 25.0,
            ),
          );
        },
      ),
    );
  }

  _buildRestaurantList(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.4,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          Map restaurant = restaurants[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SlideItem(
              img: restaurant["img"],
              title: restaurant["title"],
              address: restaurant["address"],
              rating: restaurant["rating"],
            ),
          );
        },
      ),
    );
  }

  _buildRestaurantRow(String restaurant, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          restaurant,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const Trending();
                },
              ),
            );
          },
          child: Text(
            "See all (43)",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        )
      ],
    );
  }

  _buildCategoryList(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          Map category = categories[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CategoryItem(
              cat: category,
            ),
          );
        },
      ),
    );
  }

  _buildCategoryRow(String category, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          category,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const Categories();
                },
              ),
            );
          },
          child: Text(
            "See all (9)",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        )
      ],
    );
  }

  _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: SearchCard(),
    );
  }
}
