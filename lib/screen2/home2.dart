import 'package:exam1/custom_widgets/build_card.dart';
import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

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
            icon: ImageIcon(AssetImage("assests/screen2/icon2.png"),
                color: Color(0xff667085)),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assests/screen2/icon3.png"),
                color: Color(0xff667085)),
            label: ""),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assests/screen1/profile.png"),
                color: Color(0xff667085)),
            label: "")
      ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Row(
            children: [
              Image(
                image: AssetImage(
                  'assests/screen2/profile_picture.png',
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, Jade',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Ready to workout?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ],
              ),
              Spacer(),
              ImageIcon(
                AssetImage("assests/screen2/bell.png"),
                size: 24,
                color: Color(0xff101828),
              ),
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          Container(
            height: 82,
            width: 326,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 230, 231, 233),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 14,
                          color: Color(0xff717BBC),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Heart Rate'),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('81 BPM')
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Color.fromARGB(255, 156, 154, 154),
                  indent: 15,
                  endIndent: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.list,
                          size: 18,
                          color: Color(0xff717BBC),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('To-do'),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '32.5%',
                    )
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Color.fromARGB(255, 156, 154, 154),
                  indent: 15,
                  endIndent: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assests/screen2/vector.png"),
                          size: 24,
                          color: Color(0xff717BBC),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Calo'),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('1000 cal')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Workouts Program',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(height: 16),
          const DefaultTabController(
            length: 4,
            child: Center(
              child: TabBar(
                indicatorColor: Color(0xff363F72),
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      'All Type',
                      style: TextStyle(color: Color(0xff667085)),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Full Body',
                      style: TextStyle(color: Color(0xff667085)),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Upper',
                      style: TextStyle(color: Color(0xff667085)),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Lower',
                      style: TextStyle(color: Color(0xff667085)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              children: const [
                BuildCard(
                    days: '7 days',
                    image: 'assests/screen2/card_banner.png',
                    icon: 'assests/screen2/clock.png',
                    title: 'Morning Yoga',
                    subTitle: 'improve mental focus',
                    time: '30 mins'),
                SizedBox(
                  height: 12,
                ),
                BuildCard(
                    days: '3 days',
                    image: 'assests/screen2/card2_banner.png',
                    icon: 'assests/screen2/clock.png',
                    title: 'Plank Exercise',
                    subTitle: 'Improve posture and stability.',
                    time: '30 mins'),
                SizedBox(
                  height: 12,
                ),
                BuildCard(
                    days: '3 days',
                    image: 'assests/screen2/card_banner.png',
                    icon: 'assests/screen2/clock.png',
                    title: 'Plank Exercise',
                    subTitle: 'Improve posture and stability.',
                    time: '30 mins'),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
