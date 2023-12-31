import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:flutter/material.dart';


class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        toolbarHeight: 0,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveWebSite.isDesktop(context)
                ? Row(
                    children: [
                      SizedBox(
                        height: screenSize.height,
                        width: screenSize.width / 2,
                       // color: Colors.red,
                        child: Image.asset(  
                          'assets/images/contacts.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width / 2,
                        height: screenSize.height,
                        child: SingleChildScrollView(
                          // Don't forget this.
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  "LEPTON COMPANY SOLUTIONS",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ),
                              //... other children
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 50, bottom: 50),
                                child: Text(
                                  "Lepton AI Solutions is at the forefront of technological innovation, specializing in delivering IoT and AI solutions tailored to the unique needs of the Middle East. As a sister concern of Lepton Communications, our legacy of success extends across diverse sectors, including healthcare, education, e-commerce, and social networking.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
                      Image.asset(
                        'assets/images/solution.jpg',
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: screenSize.width,
                        height: screenSize.height,
                        child:  SingleChildScrollView(
                          // Don't forget this.
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: Text(
                                  "LEPTON COMPANY SOLUTIONS",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 50),
                                child: Text(
                                  "Lepton AI Solutions is at the forefront of technological innovation, specializing in delivering IoT and AI solutions tailored to the unique needs of the Middle East. As a sister concern of Lepton Communications, our legacy of success extends across diverse sectors, including healthcare, education, e-commerce, and social networking.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),           
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
