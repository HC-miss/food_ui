import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Map cat;
  const CategoryItem({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 6;

    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          children: [
            Image.asset(
              cat["img"],
              fit: BoxFit.cover,
              height: height,
              width: height,
            ),
            Container(
              height: height,
              width: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.7],
                  colors: [
                    cat["color1"],
                    cat["color2"],
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: height,
                width: height,
                constraints: const BoxConstraints(
                  minHeight: 20.0,
                  minWidth: 20.0,
                ),
                child: Center(
                  child: Text(
                    cat["name"],
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
