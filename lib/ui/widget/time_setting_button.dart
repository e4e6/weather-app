import 'package:flutter/material.dart';
import '../../data/test/initial_data.dart';

class TimeSettingButton extends StatefulWidget {
  TimeSettingButton({required this.updateDataTimeSettingButton, super.key});

  final Function(
      {required int year,
      required int month,
      required int day,
      required int hour,
      required int min}) updateDataTimeSettingButton;

  @override
  State<TimeSettingButton> createState() => _TimeSettingButtonState();
}

class _TimeSettingButtonState extends State<TimeSettingButton> {
  int yearInput = InitialData().year;
  int monthInput = InitialData().month;
  int dayInput = InitialData().day;
  int hourInput = InitialData().hour;
  int minInput = InitialData().minute;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (BuildContext context) {
            return StatefulBuilder(builder: (context, setStateIn) {
              return AlertDialog(
                insetPadding: const EdgeInsets.fromLTRB(0, 80, 0, 80),
                content: SizedBox(
                  height: 400,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Container(
                            width: 80,
                            height: 30,
                            child: TextField(
                              controller:
                                  TextEditingController(text: '$yearInput'),
                              onChanged: (yearInputStr) {
                                yearInput = int.parse(yearInputStr);
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                            height: 20,
                          ),
                          const Text(
                            "년",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                        height: 40,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 30,
                                child: TextField(
                                  controller: TextEditingController(
                                      text: '$monthInput'),
                                  onChanged: (monthInputStr) {
                                    monthInput = int.parse(monthInputStr);
                                    if (monthInput > 12) {
                                      monthInput = 12;
                                    }
                                    if (monthInput < 1) {
                                      monthInput = 1;
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                                width: 10,
                              ),
                              const Text(
                                "월",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 30,
                                child: TextField(
                                  controller:
                                      TextEditingController(text: '$dayInput'),
                                  onChanged: (dayInputStr) {
                                    dayInput = int.parse(dayInputStr);
                                    if (dayInput > 31) {
                                      dayInput = 31;
                                    }
                                    if (dayInput < 1) {
                                      dayInput = 1;
                                    }
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              const Text(
                                "일",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey)),
                                  onPressed: () {
                                    setStateIn(() {
                                      if (hourInput < 24) {
                                        hourInput++;
                                      }
                                    });
                                  },
                                  child: const Icon(Icons.arrow_drop_up)),
                              Container(
                                height: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${hourInput}",
                                    style: const TextStyle(fontSize: 40),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey)),
                                  onPressed: () {
                                    setStateIn(() {
                                      if (hourInput > 0) {
                                        hourInput--;
                                      }
                                    });
                                  },
                                  child: const Icon(Icons.arrow_drop_down)),
                            ],
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey)),
                                  onPressed: () {
                                    setStateIn(() {
                                      if (minInput < 60) {
                                        minInput++;
                                      }
                                    });
                                  },
                                  child: const Icon(Icons.arrow_drop_up)),
                              Container(
                                  height: 80,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "$minInput",
                                      style: const TextStyle(fontSize: 40),
                                    ),
                                  )),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey)),
                                  onPressed: () {
                                    setStateIn(() {
                                      if (minInput > 0) {
                                        minInput--;
                                      }
                                    });
                                  },
                                  child: const Icon(Icons.arrow_drop_down)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 50,
                        child: TextButton(
                            onPressed: () {
                              widget.updateDataTimeSettingButton(
                                  year: yearInput,
                                  month: monthInput,
                                  day: dayInput,
                                  hour: hourInput,
                                  min: minInput);
                              Navigator.of(context).pop();
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.grey),
                            ),
                            child: const Text("확인",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20))),
                      ),
                    ],
                  )
                ],
              );
            });
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[350],
        ),
        child: const Icon(
          Icons.manage_history_outlined,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}
