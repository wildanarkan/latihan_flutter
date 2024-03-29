import 'package:flutter/material.dart';
import 'package:latihan_flutter/instagram/widgets/info_item.dart';
import 'package:latihan_flutter/instagram/widgets/profile_picture.dart';
import 'package:latihan_flutter/instagram/widgets/story_item.dart';
import 'package:latihan_flutter/instagram/widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "wildandev",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {},
                color: Colors.black,
                icon: Icon(Icons.keyboard_arrow_down_rounded)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.add_box_outlined)),
          IconButton(
              color: Colors.black, onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem(angka: "20", judul: "Postingan"),
                      InfoItem(angka: "11", judul: "Pengikut"),
                      InfoItem(angka: "39", judul: "Mengikuti"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Ahmad Wildan Arkan",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("student!"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Transform.rotate(
                    angle: 90,
                    child: Icon(
                      Icons.link,
                      color: Colors.blue[900],
                    )),
                Text(
                  "linktr.ee/wildanarkan",
                  style: TextStyle(color: Colors.blue[900]),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Text(
                          "Edit profil",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Text(
                          "Bagikan profil",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {},
                      child: Icon(Icons.person_add, color: Colors.black),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(judul: "Story 1"),
                  StoryItem(judul: "Story 2"),
                  StoryItem(judul: "Story 3"),
                  StoryItem(judul: "Story 4"),
                  StoryItem(judul: "Story 5"),
                  StoryItem(judul: "Story 6"),
                  StoryItem(judul: "Story 7"),
                  StoryItem(judul: "Story 8"),
                  StoryItem(judul: "Story 9"),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(active: true, icon: Icons.grid_on_rounded),
              TabItem(active: false, icon: Icons.person_pin_outlined),
            ],
          ),
          GridView.builder(
            padding: EdgeInsets.only(top: 2),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 30,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 1, crossAxisSpacing: 1), 
            itemBuilder: (context, index) => Image.asset("assets/image/wildankecil.png", fit: BoxFit.cover,), 
            )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        iconSize: 30,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}




