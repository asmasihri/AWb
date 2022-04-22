import 'package:awb247/CustomerScreens/customer_chat_screen.dart';
import 'package:awb247/CustomerScreens/customer_createorder_screen.dart';
import 'package:awb247/CustomerScreens/customer_navbar_screen.dart';
import 'package:awb247/CustomerScreens/customer_login_screen.dart';
import 'package:awb247/CustomerScreens/customer_orderdetails_screen.dart';
import 'package:awb247/CustomerScreens/customer_register_screen.dart';
import 'package:awb247/CustomerScreens/customer_registerinfo_screen.dart';
import 'package:awb247/CustomerScreens/customer_verifyphone_screen.dart';
import 'package:awb247/CustomerScreens/customer_workcategory_screen.dart';
import 'package:awb247/CustomerScreens/customer_workdescription_screen.dart';
import 'package:awb247/SellerScreen/seller_accepteddetail_screen.dart';
import 'package:awb247/SellerScreen/seller_ordreddetail_screen.dart';
import 'package:awb247/SellerScreen/seller_chat_screen.dart';
import 'package:awb247/SellerScreen/seller_login_screen.dart';
import 'package:awb247/SellerScreen/seller_navbar_screen.dart';
import 'package:awb247/SellerScreen/seller_register_screen.dart';
import 'package:awb247/SellerScreen/seller_registerinfo_screen.dart';
import 'package:awb247/SellerScreen/seller_registerinfowork_screen.dart';
import 'package:awb247/SellerScreen/seller_verifyphone_screen.dart';
import 'package:awb247/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AWB247());
}

class AWB247 extends StatelessWidget {
  const AWB247({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        CustomerLoginScreen.id: (context) => CustomerLoginScreen(),
        CustomerRegisterScreen.id: (context) => CustomerRegisterScreen(),
        CustomerVerifyPhoneScreen.id: (context) => CustomerVerifyPhoneScreen(),
        CustomerRegiterInfoScreen.id: (context) => CustomerRegiterInfoScreen(),
        CustomerNavBarScreen.id: (context) => CustomerNavBarScreen(),
        CustomerChatScreen.id: (context) => CustomerChatScreen(),
        CustomerWorkCategoryScreen.id: (context) =>
            CustomerWorkCategoryScreen(),
        CustomerWorkDescriptionScreen.id: (context) =>
            CustomerWorkDescriptionScreen(),
        CustomerCreateOrederScreen.id: (context) =>
            CustomerCreateOrederScreen(),
        CustomerOrderDetailsScreen.id: (context) =>
            CustomerOrderDetailsScreen(),
        SellerLoginScreen.id: (context) => SellerLoginScreen(),
        SellerRegisterScreen.id: (context) => SellerRegisterScreen(),
        SellerVerifyPhoneScreen.id: (context) => SellerVerifyPhoneScreen(),
        SellerRegiterInfoScreen.id: (context) => SellerRegiterInfoScreen(),
        SellerRegiterInfoWorkScreen.id: (context) =>
            SellerRegiterInfoWorkScreen(),
        SellerNavBarScreen.id: (context) => SellerNavBarScreen(),
        SellerChatScreen.id: (context) => SellerChatScreen(),
        SellerOrdredDetailsScreen.id: (context) => SellerOrdredDetailsScreen(),
        SellerAcceptedDetailsScreen.id: (context) =>
            SellerAcceptedDetailsScreen(),
      },
    );
  }
}
