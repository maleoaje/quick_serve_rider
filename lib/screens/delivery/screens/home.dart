import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quick_serve_rider/config/constants.dart';

class HomePageRider extends StatefulWidget {
  const HomePageRider({Key? key}) : super(key: key);

  @override
  _HomePageRiderState createState() => _HomePageRiderState();
}

class _HomePageRiderState extends State<HomePageRider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDark,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: primaryDark,
          elevation: 0,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 16, 25, 16),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: white,
                    ),
                    child: const Center(
                      child: Icon(
                        LineIcons.bell,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: white,
                    ),
                    child: const Center(
                      child: Icon(
                        LineIcons.comment,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                right: 0,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: white,
                      ),
                      child: const Center(
                        child: Icon(
                          LineIcons.alternateShield,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: white,
                        ),
                        child: const Center(
                          child: Text(
                            'HELP',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                                fontSize: 16),
                          ),
                        ))
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
