import 'package:flutter/material.dart';
import 'package:humming_sparrow_task/utils/colors.dart';
import 'package:humming_sparrow_task/widgets/my_drawer.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        leading: Builder(
          builder: (context) => Container(
            margin: EdgeInsets.only(left: 18),
            child: IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu),
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width,
                  height: 50,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Videos',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                    ),
                  ),
                ),
                Container(
                  height: 6,
                  color: Colors.grey.withOpacity(0.3),
                ),
                Stack(
                  children: [
                    Container(
                      width: width,
                      child: Image.network(
                        'https://picsum.photos/500',
                        width: width,
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                    ),
                    Container(
                      height: 200,
                      child: Center(
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Text(
                        'This is a heading of the related new ws this is another Ipsa sint modi velit.',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: width,
                        child: Text(
                          'Date and Time here',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: width,
                        child: Text(
                          'Est ut quaerat nemo natus vero nihil voluptas. Fuga qui eaque enim aut mollitia iste.',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        ),
                      ),
                      SizedBox(height: 15),
                      Card(
                        elevation: 10,
                        child: Container(
                          width: width,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Information',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      for (int i = 1; i < 4; i++) buildTile(i)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildTile(int i) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              'https://picsum.photos/${i * 200}',
              width: 150,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 220,
                height: 35,
                child: Text(
                    "This is a Title Aliquam facere accusamus possimus labore dicta maxime.",
                    style: TextStyle(fontWeight: FontWeight.w700),
                    overflow: TextOverflow.clip),
              ),
              SizedBox(height: 12),
              Container(
                width: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '03-03-2021',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: Container(
                        height: 22,
                        width: 90,
                        child: Text(
                          'Info',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        color: Colors.orange.shade800,
                      ),
                    ),
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
