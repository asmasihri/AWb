import 'package:awb247/CustomerScreens/customer_navbar_screen.dart';
import 'package:flutter/material.dart';

class CustomerRegiterInfoScreen extends StatefulWidget {
  static const String id = 'customer_registerinfo_screen';
  const CustomerRegiterInfoScreen({Key? key}) : super(key: key);

  @override
  _CustomerRegiterInfoScreenState createState() =>
      _CustomerRegiterInfoScreenState();
}

class _CustomerRegiterInfoScreenState extends State<CustomerRegiterInfoScreen> {
  @override
  bool isHidenPassword = true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3FF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0XFFFFFFFF),
                child: ClipRRect(
                  child: Image(
                    image: AssetImage('images/profildefault.png'),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Color(0xff888888),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
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
                      hintText: 'Confirm Password',
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
                                context, CustomerNavBarScreen.id);
                          });
                        },
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: 42.0,
                        child: Text(
                          'Register',
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
