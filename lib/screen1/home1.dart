import 'package:exam1/custom_widgets/card1.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home1 extends StatelessWidget {
  Home1({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(onTap: (value) {}, items: const [
        BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assests/screen1/home.png"),
                    color: Color(0xff027A48)),
                Icon(
                  Icons.stop,
                  color: Color(0xff027A48),
                  size: 8,
                ),
              ],
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assests/screen1/grid.png"),
                color: Color(0xff667085)),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assests/screen1/calender.png"),
                color: Color(0xff667085)),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assests/screen1/profile.png"),
                color: Color(0xff667085)),
            label: "")
      ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const Row(
                children: [
                  Image(
                    image: AssetImage('assests/screen1/logo.png'),
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Moody',
                    style: TextStyle(fontSize: 24),
                  ),
                  Spacer(),
                  badges.Badge(
                    child: ImageIcon(
                      AssetImage("assests/screen2/bell.png"),
                      size: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ' Sara Rose',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'How Are You Feeling Today ?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingIcons(
                      imagePath: 'assests/screen1/love.png', text: 'love'),
                  FeelingIcons(
                      imagePath: 'assests/screen1/cool.png', text: 'cool'),
                  FeelingIcons(
                      imagePath: 'assests/screen1/happy.png', text: 'happy'),
                  FeelingIcons(
                      imagePath: 'assests/screen1/sad.png', text: 'sad'),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Text(
                    'Feature',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Text('See more',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff027A48))),
                  ),
                  const Icon(Icons.arrow_right_outlined)
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Card1(
                          title: 'Positive vibes',
                          subTitle: 'Boost your mood with positive vibes',
                          icon: 'assests/screen1/play.png',
                          time: '10 Mins',
                          image: 'assests/screen1/banner.png');
                    }),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    dotWidth: 6,
                    dotHeight: 6,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Text(
                    'Excercise',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Text('See more',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff027A48))),
                  ),
                  const Icon(Icons.arrow_right_outlined)
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Excersise(
                  imagePath1: 'assests/screen1/relaxation.png',
                  imagePath2: 'assests/screen1/meditation.png'),
              const Excersise(
                imagePath1: 'assests/screen1/breathing.png',
                imagePath2: 'assests/screen1/yoga.png',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Excersise extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;
  const Excersise({
    super.key,
    required this.imagePath1,
    required this.imagePath2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Image(
            width: 151,
            image: AssetImage(imagePath1),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Image(
            width: 151,
            image: AssetImage(
              imagePath2,
            ),
          ),
        ),
      ],
    );
  }
}

class FeelingIcons extends StatelessWidget {
  final String imagePath;
  final String text;

  const FeelingIcons({
    required this.imagePath,
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(imagePath),
          width: 60,
          height: 60,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(text),
      ],
    );
  }
}
