import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:techxes_task/dummy.dart';
import 'package:techxes_task/second_screen.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            coverpPic(context),
            SizedBox(
              height: mediaQuery.height * 0.02,
            ),
            profilename(context),
            SizedBox(
              height: mediaQuery.height * 0.04,
            ),
            follwers(),
            SizedBox(
              height: mediaQuery.height * 0.01,
            ),
            DefaultTabController(
                initialIndex: 0, length: 3, child: tabbar(context)),
            SizedBox(
              height: mediaQuery.height * 0.005,
            ),
            latest(),
            const Divider(
              color: Color.fromARGB(32, 0, 0, 0),
              height: 10,
              thickness: 5.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: mediaQuery.height * 0.045,
                  width: mediaQuery.width * 0.96,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(32, 0, 0, 0),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Center(
                    child: Text(
                      'Whats new with you?',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.height * 0.005,
            ),
            Center(
              // ignore: sized_box_for_whitespace
              child: Container(
                width: mediaQuery.width * 0.96,
                child: const Divider(
                  thickness: 2,
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Dummy_Data.length,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    horizontalTitleGap: 6,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(Dummy_Data[index].imgUrl!),
                      radius: 19,
                    ),
                    title: Text(
                      Dummy_Data[index].name!,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          ' ${Dummy_Data[index].activeStatus!}  -',
                          style:
                              const TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Text(
                          Dummy_Data[index].budjet!,
                          style:
                              const TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.more_horiz_outlined,
                      size: 22,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: mediaQuery.width * 0.04),
                    child: Text(
                      Dummy_Data[index].content!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 11),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    Dummy_Data[index].mainImg!,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          child: Container(
                            height: mediaQuery.height * 0.05,
                            color: Colors.black54,
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  LikeButton(
                                    size: 28,
                                  ),
                                  Icon(
                                    Icons.shortcut,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget coverpPic(BuildContext context) {
  var mediaQuery = MediaQuery.of(context).size;
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Column(
        children: [
          Container(
            height: mediaQuery.height * 0.25,
            width: mediaQuery.width * 1,
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.5]),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://img.freepik.com/premium-photo/bee-phone-3d-illustration_183364-7554.jpg?w=996',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  height: mediaQuery.height * 0.20,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Badge(
                          badgeContent: const Text(
                            '10',
                            style: TextStyle(fontSize: 8),
                          ),
                          badgeStyle: BadgeStyle(
                              badgeColor: Colors.red,
                              borderRadius: BorderRadius.circular(1)),
                          child: const Icon(
                            Icons.notifications_none_outlined,
                            size: 26,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: mediaQuery.width * 0.35,
                        ),
                        const Text(
                          '@jose',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: mediaQuery.width * 0.28,
                        ),
                        const Icon(
                          Icons.more_horiz_outlined,
                          color: Colors.white,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      Positioned(
          top: mediaQuery.height * 0.37 - 120,
          right: mediaQuery.width * 0.06,
          child: Container(
            height: 100,
            width: 100,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                  'https://img.freepik.com/free-psd/3d-illustration-person-with-rainbow-sunglasses_23-2149436196.jpg?w=740&t=st=1675404613~exp=1675405213~hmac=afaa78dcd51dca52df6ccc5e95eea0664600b69c7fea45f8867395de645cf3ad',
                )),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(width: 3, color: Colors.white)),
          )),
    ],
  );
}

Widget profilename(BuildContext context) {
  var mediaQuery = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.only(left: mediaQuery.width * 0.06),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Benjamin Devilliers',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: const [
            Text(
              'online  ',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 4,
            )
          ],
        )
      ],
    ),
  );
}

Widget follwers() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: const [
          Text(
            '\$270.5k',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            'Spending',
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
      Column(
        children: const [
          Text(
            '2M',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            'Transactions',
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
      Column(
        children: const [
          Text(
            '18.9k',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            'Followers',
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
      Column(
        children: const [
          Text(
            '19k',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            'Following',
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      )
    ],
  );
}

Widget tabbar(BuildContext context) {
  var mediaQuery = MediaQuery.of(context).size;
  return TabBar(
      padding: EdgeInsets.only(left: mediaQuery.width * 0.05),
      isScrollable: true,
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      labelPadding: EdgeInsets.zero,
      indicatorWeight: 3,
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.black,
      tabs: [
        const Text(
          'Publications',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 15,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => SecondScreen())));
          },
          child: const Tab(
            child: Text(
              'Addresses',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]);
}

Widget latest() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: const BorderRadius.all(Radius.circular(2))),
        child: const Chip(
            label: Text(
          'Latest',
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        )),
      ),
      const Text(
        'Spend',
        style: TextStyle(
            fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      const Text(
        'Track',
        style: TextStyle(
            fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      const Text(
        'Marketplace',
        style: TextStyle(
            fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey),
      )
    ],
  );
}
