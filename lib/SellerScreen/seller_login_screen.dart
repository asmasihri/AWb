import 'package:awb247/SellerScreen/seller_navbar_screen.dart';
import 'package:awb247/SellerScreen/seller_register_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:awb247/welcome_screen.dart';

class SellerLoginScreen extends StatefulWidget {
  static const String id = 'seller_login_screen';
  const SellerLoginScreen({Key? key}) : super(key: key);

  @override
  _SellerLoginScreenState createState() => _SellerLoginScreenState();
}

class _SellerLoginScreenState extends State<SellerLoginScreen> {
  @override
  bool isHidenPassword = true;
  bool isChiked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3FF),
      appBar: AppBar(
        backgroundColor: Color(0xffF3F3FF),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, WelcomeScreen.id);
              });
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff262626),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image(
                image: AssetImage('images/SellerLogin.png'),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.9,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Seller Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF262626),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                  border: Border.all(
                    width: 1,
                    color: Color(0xffA2A2A2),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: IntlPhoneField(
                    keyboardType: TextInputType.number,
                    iconPosition: IconPosition.trailing,
                    initialCountryCode: 'MA',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    decoration: InputDecoration(
                      hintText: 'Mobile number',
                      hintStyle: TextStyle(
                        color: Color(0xff888888),
                      ),
                      counterText: '',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                  border: Border.all(
                    width: 1,
                    color: Color(0xffA2A2A2),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextField(
                    obscureText: isHidenPassword,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xff888888),
                      ),
                      border: InputBorder.none,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: IconButton(
                          color: Color(0XFF262626),
                          onPressed: () {
                            setState(() {
                              isHidenPassword = !isHidenPassword;
                            });
                          },
                          icon: isHidenPassword
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isChiked = !isChiked;
                          });
                        },
                        color: Color(0XFF262626),
                        icon: isChiked
                            ? Icon(Icons.check_box_outlined)
                            : Icon(Icons.check_box_outline_blank),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          color: Color(0XFF262626),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0XFF262626),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                      elevation: 5.0,
                      shadowColor: Color(0XFF060DD9).withOpacity(0.25),
                      color: Color(0XFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(
                          color: Color(0XFF060DD9),
                          width: 2,
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, SellerNavBarScreen.id);
                          });
                        },
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: 35.0,
                        child: Text(
                          'Login',
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
                            Navigator.pushNamed(
                                context, SellerRegisterScreen.id);
                          });
                        },
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: 35.0,
                        child: Text(
                          'Register',
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
            ],
          ),
        ),
      ),
    );
  }
}
