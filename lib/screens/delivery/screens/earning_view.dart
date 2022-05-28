import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quick_serve_rider/config/constants.dart';

class EarningView extends StatefulWidget {
  const EarningView({Key? key}) : super(key: key);

  @override
  _EarningViewState createState() => _EarningViewState();
}

class _EarningViewState extends State<EarningView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          actions: const [
            Icon(
              LineIcons.building,
              color: primaryColor,
            ),
            SizedBox(
              width: 12,
            ),
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
          leading: const Icon(
            Icons.keyboard_arrow_left,
            size: 30,
            color: primaryColor,
          ),
          title: const Text(
            'Date',
            style: TextStyle(fontWeight: FontWeight.w400, color: primaryColor),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '₦0.00',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'DoorDash Pay',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '₦00.00',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'DoorDash Pay',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '₦00.00',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Activee Time',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '0h 00m',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Dash Time',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '0h 00m',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Deliveries Count',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '0',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            height: 10,
            thickness: 8,
            color: liteGreen,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Deliveries',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                buildWeekCard('XXX 00 - XXX 00', "₦0.00"),
                Divider(
                  height: 7,
                  thickness: 0.2,
                  color: grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                buildWeekCard('XXX 00 - XXX 00', "₦0.00"),
                Divider(
                  height: 7,
                  thickness: 0.2,
                  color: grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                buildWeekCard('XXX 00 - XXX 00', "₦0.00"),
                Divider(
                  height: 7,
                  thickness: 0.2,
                  color: grey,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildWeekCard(String date, String price) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          ),
          Row(
            children: [
              Text(
                price,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const Icon(Icons.keyboard_arrow_right, size: 30)
            ],
          )
        ],
      ),
    );
  }
}
