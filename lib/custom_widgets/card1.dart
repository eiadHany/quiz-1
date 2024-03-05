import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  final String title;
  final String? days;
  final String? subTitle;
  final String icon;
  final String time;
  final String image;

  const Card1({
    super.key,
    required this.title,
    this.subTitle,
    required this.icon,
    required this.time,
    this.days,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 24, bottom: 32),
      width: 326,
      decoration: BoxDecoration(
        color: const Color(0xffECFDF3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                days ?? '',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(subTitle ?? '',
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  ImageIcon(AssetImage(icon)),
                  Text(time,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Image(
            image: AssetImage(image),
            width: 100,
          ),
        ],
      ),
    );
  }
}
