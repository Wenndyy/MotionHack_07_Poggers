import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class StreamingPage extends StatefulWidget {
  final Map? todo;
  const StreamingPage({
    super.key,
    this.todo,
  });

  @override
  State<StreamingPage> createState() => _StreamingPage();
}

class _StreamingPage extends State<StreamingPage> {
  final String _buttonText = " Register \$5";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 2,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 445,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img_mobilelegend.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 276,
                    decoration: BoxDecoration(
                      color: blueColor.withOpacity(0.7),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    right: 21,
                    left: 21,
                    top: 50,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.navigate_before_rounded,
                              size: 30,
                              color: bgColor,
                            ),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Text(
                            'Streaming MLBB',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 150),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 2,
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      top: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: bgColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              color: Colors.white,
                              height: 215,
                              child: Center(
                                child: SizedBox(
                                    height: 210,
                                    width: 340,
                                    child: Image.asset(
                                        'assets/streaming_video.png')),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 80,
                                width: 80,
                                child: Image.asset('assets/RRQ_R7.png')),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'RRQ R7',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Known as a great Offlaner in Mobile\nLegends.Previously he was a Dota 2 pro\nplayer who had played with well-known\nteams such as The Prime and RRQ.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: grey2Color,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          'Live Chat',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/john.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'John',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'Hello Guys!!',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/kelly.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Kelly',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'What a nice movement',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/adam_melvin.jpg'),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Adam Melvin',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'joined',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: 'Add Comment',
                                            suffixIcon:
                                                Icon(Icons.insert_emoticon)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
