import 'package:awb247/CustomerScreens/customer_login_screen.dart';
import 'package:awb247/SellerScreen/seller_login_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF3F3FF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/WelcomePicture.png'),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  elevation: 5.0,
                  shadowColor: Color(0XFF060DD9).withOpacity(0.25),
                  color: Color(0XFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    side: BorderSide(color: Color(0XFF060DD9), width: 2),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, CustomerLoginScreen.id);
                      });
                    },
                    minWidth: MediaQuery.of(context).size.width * 0.6,
                    height: 42.0,
                    child: Text(
                      'Customer',
                      style: TextStyle(
                        color: Color(0XFF060DD9),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  elevation: 5.0,
                  shadowColor: Color(0XFF060DD9).withOpacity(0.25),
                  color: Color(0XFF060DD9),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, SellerLoginScreen.id);
                      });
                    },
                    minWidth: MediaQuery.of(context).size.width * 0.6,
                    height: 42.0,
                    child: Text(
                      'Seller',
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
