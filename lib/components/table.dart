import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:flutter/material.dart';

class TableTest extends StatefulWidget {
  const TableTest({super.key});

  @override
  _TableTestState createState() => _TableTestState();
}

class _TableTestState extends State<TableTest> {
  static const int sortName = 0;
  static const int sortStatus = 1;
  bool isAscending = true;
  int sortType = sortName;

  @override
  void initState() {
    user.initData(100);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _getBodyWidget();
  }

  Widget _getBodyWidget() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 120,
        rightHandSideColumnWidth: 600,
        isFixedHeader: true,
        headerWidgets: _getTitleWidget(),
        leftSideItemBuilder: _generateFirstColumnRow,
        rightSideItemBuilder: _generateRightHandSideColumnRow,
        itemCount: user.userInfo.length,
        rowSeparatorWidget: const Divider(
          color: Colors.black54,
          height: 1.0,
          thickness: 0.0,
        ),
        leftHandSideColBackgroundColor: const Color(0xFFFFFFFF),
        rightHandSideColBackgroundColor: const Color(0xFFFFFFFF),
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      TextButton(
        // padding: EdgeInsets.all(0),
        child: _getTitleItemWidget(
            'ID${sortType == sortName ? (isAscending ? '  ↓' : '  ↑') : ''}',
            120,
            Colors.blue),
        onPressed: () {
          sortType = sortName;
          isAscending = !isAscending;
          user.sortName(isAscending);
          setState(() {});
        },
      ),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
      _getTitleItemWidget('ATTENDABLE', 100, Colors.blue),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
      TextButton(
        // padding: EdgeInsets.all(0),
        child: _getTitleItemWidget(
            'Agent${sortType == sortStatus ? (isAscending ? '↓' : '↑') : ''}',
            100,
            Colors.blue),
        onPressed: () {
          sortType = sortStatus;
          isAscending = !isAscending;
          user.sortStatus(isAscending);
          setState(() {});
        },
      ),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
      _getTitleItemWidget('ORDER STATE', 100, Colors.blue),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
      _getTitleItemWidget('ADDRESS', 200, Colors.blue),
      TextButton(
        // padding: EdgeInsets.all(0),
        child: _getTitleItemWidget(
            '	NUMBER OF ATTENDEES${sortType == sortName ? (isAscending ? '  ↓' : '  ↑') : ''}',
            120,
            Colors.blue),
        onPressed: () {
          sortType = sortName;
          isAscending = !isAscending;
          user.sortName(isAscending);
          setState(() {});
        },
      ),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
      _getTitleItemWidget('PAYMENT', 100, Colors.blue),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
      TextButton(
        // padding: EdgeInsets.all(0),
        child: _getTitleItemWidget(
            'DATE OF REG..${sortType == sortStatus ? (isAscending ? '↓' : '↑') : ''}',
            100,
            Colors.blue),
        onPressed: () {
          sortType = sortStatus;
          isAscending = !isAscending;
          user.sortStatus(isAscending);
          setState(() {});
        },
      ),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
      _getTitleItemWidget('ACTION', 100, Colors.blue),
      Container(
        width: 2,
        height: 56,
        color: Colors.white,
      ),
    ];
  }

  Widget _getTitleItemWidget(String label, double width, color) {
    return Container(
      color: color,
      width: width,
      height: 56,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(label,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      color: Colors.blueGrey,
      width: 120,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(
        user.userInfo[index].name,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            user.userInfo[index].rollNo,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          width: 2,
          height: 56,
          color: Colors.blueGrey,
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              Icon(user.userInfo[index].status ? Icons.clear : Icons.check,
                  color:
                      user.userInfo[index].status ? Colors.red : Colors.green),
              Text(
                user.userInfo[index].status ? 'absent' : 'present',
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
        Container(
          width: 2,
          height: 56,
          color: Colors.blueGrey,
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            user.userInfo[index].startTime,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          width: 2,
          height: 56,
          color: Colors.blueGrey,
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: Text(
            user.userInfo[index].endTime,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}

Student user = Student();

class Student {
  List<StudentInfo> _userInfo = <StudentInfo>[];

  void initData(int size) {
    for (int i = 0; i < size; i++) {
      _userInfo.add(
          StudentInfo("$i", i % 3 == 0, 'St_No $i', '10:00 AM', '12:30 PM'));
    }
  }

  List<StudentInfo> get userInfo => _userInfo;

  set userInfo(List<StudentInfo> value) {
    _userInfo = value;
  }

  ///
  /// Single sort, sort Name's id
  void sortName(bool isAscending) {
    _userInfo.sort((a, b) {
      int? aId = int.tryParse(a.name.replaceFirst('Student_', ''));
      int? bId = int.tryParse(b.name.replaceFirst('Student_', ''));
      return (aId! - bId!) * (isAscending ? 1 : -1);
    });
  }

  ///
  /// sort with Status and Name as the 2nd Sort
  void sortStatus(bool isAscending) {
    _userInfo.sort((a, b) {
      if (a.status == b.status) {
        int? aId = int.tryParse(a.name.replaceFirst('User_', ''));
        int? bId = int.tryParse(b.name.replaceFirst('User_', ''));
        return (aId! - bId!);
      } else if (a.status) {
        return isAscending ? 1 : -1;
      } else {
        return isAscending ? -1 : 1;
      }
    });
  }
}

class StudentInfo {
  String name;
  bool status;
  String rollNo;
  String startTime;
  String endTime;

  StudentInfo(
      this.name, this.status, this.rollNo, this.startTime, this.endTime);
}
