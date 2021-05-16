import 'package:flutter/material.dart';
import 'package:humming_sparrow_task/utils/colors.dart';
import 'package:humming_sparrow_task/widgets/my_drawer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.grey[300],
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
        child: Column(
          children: [
            Container(
              width: width,
              color: Colors.grey[300],
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/300'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      border: Border.all(
                        color: Colors.deepOrangeAccent,
                        width: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dinesh yaduvanshi',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.deepOrangeAccent),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // color: Colors.white,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Location',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Pincode',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'xxxxxx',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 5),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Date of Birth',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'dd-mm-yy',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Male',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Whatsapp',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '+91 - xxxxxxxxxx',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                    Divider(thickness: 0.2, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'xxxxxxxxx@gmail.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
