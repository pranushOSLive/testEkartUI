import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.payment_outlined,
                size: 26,
              )),
          const Text(
            "Pay using\ncredit card",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const VerticalDivider(
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                size: 26,
              )),
          const Text(
            "Easy\nreturns",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
