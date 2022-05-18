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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
            child: Row(
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: buildTab(context)),
          ),
        ],
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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 7),
                child: SizedBox(
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
              ),
              const Divider(
                height: 10,
                thickness: 8,
                color: liteGreen,
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
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              const Divider(
                                height: 10,
                                thickness: 8,
                                color: liteGreen,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 6),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Divider(
                                  height: 7,
                                  thickness: 0.2,
                                  color: grey,
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Divider(
                                  height: 7,
                                  thickness: 0.2,
                                  color: grey,
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Divider(
                                  height: 7,
                                  thickness: 0.2,
                                  color: grey,
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              const Divider(
                                height: 10,
                                thickness: 8,
                                color: liteGreen,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // second tab bar viiew widget
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.52,
                          child: ListView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              const Divider(
                                height: 10,
                                thickness: 8,
                                color: liteGreen,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 6),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Divider(
                                  height: 7,
                                  thickness: 0.2,
                                  color: grey,
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Divider(
                                  height: 7,
                                  thickness: 0.2,
                                  color: grey,
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Divider(
                                  height: 7,
                                  thickness: 0.2,
                                  color: grey,
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                              const Divider(
                                height: 10,
                                thickness: 8,
                                color: liteGreen,
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              scheduleCard('XX-XX-XXXX, XX:XX'),
                            ],
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

  Widget scheduleCard(
    String date,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              date,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            const Icon(
              Icons.edit,
              color: primaryColor,
            )
          ],
        ),
      ),
    );
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
