import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF08919F), //background colour
        appBar: AppBar(
          backgroundColor: Color(0xFF100036), //app bar colour
          title: const Text("Welcome"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ),
          ],
        ),


      body: Center(
        child: Column(

          children: [

            SizedBox(
              height: 200, // <-- SEE HERE
            ),

            ElevatedButton.icon(onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => record_page()));
            },

            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20.0),
              fixedSize: Size(300,80),
              elevation: 15,
              shape: const StadiumBorder(),
              textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),

            icon:Icon(Icons.people),
            label: Text("Patient's Record")),

            SizedBox(
              height: 20, // <-- SEE HERE
            ),

            ElevatedButton.icon(onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => examine_page()));
            },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20.0),
                  fixedSize: Size(300,80),
                  elevation: 15,
                  shape: const StadiumBorder(),
                  textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

                ),
                icon:Icon(Icons.scanner_rounded),
                label: Text("Upload Images")),

            SizedBox(
              height: 20, // <-- SEE HERE
            ),

            ElevatedButton.icon(onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => examine_page()));
            },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20.0),
                  fixedSize: Size(300,80),
                  elevation: 15,
                  shape: const StadiumBorder(),
                  textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
                icon:Icon(Icons.people),
                label: Text("Upload Images"))
          ],
        ),
      ),
       /*  ElevatedButton(
          onPressed: () {
            Navigator.push(
            context,
              MaterialPageRoute(
              builder: (context) => record_page()));
      // action on button press
      },
        child: const Icon(Icons.people),
      ),*/





        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: const Icon(Icons.add),
          onPressed: () {
            // action on button press
          },
        ),

        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF100036),
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFF100036)),
                  accountName: Text(
                    "Tanvi Kalita",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("holaitsmeria@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "TK",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.language),
                title: const Text(' Language '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_label),
                title: const Text(' Edit Profile '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text(' Help '),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('LogOut'),
                onTap: () {
                  Navigator.pop(context);
                },

              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.indigo,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
              ),
            ],
            onTap: (int indexOfItem) {}),
      ),
    );
  }
}

class _homepageState extends State<homepage>{
  String result='';
  File? image;
  ImagePicker? imagePicker;


}

class record_page extends StatelessWidget {
  const record_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF08919F), //background colour
      appBar: AppBar(
        backgroundColor: Color(0xFF100036), //app bar colour
        title: const Text("Patient Profile"),
        actions: <Widget>[

        ],
      ),

      body: Center(
        child: Text('record page'),
      ),
    );
  }

}

class examine_page extends StatelessWidget {
  const examine_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF08919F), //background colour
      appBar: AppBar(
        backgroundColor: Color(0xFF100036), //app bar colour
        title: const Text("Examine"),
        actions: <Widget>[

        ],
      ),

      body: Center(
        child: Text('Examine Page'),
      ),
    );



  }

}
