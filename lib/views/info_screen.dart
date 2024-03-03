import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:school_quiz/components/custom_widget.dart';
import 'package:school_quiz/views/edit_profile.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.grey.shade100,
        gap: 10,
        selectedIndex: 3,
        iconSize: 25,
        rippleColor: Colors.black26,
        tabs: const [
          GButton(
            icon: Icons.home,
            iconColor: Color.fromRGBO(188, 188, 188, 1),
          ),
          GButton(
            icon: Icons.explore,
            iconColor: Color.fromRGBO(188, 188, 188, 1),
          ),
          GButton(
            icon: Icons.bookmark,
            iconColor: Color.fromRGBO(188, 188, 188, 1),
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
            iconColor: Color.fromRGBO(188, 188, 188, 1),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(
                      radius: 44,
                      backgroundImage: AssetImage(
                        'assets/pic.jpg',
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const EditView();
                              },
                            ),
                          );
                        },
                        child: const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black54,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Mahmoud Hafez',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Text(
                'mahmodahmdhafez@gmail.com',
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Become an publisher',
                  style: TextStyle(
                      color: Colors.lightBlue, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Sittings',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomListTile(
                              title: 'Personal information',
                            ),
                            CustomListTile(title: 'Notifications'),
                            CustomListTile(title: 'Time spent'),
                            CustomListTile(title: 'Following'),
                            CustomListTile(title: 'Privacy policy'),
                            Text(
                              'Help & Support',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            CustomListTile(title: 'Privacy policy'),
                            CustomListTile(title: 'Terms & Conditions'),
                            CustomListTile(title: 'FAQ & Help'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Log out',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
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
        ),
      ),
    );
  }
}
