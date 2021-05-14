import 'package:flutter/material.dart';
import 'package:humming_sparrow_task/utils/colors.dart';
import 'package:humming_sparrow_task/widgets/my_drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            //? For making responsive
            width: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [for (int i = 1; i < 6; i++) buildTile(i)],
            ),
          ),
        ),
      ),
    );
  }

  Container buildTile(int i) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://picsum.photos/${i * 200}',
              width: 110,
              height: 110,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 260,
                height: 35,
                child: Text(
                    "This is a Title Aliquam facere accusamus possimus labore dicta maxime.",
                    style: TextStyle(fontWeight: FontWeight.w900),
                    overflow: TextOverflow.clip),
              ),
              Container(
                width: 260,
                height: 35,
                child: Text(
                  "This is a long text Aliquam facere accusamus possimus labore dicta maxime.",
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 6),
              Container(
                width: 260,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 18,
                    ),
                    Text(
                      '03-03-2021',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Container(
                        height: 18,
                        width: 100,
                        child: Text(
                          'Sports',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        color: Colors.orange.shade800,
                      ),
                    ),
                    Icon(Icons.bookmark_border_outlined),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
