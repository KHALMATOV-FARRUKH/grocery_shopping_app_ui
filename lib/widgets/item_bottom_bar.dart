import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomBar extends StatelessWidget {
  const ItemBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFF7CA0F),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                CupertinoIcons.cart_fill,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 60,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFF7CA0F),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
