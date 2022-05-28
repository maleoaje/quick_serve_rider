import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quick_serve_rider/config/constants.dart';
import 'package:quick_serve_rider/screens/delivery/screens/earning_view.dart';

class EarnnigsPage extends StatefulWidget {
  const EarnnigsPage({Key? key}) : super(key: key);

  @override
  _EarnnigsPageState createState() => _EarnnigsPageState();
}

class _EarnnigsPageState extends State<EarnnigsPage> {
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
          title: const Text(
            'Earnings',
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
                    'This week',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '0m',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            'Active Time',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '0m',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            'Dash Time',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            '₦0.00',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Balance',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                    'Past weeks',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Month',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
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
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Month',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
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
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildWeekCard(String date, String price) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const EarningView()));
      },
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
