import 'package:awb247/CustomerScreens/CustomerPages/customer_inbox_page.dart';
import 'package:awb247/CustomerScreens/customer_chat_screen.dart';
import 'package:awb247/CustomerScreens/customer_createorder_screen.dart';
import 'package:awb247/CustomerScreens/customer_workdescription_screen.dart';
import 'package:flutter/material.dart';
import 'CustomerPages/customer_works_page.dart';

class Workcategory {
  AssetImage imageSeller;
  String nameSeller;
  String title;

  String descrp;

  Workcategory(this.imageSeller, this.nameSeller, this.title, this.descrp);
}

class CustomerWorkCategoryScreen extends StatefulWidget {
  const CustomerWorkCategoryScreen({Key? key}) : super(key: key);
  static const String id = 'customer_workcategory_screen';

  @override
  State<CustomerWorkCategoryScreen> createState() =>
      _CustomerWorkCategoryScreenState();
}

class _CustomerWorkCategoryScreenState
    extends State<CustomerWorkCategoryScreen> {
  List<Workcategory> workcategorylist = [
    Workcategory(AssetImage('images/image2.jpeg'), 'Voka Skill',
        'Mathematic ’s teacher', 'I have an advanced degee in ...'),
    Workcategory(AssetImage('images/image3.jpg'), 'Mohammed Abidar',
        'Mathematic ’s teacher', 'I have an advanced degee in ...'),
    Workcategory(AssetImage('images/image4.jpg'), 'Mouad Bimezgan',
        'Mathematic ’s teacher', 'I have an advanced degee in ...'),
    Workcategory(AssetImage('images/image1.jpg'), 'Said Ajrrar',
        'Mathematic ’s teacher', 'I have an advanced degee in ...'),
    Workcategory(AssetImage('images/image2.jpeg'), 'Voka Skill',
        'Mathematic ’s teacher', 'I have an advanced degee in ...'),
    Workcategory(AssetImage('images/image3.jpg'), 'Mohammed Abidar',
        'Mathematic ’s teacher', 'I have an advanced degee in ...'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        title: Center(
          child: Text(
            workcategory,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0XFF060DD9),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Color(0XFF262626),
        ),
        actions: [
          Icon(Icons.ac_unit, color: Color(0XFFFFFFFF).withOpacity(0)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0XFFF3F3FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.all(2),
                itemCount: workcategorylist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0XFFFFFFFF),
                              child: ClipRRect(
                                child: Image(
                                  image: workcategorylist[index].imageSeller,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  workcategorylist[index].nameSeller,
                                  style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  workcategorylist[index].title,
                                  style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  workcategorylist[index].descrp,
                                  style: TextStyle(
                                      color: Color(0XFF262626),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  Navigator.pushNamed(context,
                                      CustomerWorkDescriptionScreen.id);
                                });
                              },
                              child: Text(
                                'More',
                                style: TextStyle(
                                  color: Color(0XFF262626),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          height: 30,
                          child: Row(
                            children: [
                              Expanded(
                                child: Material(
                                  elevation: 5.0,
                                  shadowColor:
                                      Color(0XFF060DD9).withOpacity(0.25),
                                  color: Color(0XFFF3F3FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    side: BorderSide(
                                      color:
                                          Color(0XFF060DD9).withOpacity(0.25),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.pushNamed(
                                            context, CustomerChatScreen.id);
                                        nameSellerTap =
                                            workcategorylist[index].nameSeller;
                                      });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.chat_outlined,
                                            color: Color(0XFF060DD9)),
                                        Text(
                                          'Chat   ',
                                          style: TextStyle(
                                            color: Color(0XFF060DD9),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Material(
                                  elevation: 5.0,
                                  shadowColor:
                                      Color(0XFF060DD9).withOpacity(0.25),
                                  color: Color(0XFFF3F3FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    side: BorderSide(
                                      color:
                                          Color(0XFF060DD9).withOpacity(0.25),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.assignment,
                                            color: Color(0XFF060DD9)),
                                        Text(
                                          'Request ',
                                          style: TextStyle(
                                            color: Color(0XFF060DD9),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
