import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:intl/intl.dart';
import 'package:mospix/routes/schedules/add/model/time_model.dart';

class DialogBottomSheet extends StatefulWidget {
  const DialogBottomSheet({Key? key}) : super(key: key);

  @override
  _DialogBottomSheetState createState() => _DialogBottomSheetState();
}

class _DialogBottomSheetState extends State<DialogBottomSheet> {
  List<int> days = [];
  var _time = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => setState(() {
                    if (!days.contains(1)) {
                      days.add(1);
                    } else {
                      days.removeWhere((element) => element == 1);
                    }
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: days.contains(1),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              days.add(1);
                            } else {
                              days.removeWhere((element) => element == 1);
                            }
                          });
                        },
                      ),
                      const Text('Monday')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    if (!days.contains(2)) {
                      days.add(2);
                    } else {
                      days.removeWhere((element) => element == 2);
                    }
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: days.contains(2),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              days.add(2);
                            } else {
                              days.removeWhere((element) => element == 2);
                            }
                          });
                        },
                      ),
                      const Text('Tuesday')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    if (!days.contains(3)) {
                      days.add(3);
                    } else {
                      days.removeWhere((element) => element == 3);
                    }
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: days.contains(3),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              days.add(3);
                            } else {
                              days.removeWhere((element) => element == 3);
                            }
                          });
                        },
                      ),
                      const Text('Wednesday')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    if (!days.contains(4)) {
                      days.add(4);
                    } else {
                      days.removeWhere((element) => element == 4);
                    }
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: days.contains(4),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              days.add(4);
                            } else {
                              days.removeWhere((element) => element == 4);
                            }
                          });
                        },
                      ),
                      const Text('Thursday')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    if (!days.contains(5)) {
                      days.add(5);
                    } else {
                      days.removeWhere((element) => element == 5);
                    }
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: days.contains(5),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              days.add(5);
                            } else {
                              days.removeWhere((element) => element == 5);
                            }
                          });
                        },
                      ),
                      const Text('Friday')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    if (!days.contains(6)) {
                      days.add(6);
                    } else {
                      days.removeWhere((element) => element == 6);
                    }
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: days.contains(6),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              days.add(6);
                            } else {
                              days.removeWhere((element) => element == 6);
                            }
                          });
                        },
                      ),
                      const Text('Saturday')
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => setState(() {
                    if (!days.contains(7)) {
                      days.add(7);
                    } else {
                      days.removeWhere((element) => element == 7);
                    }
                  }),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: days.contains(7),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value!) {
                              days.add(7);
                            } else {
                              days.removeWhere((element) => element == 7);
                            }
                          });
                        },
                      ),
                      const Text('Sunday')
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
                child: Column(
              children: [
                TimePickerSpinner(
                  is24HourMode: true,
                  spacing: 50,
                  normalTextStyle:
                      const TextStyle(fontSize: 24, color: Colors.black38),
                  highlightedTextStyle:
                      const TextStyle(fontSize: 24, color: Colors.black),
                  isForce2Digits: true,
                  onTimeChange: (time) {
                    setState(() {
                      _time = DateFormat('HH:mm').format(time);
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    days.sort((a, b) => a.compareTo(b));
                    Navigator.pop(context, TimeModel(days: days, time: _time));
                  },
                  child: const Text('Add'),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
