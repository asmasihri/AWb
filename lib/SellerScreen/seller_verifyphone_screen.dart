import 'package:awb247/SellerScreen/seller_register_screen.dart';
import 'package:awb247/SellerScreen/seller_registerinfo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SellerVerifyPhoneScreen extends StatefulWidget {
  static const String id = 'seller_verifyphone_screen';
  const SellerVerifyPhoneScreen({Key? key}) : super(key: key);

  @override
  _SellerVerifyPhoneScreenState createState() =>
      _SellerVerifyPhoneScreenState();
}

class _SellerVerifyPhoneScreenState extends State<SellerVerifyPhoneScreen> {
  @override
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
                Navigator.pushNamed(context, SellerRegisterScreen.id);
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Verify Phone Number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF262626),
                    ),
                  ),
                  Image(
                    image: AssetImage('images/SellerVerifyPhone.png'),
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    'Enter your phone number to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF262626),
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                      padding: const EdgeInsets.only(left: 16),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.numberWithOptions(),
                        decoration: InputDecoration(
                          hintText: '000000',
                          hintStyle: TextStyle(
                            color: Color(0xff888888),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Didn’t recieve a code? ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0XFF262626),
                      fontSize: 14,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Resend SMS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0XFF262626),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                                Navigator.pushNamed(
                                    context, SellerRegiterInfoScreen.id);
                              });
                            },
                            minWidth: MediaQuery.of(context).size.width * 0.5,
                            height: 42.0,
                            child: Text(
                              'Verify Number',
                              style: TextStyle(
                                color: Color(0XFF060DD9),
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
              Column(
                children: [
                  Text(
                    'By continuing you’re indicating that you accept our Terms of Use and our Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF888888),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
