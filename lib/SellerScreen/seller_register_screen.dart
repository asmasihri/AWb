import 'package:awb247/SellerScreen/seller_login_screen.dart';
import 'package:awb247/SellerScreen/seller_verifyphone_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SellerRegisterScreen extends StatefulWidget {
  static const String id = 'seller_register_screen';
  const SellerRegisterScreen({Key? key}) : super(key: key);

  @override
  _SellerRegisterScreenState createState() => _SellerRegisterScreenState();
}

class _SellerRegisterScreenState extends State<SellerRegisterScreen> {
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
                Navigator.pushNamed(context, SellerLoginScreen.id);
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
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.9,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Seller Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF262626),
                ),
              ),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 40,
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
                                context, SellerVerifyPhoneScreen.id);
                          });
                        },
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: 42.0,
                        child: Text(
                          'Continue',
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
        ),
      ),
    );
  }
}
