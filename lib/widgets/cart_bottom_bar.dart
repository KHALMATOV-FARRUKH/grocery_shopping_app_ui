// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F9FD),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.card_membership_outlined,
                  color: Color(0xFFFF8608),
                ),
                SizedBox(width: 5),
                Text(
                  "Use promo coupons",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 25,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "\$100",
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF8608),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "OrderPage");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF8608),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Check Out",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
