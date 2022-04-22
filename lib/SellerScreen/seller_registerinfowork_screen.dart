import 'package:awb247/SellerScreen/seller_navbar_screen.dart';
import 'package:flutter/material.dart';

class SellerRegiterInfoWorkScreen extends StatefulWidget {
  static const String id = 'seller_registerinfowork_screen';
  const SellerRegiterInfoWorkScreen({Key? key}) : super(key: key);

  @override
  _SellerRegiterInfoWorkScreenState createState() =>
      _SellerRegiterInfoWorkScreenState();
}

class _SellerRegiterInfoWorkScreenState
    extends State<SellerRegiterInfoWorkScreen> {
  @override
  bool isHidenPassword = true;
  String? value;
  final works = [
    'Taxi',
    'Cabs',
    'Bikes',
    'Buses',
    'Haulage',
    'Home teachers',
    'House help',
    'Nanny\'s',
    'Cloth washers',
    'Car mechanics',
    'Generator',
    'Vulcanizer',
    'House Electrician',
    'Car Electrician'
  ];

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
              Text(
                'Complet your Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF262626),
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
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Title',
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
                    keyboardType: TextInputType.name,
                    minLines: 6,
                    maxLines: 8,
                    decoration: InputDecoration(
                      hintText: 'Describe your work;delivery time and more...',
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
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Price',
                      hintStyle: TextStyle(
                        color: Color(0xff888888),
                      ),
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
                            Navigator.pushNamed(context, SellerNavBarScreen.id);
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
