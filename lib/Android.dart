import 'package:flutter/material.dart';
import 'package:stats/home_page.dart';


class Android extends StatelessWidget {
  const Android({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                        child: Image.asset(
                          'images/logos.png',
                          fit: BoxFit.cover,
                          height: 60,
                        )),
                    accountName: const Text('Hurarah'),
                    accountEmail: const Text('Hurarahchodary11"gmail')),
                const ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_back_ios_new),
                ),
                const Divider(
                  thickness: 2,
                  indent: 5,
                  endIndent: 5,
                ),
                ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings),
                  trailing: Icon(Icons.arrow_back_ios_new),
                ),
                Divider(
                  thickness: 2,
                  indent: 10,
                  endIndent: 5,
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),
                  trailing: Icon(Icons.arrow_back_ios_new),
                )
              ],
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 50,
            title: const Text('Login Page'),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'images/logos.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'User Name',
                      labelText: 'User Name',
                      prefixIcon: Icon(Icons.man),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Forgotten password !',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  HomePage()));
                    },
                    child: Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w200),
                          ),
                        )),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}