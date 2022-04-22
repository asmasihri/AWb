import 'package:awb247/SellerScreen/SellerPages/SellerManageOrdersList/seller_acceptedorders_list.dart';
import 'package:awb247/SellerScreen/SellerPages/SellerManageOrdersList/seller_completedorders_list.dart';
import 'package:awb247/SellerScreen/SellerPages/SellerManageOrdersList/seller_ordredorders_list.dart';
import 'package:flutter/material.dart';
import 'package:toggle_bar/toggle_bar.dart';

class SellerManageOrdersPage extends StatefulWidget {
  const SellerManageOrdersPage({Key? key}) : super(key: key);

  @override
  _SellerManageOrdersPageState createState() => _SellerManageOrdersPageState();
}

class _SellerManageOrdersPageState extends State<SellerManageOrdersPage> {
  int counter = 0;
  var orderslist = [
    OrdredOrdersList(),
    AcceptedOrdersList(),
    CompletedOrdersList()
  ];

  List<String> labels = [
    'Ordred',
    'Accepted',
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
            'Manage Orders',
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
