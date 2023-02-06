import 'package:flutter/material.dart';
import 'package:techxes_task/dummy.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  bool chip1 = false;
  bool chip2 = false;
  bool chip3 = false;
  bool chip4 = false;

  bool intchip1 = false;
  bool intchip2 = false;
  bool intchip3 = false;
  bool intchip4 = false;

  SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            widget.chip1 = false;
            widget.chip2 = false;
            widget.chip3 = false;
            widget.chip4 = false;

            widget.intchip1 = false;
            widget.intchip2 = false;
            widget.intchip3 = false;
            widget.intchip4 = false;
          });
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Title',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(
                  height: mediaquery.height * 0.02,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: const Text(
                    '9 surprising things about how we make our design projects',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaquery.height * 0.026,
                ),
                Container(
                  height: mediaquery.height * 0.2,
                  width: mediaquery.width * 0.9,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://img.freepik.com/free-vector/log-bridge-mountains-cliff-rock-peaks-landscape-with-waterfall-trees-background-beautiful-scenery-nature-view-beam-bridgework-connect-rocky-edges-cartoon-vector-illustration_107791-4568.jpg?w=1060&t=st=1675498206~exp=1675498806~hmac=a4bccd99386aaeb06e8fa407a7fd7077ea104193b9d0bd431d1e7356874fac68'))),
                ),
                SizedBox(
                  height: mediaquery.height * 0.026,
                ),
                const Text(
                  'Interviewer',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(
                  height: mediaquery.height * 0.01,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Wrap(
                    spacing: 30,
                    children: <Widget>[
                      if (widget.intchip1 == false)
                        Chip(
                          label: Text(
                            Dummy_Data[0].name!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          avatar: CircleAvatar(
                            backgroundImage:
                                NetworkImage(Dummy_Data[0].imgUrl!),
                          ),
                          onDeleted: () {
                            setState(() {
                              widget.intchip1 = true;
                            });
                          },
                          deleteIconColor: Colors.grey[600],
                        ),
                      if (widget.intchip2 == false)
                        Chip(
                          label: Text(
                            Dummy_Data[1].name!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          avatar: CircleAvatar(
                            backgroundImage:
                                NetworkImage(Dummy_Data[1].imgUrl!),
                          ),
                          onDeleted: () {
                            setState(() {
                              widget.intchip2 = true;
                            });
                          },
                          deleteIconColor: Colors.grey[600],
                        ),
                      if (widget.intchip3 == false)
                        Chip(
                          label: Text(
                            Dummy_Data[2].name!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          avatar: CircleAvatar(
                            backgroundImage:
                                NetworkImage(Dummy_Data[2].imgUrl!),
                          ),
                          onDeleted: () {
                            setState(() {
                              widget.intchip3 = true;
                            });
                          },
                          deleteIconColor: Colors.grey[600],
                        ),
                      if (widget.intchip4 == false)
                        Chip(
                          label: Text(
                            Dummy_Data[3].name!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          avatar: CircleAvatar(
                            backgroundImage:
                                NetworkImage(Dummy_Data[3].imgUrl!),
                          ),
                          onDeleted: () {
                            setState(() {
                              widget.intchip4 = true;
                            });
                          },
                          deleteIconColor: Colors.grey[600],
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaquery.height * 0.025,
                ),
                const Text(
                  'Timer',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(
                  height: mediaquery.height * 0.015,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  //   width: mediaquery.width*1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 2,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  NetworkImage(Dummy_Data[0].imgUrl!),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 2,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  NetworkImage(Dummy_Data[1].imgUrl!),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 2,
                              color: Colors.purple,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  NetworkImage(Dummy_Data[2].imgUrl!),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 2,
                              color: Colors.pink,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage:
                                  NetworkImage(Dummy_Data[3].imgUrl!),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaquery.height * 0.025,
                ),
                const Text(
                  'Tags',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(
                  height: mediaquery.height * 0.01,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Wrap(
                    spacing: 30,
                    children: <Widget>[
                      if (widget.chip1 == false)
                        Chip(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          label: Text(
                            Dummy_Data[0].tag!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          onDeleted: () {
                            setState(() {
                              widget.chip1 = true;
                            });
                          },
                          deleteIconColor: Colors.grey[600],
                        ),
                      if (widget.chip2 == false)
                        Chip(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          label: Text(
                            Dummy_Data[1].tag!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          deleteIconColor: Colors.grey[600],
                          onDeleted: () {
                            setState(() {
                              widget.chip2 = true;
                            });
                          },
                        ),
                      if (widget.chip3 == false)
                        Chip(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          label: Text(
                            Dummy_Data[2].tag!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          onDeleted: () {
                            setState(() {
                              widget.chip3 = true;
                            });
                          },
                          deleteIconColor: Colors.grey[600],
                        ),
                      if (widget.chip4 == false)
                        Chip(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          label: Text(
                            // chipname[0],
                            Dummy_Data[3].tag!,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.grey),
                          ),
                          onDeleted: () {
                            setState(() {
                              widget.chip4 = true;
                            });
                          },
                          deleteIconColor: Colors.grey[600],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget chiplog(Function chipchanger) {
  return Chip(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5))),
    label: Text(
      Dummy_Data[3].tag!,
      style: const TextStyle(fontSize: 10, color: Colors.grey),
    ),
    onDeleted: () {
      chipchanger;
    },
    deleteIconColor: Colors.grey[600],
  );
}
