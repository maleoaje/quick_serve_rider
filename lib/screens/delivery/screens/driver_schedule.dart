import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:quick_serve_rider/config/constants.dart';

class DriverSchedulePage extends StatefulWidget {
  const DriverSchedulePage({Key? key}) : super(key: key);

  @override
  _DriverSchedulePageState createState() => _DriverSchedulePageState();
}

class _DriverSchedulePageState extends State<DriverSchedulePage> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          actions: const [
            Icon(
              Icons.settings,
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              LineIcons.questionCircle,
              size: 28,
            ),
            SizedBox(
              width: 18,
            ),
          ],
          backgroundColor: primaryColor,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Schedule',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 0;
                    });
                  },
                  child: dateContainer(
                      'Sun',
                      '1',
                      select == 0 ? Colors.white : Colors.black,
                      select == 0 ? Colors.red : Colors.white),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 1;
                    });
                  },
                  child: dateContainer(
                      'Mon',
                      '2',
                      select == 1 ? Colors.white : Colors.black,
                      select == 1 ? Colors.red : Colors.white),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 2;
                    });
                  },
                  child: dateContainer(
                      'Tue',
                      '3',
                      select == 2 ? Colors.white : Colors.black,
                      select == 2 ? Colors.red : Colors.white),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 3;
                    });
                  },
                  child: dateContainer(
                      'Wed',
                      '4',
                      select == 3 ? Colors.white : Colors.black,
                      select == 3 ? Colors.red : Colors.white),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 4;
                    });
                  },
                  child: dateContainer(
                      'Thu',
                      '5',
                      select == 4 ? Colors.white : Colors.black,
                      select == 4 ? Colors.red : Colors.white),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 5;
                    });
                  },
                  child: dateContainer(
                      'Fri',
                      '6',
                      select == 5 ? Colors.white : Colors.black,
                      select == 5 ? Colors.red : Colors.white),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 6;
                    });
                  },
                  child: dateContainer(
                      'Sat',
                      '7',
                      select == 6 ? Colors.white : Colors.black,
                      select == 6 ? Colors.red : Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: buildTab(context)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTab(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 50,
                child: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  bottom: TabBar(
                    indicator: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    labelColor: white,
                    unselectedLabelColor: primaryColor,
                    indicatorColor: primaryColor,
                    tabs: const <Widget>[
                      Tab(
                        text: 'Avaliable',
                      ),
                      Tab(text: "Scheduled"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.52,
                          child: ListView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            children: const [Text('available')],
                          ),
                        ),
                      ],
                    ),

                    // second tab bar viiew widget
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.51,
                          child: ListView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            children: const [Text('scheduled')],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget dateContainer(
      String day, String date, Color textColor, Color containerColor) {
    return Column(
      children: [
        Text(
          day,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: containerColor, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              date,
              style: TextStyle(fontWeight: FontWeight.w400, color: textColor),
            ),
          ),
        ),
      ],
    );
  }
}
