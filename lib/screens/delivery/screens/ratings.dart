import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quick_serve_rider/config/constants.dart';

class RatingsPage extends StatefulWidget {
  const RatingsPage({Key? key}) : super(key: key);

  @override
  _RatingsPageState createState() => _RatingsPageState();
}

class _RatingsPageState extends State<RatingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          actions: const [
            Icon(
              LineIcons.questionCircle,
              color: primaryColor,
              size: 28,
            ),
            SizedBox(
              width: 18,
            ),
          ],
          backgroundColor: white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Ratings',
            style: TextStyle(fontWeight: FontWeight.w400, color: primaryColor),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            color: liteGrey,
            child: const Text(
              'General',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
          _buildRatingsCard('0.0', 'Customer Rating',
              "Based on last 100 delivery ratings", Colors.green),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(
              height: 7,
              thickness: 0.4,
              color: grey,
            ),
          ),
          _buildRatingsCard(
              '0.0%',
              'Acceptance Rate',
              "Based on last 100 delivery opportunities",
              const Color.fromARGB(255, 151, 91, 1)),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(
              height: 7,
              thickness: 0.4,
              color: grey,
            ),
          ),
          _buildRatingsCard(
              '0.0%',
              'On time or early',
              "Based on last 100 deliveries completed",
              const Color.fromARGB(255, 85, 84, 84)),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(
              height: 7,
              thickness: 0.4,
              color: grey,
            ),
          ),
          _buildRatingsCard(
              '0.0%',
              'Completion Rate',
              "Based on last 100 deliveries completed",
              const Color.fromARGB(255, 85, 84, 84)),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Divider(
              height: 7,
              thickness: 0.4,
              color: grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '0',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Lifetime Deliveries',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Every delivery you've complete",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 34, 34, 34),
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingsCard(
      String value, String title, String description, Color color) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 26, color: color, fontWeight: FontWeight.w600),
              ),
              Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                description,
                textAlign: TextAlign.left,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 34, 34, 34),
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          const Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 30,
          )
        ],
      ),
    );
  }
}
