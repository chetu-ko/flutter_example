import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatedTabsScreen extends StatefulWidget {
  const DatedTabsScreen({Key? key}) : super(key: key);

  @override
  DatedTabsScreenState createState() => DatedTabsScreenState();
}

class DatedTabsScreenState extends State<DatedTabsScreen> with SingleTickerProviderStateMixin {
  DateTime selectedDate = DateTime.now();
  late List<Widget> myTabs;
  List<Widget> tabView = [];
  List<DateTime> tabDate = [];
  late TabController tabController;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2015, 1), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  TabController getTabController() {
    return TabController(length: 0, vsync: this);
  }

  @override
  void initState() {
    tabController = getTabController();
    super.initState();
  }

  Widget getWidget(DateTime widgetNumber) {
    return Center(
      child: Text("Date: $widgetNumber"),
    );
  }

  List<Widget> getWidgets() {
    tabView.clear();

    tabView = List.generate(tabDate.length, (index) {
      return getWidget(tabDate[index]);
    });

    tabDate.clear();
    return tabView;
  }

  @override
  Widget build(BuildContext context) {
    final myTabs = List.generate(7, (index) {
      var now = selectedDate;
      var date = DateTime(now.year, now.month, now.day + index);
      var day = DateFormat('d').format(date);
      var week = DateFormat('EEEE').format(date);
      var weekname = week.substring(0, 3);
      var month = DateFormat('MMMM').format(date).substring(0, 3);
      tabDate.add(date);

      return Column(
        children: [
          Text(weekname),
          Text(
            '$day $month',
            style: const TextStyle(fontSize: 10),
          ),
        ],
      );
    });
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: myTabs,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.date_range),
              onPressed: () => _selectDate(context),
            )
          ],
          title: const Text("Dated Tabs"),
        ),
        body: TabBarView(
          children: getWidgets(),
        ),
      ),
    );
  }
}
