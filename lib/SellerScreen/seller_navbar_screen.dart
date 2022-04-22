import 'package:awb247/SellerScreen/SellerPages/seller_inbox_page.dart';
import 'package:awb247/SellerScreen/SellerPages/seller_manageorders_page.dart';
import 'package:awb247/SellerScreen/SellerPages/seller_profil_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class SellerNavBarScreen extends StatefulWidget {
  static const String id = 'seller_navbar_screen';
  const SellerNavBarScreen({Key? key}) : super(key: key);

  @override
  _SellerNavBarScreenState createState() => _SellerNavBarScreenState();
}

class _SellerNavBarScreenState extends State<SellerNavBarScreen> {
  int _selectedInex = 0;
  var pages = [
    Container(),
    SellerInboxPage(),
    SellerManageOrdersPage(),
    SellerProfilPage(),
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
        cornerRadius: _selectedInex == 0 || _selectedInex == 3 ? 0 : 40,
        height: 50,
        elevation: 2,

        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.chat_outlined),
          TabItem(icon: Icons.assignment),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: _selectedInex, //optional, default as 0
        onTap: (index) => setState(() => _selectedInex = index),
      ),
    );
  }
}
