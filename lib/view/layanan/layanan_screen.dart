import 'package:fitness/services/auth/auth_service.dart';
import 'package:fitness/view/layanan/appointment-screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LayananPage extends StatefulWidget {
  const LayananPage({super.key});

  @override
  State<LayananPage> createState() => _LayananPageState();
}

class _LayananPageState extends State<LayananPage> {
  void SignOut() {
    final authService = Provider.of<AuthService>(context, listen: false);

    authService.signOut();
  }

  void NavigateToLayananPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AppointmentScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
                color: Color(0xFF03BE96),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 20,
                    child: Text(
                      "Health Service",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF03BE96),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context)
                  .size
                  .height, // Adjust the height accordingly
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    height: 230,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Material(
                            child: Container(
                              height: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: Offset(-10, 10),
                                    blurRadius: 20.0,
                                    spreadRadius: 4.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 10,
                          child: Card(
                            elevation: 10.0,
                            shadowColor: Colors.grey.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                NavigateToLayananPage(context);
                              },
                              child: Container(
                                height: 170,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      'https://res.cloudinary.com/dk0z4ums3/image/upload/v1691381774/setting/1691381773.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 45,
                          left: 180,
                          child: Container(
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr. Richard Ree",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFF03BE96),
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  "Internal Organ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),
                                Text(
                                  "Serve 24 hours",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
