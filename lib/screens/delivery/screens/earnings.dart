import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quick_serve_rider/config/constants.dart';

class EarnnigsPage extends StatefulWidget {
  const EarnnigsPage({Key? key}) : super(key: key);

  @override
  _EarnnigsPageState createState() => _EarnnigsPageState();
}

class _EarnnigsPageState extends State<EarnnigsPage> {
  final TextEditingController _etSearch = TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
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
            Column(
              children: const [],
            )
          ],
        ),
      ),
    );
  }
}
