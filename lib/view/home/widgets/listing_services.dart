import 'package:adv_ks_binu_assosciates/utils/utils/responsive.dart';
import 'package:flutter/material.dart';


class DesignForImagePageChange extends StatelessWidget {
  const DesignForImagePageChange({super.key});

  @override
  Widget build(BuildContext context) {     
    return  SingleChildScrollView(
      child: Column(
        children: [ 
        ResponsiveWebSite.isMobile(context)?
         const SizedBox(
          width: double.infinity,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
             StackImageWidgetNew(
            image: "assets/images/divorce.jpg",
            color:  Colors.blue,
            text: "Divorce and Seperation:\n Navigating the emotional and legal aspects of divorce and separation can be overwhelming. Our team is here to provide compassionate guidance and expert representation, ensuring your rights and interests are protected throughout the process",
            ),////////0
            StackImageWidgetNew(
              image: "assets/images/child_custody.jpg",
              color: Colors.amber,
              text: "Child Custody and Support\n"
"When it comes to matters involving children, we prioritize their well-being. Our advocates work diligently to secure fair custody arrangements and child support agreements, always keeping the best interests of the child at the forefront",
           ),///////1
            StackImageWidgetNew(
              image: "assets/images/property_devision.jpg",
              color: Colors.green,
              text: "Property Division\n"
"Property division can be a contentious issue in family law cases. We meticulously assess and advocate for equitable distribution, taking into account the unique circumstances of each case.",
              ),/////////2
            StackImageWidgetNew(
              image: "assets/images/domestic_violance.jpg",
              color: Colors.pink,
              text: "Domestic Violence and Restraining Orders\n"
"If you are facing issues of domestic violence, our advocates provide swift and effective legal assistance. We work to obtain restraining orders and protective measures to ensure the safety of our clients",
              ),
            ],
          ),
        ): ////////////////////////////////////////////////////////////////////////////////////mobile
        ResponsiveWebSite.isTablet(context)?
        const SizedBox(
          width: double.infinity,
          child: Center(
            child: Column(
              children: [ 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      StackImageWidgetNew(
            image: "assets/images/divorce.jpg",
            color:  Colors.blue,
            text: "Divorce and Seperation:\n Navigating the emotional and legal aspects of divorce and separation can be overwhelming. Our team is here to provide compassionate guidance and expert representation, ensuring your rights and interests are protected throughout the process",
            ),////////0
            StackImageWidgetNew(
              image: "assets/images/child_custody.jpg",
              color: Colors.amber,
              text: " Child Custody and Support\n"
"When it comes to matters involving children, we prioritize their well-being. Our advocates work diligently to secure fair custody arrangements and child support agreements, always keeping the best interests of the child at the forefront",
           ),///////1///1
                  ],
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 StackImageWidgetNew(
              image: "assets/images/property_devision.jpg",
              color: Colors.green,
              text: "Property Division\n"
"Property division can be a contentious issue in family law cases. We meticulously assess and advocate for equitable distribution, taking into account the unique circumstances of each case.",
              ),/////////2
            StackImageWidgetNew(
              image: "assets/images/domestic_violance.jpg",
              color: Colors.pink,
              text: "Domestic Violence and Restraining Orders\n"
"If you are facing issues of domestic violence, our advocates provide swift and effective legal assistance. We work to obtain restraining orders and protective measures to ensure the safety of our clients",
              ),////////3  
                  ],
                ),
                
              ],
            ),
          ),
        )///////////////////////////////////////////////////////////////////////////////////////////tab
       :  const Column(children: [
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [ 
       StackImageWidgetNew(
            image: "assets/images/divorce.jpg",
            color:  Colors.blue,
            text: "Divorce and Seperation:\n Navigating the emotional and legal aspects of divorce and separation can be overwhelming. Our team is here to provide compassionate guidance and expert representation, ensuring your rights and interests are protected throughout the process",
            ),////////0
            StackImageWidgetNew(
              image: "assets/images/child_custody.jpg",
              color: Colors.amber,
              text: " Child Custody and Support\n"
"When it comes to matters involving children, we prioritize their well-being. Our advocates work diligently to secure fair custody arrangements and child support agreements, always keeping the best interests of the child at the forefront",
           ),///////1
            StackImageWidgetNew(
              image: "assets/images/property_devision.jpg",
              color: Colors.green,
              text: "Property Division\n"
"Property division can be a contentious issue in family law cases. We meticulously assess and advocate for equitable distribution, taking into account the unique circumstances of each case.",
              ),/////////2
           
          ],),
           Row(mainAxisAlignment: MainAxisAlignment.center,
             children: [
                 StackImageWidgetNew(
              image: "assets/images/domestic_violance.jpg",
              color: Colors.pink,
              text: "Domestic Violence and Restraining Orders\n"
"If you are facing issues of domestic violence, our advocates provide swift and effective legal assistance. We work to obtain restraining orders and protective measures to ensure the safety of our clients",
              ),
             ],
           ),
         ],)//////////////////////////////////////////////////////////////////////////////////////lap
      ]),
    );
  }
}

class StackImageWidgetNew extends StatelessWidget {
    final String image ;
    final Color color;
    final String text;
  const StackImageWidgetNew({
    required this.image,
    required this.color,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 10,right: 15 ,bottom: 10),
      child: Stack(
        children: [ 
          Padding(
            padding: const EdgeInsets.only(top: 110,left: 90),
            child: Container( 
              height:320,
             width:  250,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
                color:color,),
              
            ),
          ),
          Container(
            height : 380,
            width: 300,
            //color: Colors.white,
            //decoration: BoxDecoration(image: DecorationImage(image:AssetImage(image),fit: BoxFit.cover,)),
            decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black,
                      Color.fromARGB(255, 219, 57, 17),
                      Colors.black,
                      Colors.black,
                    ],
                  )),
           child:  Center(
            child: Padding(
              padding: EdgeInsets.only(
                top:ResponsiveWebSite.isMobile(context)? 0:0,
                left:ResponsiveWebSite.isMobile(context)? 00: 00),
              child: Column(
                children: [
                  Image.asset(image,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text,
                    style:  TextStyle(
                      color:Colors.white,
                      fontSize: ResponsiveWebSite.isMobile(context)? 12:13,
                      //fontWeight: FontWeight.bold
                      ),),
                  ),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}