import 'package:awb247/CustomerScreens/customer_workcategory_screen.dart';
import 'package:flutter/material.dart';

String workcategory = '';

class CustomerWorksPage extends StatefulWidget {
  const CustomerWorksPage({Key? key}) : super(key: key);

  @override
  _CustomerWorksPageState createState() => _CustomerWorksPageState();
}

class _CustomerWorksPageState extends State<CustomerWorksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
        elevation: 0,
        leading: Icon(
          Icons.ac_unit,
          color: Color(0XFFFFFFFF).withOpacity(0),
        ),
        title: Center(
          child: Text(
            'Works & Services',
            style: TextStyle(
              color: Color(0XFF060DD9),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(0XFF262626),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0XFFF3F3FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    WorksCardWidget('Book Taxi & Transports'),
                    WorksCardWidget('Book Taxi & Transports'),
                    WorksCardWidget('Book Taxi & Transports'),
                    WorksCardWidget('Book Taxi & Transports'),
                    WorksCardWidget('Book Taxi & Transports'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WorksCardWidget extends StatefulWidget {
  String Cardtitle;

  WorksCardWidget(@required this.Cardtitle);

  @override
  State<WorksCardWidget> createState() => _WorksCardWidgetState();
}

class _WorksCardWidgetState extends State<WorksCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                widget.Cardtitle,
                style: TextStyle(
                    color: Color(0XFF262626),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.20,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardworkbook.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      workcategory = cardworkbook[index].worktitle;
                      Navigator.pushNamed(
                          context, CustomerWorkCategoryScreen.id);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Image(
                            image: cardworkbook[index].workimage,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            cardworkbook[index].worktitle,
                            style: TextStyle(
                              color: Color(0XFF262626),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

class CardWork {
  AssetImage workimage;
  String worktitle;
  CardWork(this.worktitle, this.workimage);
}

List<CardWork> cardworkbook = [
  CardWork('Book Taxi', AssetImage('images/Booktaxi.png')),
  CardWork('Book Trucks', AssetImage('images/Booktrucks.png')),
  CardWork('Book Taxi', AssetImage('images/Booktaxi.png')),
  CardWork('Book Trucks', AssetImage('images/Booktrucks.png')),
  CardWork('Book Taxi', AssetImage('images/Booktaxi.png')),
  CardWork('Book Trucks', AssetImage('images/Booktrucks.png')),
  CardWork('Book Taxi', AssetImage('images/Booktaxi.png')),
  CardWork('Book Taxi', AssetImage('images/Booktaxi.png')),
];
