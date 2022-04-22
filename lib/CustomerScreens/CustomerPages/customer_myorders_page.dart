import 'package:flutter/material.dart';
import 'package:toggle_bar/toggle_bar.dart';
import 'CustomerMyOrdersList/Customer_myallorders_list.dart';
import 'CustomerMyOrdersList/Customer_myinprogressorders_list.dart';
import 'CustomerMyOrdersList/Customer_mycompletedorders_list.dart';

class CustomerMyOrdersPage extends StatefulWidget {
  const CustomerMyOrdersPage({Key? key}) : super(key: key);

  @override
  _CustomerMyOrdersPageState createState() => _CustomerMyOrdersPageState();
}

class _CustomerMyOrdersPageState extends State<CustomerMyOrdersPage> {
  int counter = 0;
  var orderslist = [
    MyAllOrdersList(),
    MyInprogressOrdersList(),
    MyCompletedOrdersList(),
  ];

  List<String> labels = [
    'All',
    'In progress',
    'Completed',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
        elevation: 0,
        leading: Icon(
          Icons.ac_unit,
          color: Color(0XFFFFFFFF).withOpacity(0),
        ),
        title: Center(
          child: Text(
            'My Orders',
            style: TextStyle(
              color: Color(0XFF060DD9),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.ac_unit,
            color: Color(0XFFFFFFFF).withOpacity(0),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                color: Color(0XFFF3F3FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ToggleBar(
                    labels: labels,
                    labelTextStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    textColor: Color(0XFF262626),
                    selectedTextColor: Color(0XFF262626),
                    backgroundColor: Color(0XFFFFFFFF),
                    selectedTabColor: Color(0XFF3C206E).withOpacity(0.25),
                    onSelectionUpdated: (index) {
                      setState(() {
                        counter = index;
                      });
                    },
                  ),
                  orderslist[counter],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
