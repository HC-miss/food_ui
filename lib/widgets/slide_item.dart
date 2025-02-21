import 'package:flutter/material.dart';
import 'package:food_ui/util/const.dart';

class SlideItem extends StatefulWidget {
  final String img;
  final String title;
  final String address;
  final String rating;

  const SlideItem({
    super.key,
    required this.img,
    required this.title,
    required this.address,
    required this.rating,
  });

  @override
  State<SlideItem> createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      width: MediaQuery.of(context).size.width / 1.2,
      child: Card(
        elevation: 3.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.7,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    child: Image.asset(
                      widget.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 6.0,
                  right: 6.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          Icon(Icons.star, size: 10, color: Constants.ratingBG),
                          Text(
                            widget.rating,
                            style: const TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 6.0,
                  left: 6.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        " OPEN ",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7.0),
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              width: double.infinity,
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 7.0),
            Container(
              padding: const EdgeInsets.only(left: 15.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  widget.address,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
