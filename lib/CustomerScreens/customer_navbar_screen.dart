import 'package:awb247/CustomerScreens/CustomerPages/customer_myorders_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'CustomerPages/customer_inbox_page.dart';
import 'CustomerPages/customer_myorders_page.dart';
import 'CustomerPages/customer_profil_page.dart';
import 'CustomerPages/customer_works_page.dart';

class CustomerNavBarScreen extends StatefulWidget {
  static const String id = 'customer_navbar_screen';
  const CustomerNavBarScreen({Key? key}) : super(key: key);

  @override
  _CustomerNavBarScreenState createState() => _CustomerNavBarScreenState();
}

class _CustomerNavBarScreenState extends State<CustomerNavBarScreen> {
  int _selectedInex = 0;
  var pages = [
    Container(),
    CustomerInboxPage(),
    CustomerWorksPage(),
    CustomerMyOrdersPage(),
    CustomerProfilPage(),
  ];

  var appbarpages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF3F3FF),
      body: pages[_selectedInex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.reactCircle,

        backgroundColor: Color(0XFFFFFFFF),
        color: Color(0XFF888888),
        activeColor: Color(0XFF060DD9),
        cornerRadius: _selectedInex == 0 || _selectedInex == 4 ? 0 : 40,
        height: 50,
        elevation: 2,

        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.chat_outlined),
          TabItem(icon: Icons.bubble_chart_sharp),
          TabItem(icon: Icons.assignment),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: _selectedInex, //optional, default as 0
        onTap: (index) => setState(() => _selectedInex = index),
      ),
    );
  }
}
