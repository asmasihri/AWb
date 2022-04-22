import 'package:flutter/material.dart';
import 'package:awb247/CustomerScreens/customer_createorder_screen.dart';

class CustomerWorkDescriptionScreen extends StatefulWidget {
  const CustomerWorkDescriptionScreen({Key? key}) : super(key: key);
  static const String id = 'customer_workdescription_screen';

  @override
  State<CustomerWorkDescriptionScreen> createState() =>
      _CustomerWorkDescriptionScreenState();
}

class _CustomerWorkDescriptionScreenState
    extends State<CustomerWorkDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Color(0XFF262626),
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                  decoration: BoxDecoration(
                    color: Color(0XFFF3F3FF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Said Mamadou',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFF060DD9),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Color(0XFFFFFFFF),
                        thickness: 1.0,
                      ),
                      Text(
                        'Mathematic ’s teacher',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      Divider(
                        color: Color(0XFFFFFFFF),
                        thickness: 1.0,
                      ),
                      Text(
                        'I have an extensive mathematical knowledge. He has taken several courses in algebra, geometry, statistics, calculus and other fields of mathematics at the college level and, perhaps even at the level of higher education I cares about my students. i understands when a student is having a bad day or needing encouragement and problem solving to help the student focus on the material.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0XFF262626),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Divider(
                        color: Color(0XFFFFFFFF),
                        thickness: 1.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Price: ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color(0XFF262626),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '5\$ for 1 hour',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0XFF262626),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0XFFFFFFFF),
                        thickness: 1.0,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 25),
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
                                    color: Color(0XFF060DD9).withOpacity(0.25),
                                    width: 1.0,
                                  ),
                                ),
                                child: MaterialButton(
                                  onPressed: () {},
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
                                    color: Color(0XFF060DD9).withOpacity(0.25),
                                    width: 1.0,
                                  ),
                                ),
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pushNamed(context,
                                          CustomerCreateOrederScreen.id);
                                    });
                                  },
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 80) / 2,
            top: 0,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0XFFFFFFFF),
              child: CircleAvatar(
                radius: 36,
                backgroundColor: Color(0XFFFFFFFF),
                child: ClipRRect(
                  child: Image(
                    image: AssetImage('images/image2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
