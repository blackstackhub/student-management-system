import 'package:flutter/material.dart';

Widget header(dw, leading, title, ontap, read) {
  return InkWell(
    child: Container(
      width: dw / 2.5,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Text(leading),
          ),
          Positioned(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Icon(read),
          ),
        ],
      ),
    ),
    onTap: () {
      ontap;
    },
  );
}
