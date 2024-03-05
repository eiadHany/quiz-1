import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class Home3 extends StatelessWidget {
  const Home3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xff6941C6),
          unselectedItemColor: const Color(0xff667085),
          onTap: (value) {},
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assests/screen3/calendar.png"),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assests/screen3/grid.png"),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assests/screen3/message.png"),
                ),
                label: ""),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          left: 35,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assests/screen3/logo.png')),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Articles, Video, Audio and More,...',
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              DefaultTabController(
                length: 4,
                child: ButtonsTabBar(
                  backgroundColor: const Color(0xffD6BBFB),
                  buttonMargin: const EdgeInsets.symmetric(horizontal: 8),
                  radius: 32,
                  contentPadding: const EdgeInsets.all(16),
                  unselectedBackgroundColor: const Color(0xffE4E7EC),
                  unselectedLabelStyle:
                      const TextStyle(color: Color(0xff667085)),
                  labelStyle: const TextStyle(
                      color: Color(0xff6941C6), fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      text: "Discover",
                    ),
                    Tab(
                      text: "News",
                    ),
                    Tab(
                      text: "Most Viewed",
                    ),
                    Tab(
                      text: "Saved",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  const Text(
                    'Hot topics',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'See all',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: Icon(Icons.arrow_right),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  padding: const EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    BuildCard(),
                    SizedBox(
                      width: 12,
                    ),
                    BuildCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Get Tips',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xffE4E7EC),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset('assests/screen3/doctor.png'),
                        Column(
                          children: [
                            const SizedBox(
                              height: 35,
                            ),
                            const Text(
                              'Connect with doctors & \n get suggestions',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                                'Connect now and get \n expert insights '),
                            const SizedBox(
                              height: 16,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color?>(
                                          const Color(0xff7F56D9)),
                                ),
                                onPressed: () {},
                                child: const Text('View detail'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  const Text(
                    'Cycle Phases and Period',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'See all',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: Icon(Icons.arrow_right),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildCard extends StatelessWidget {
  const BuildCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset('assests/screen3/banner.png'),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 23,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xffFEF0C7),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Text(
                      'Self-care',
                      style: TextStyle(
                        color: Color(0xff93370D),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  ' 10 Easy Self-Care Ideas That Can \n help Boost Your Health',
                  style: TextStyle(fontSize: 16, color: Color(0xffFCFCFD)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
