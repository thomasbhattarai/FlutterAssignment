import 'package:flutter/material.dart';

class IdentityCard extends StatefulWidget {
  const IdentityCard({super.key});

  @override
  State<IdentityCard> createState() => _IdentityCardState();
}

class _IdentityCardState extends State<IdentityCard> {
  textWidget(String title, String substring) {
    return RichText(
      text: TextSpan(
        text: title,
        style: TextStyle(fontSize: 16, color: Colors.black),
        children: [
          TextSpan(
            text: substring,
            style: TextStyle(height: 1.5, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyCard',
          style: TextStyle(color: Colors.blue, fontSize: 22),
        ),
      ),
      body: Center(
        child: Container(
          height: 210,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            children: [
              // CircleAvatar(
              //   radius: 60,
              //   child: Image.asset('assets/images/anya.jpg'),
              // )
              //Image(image: AssetImage('assets/images/anya.jpg'))
              Flexible(
                child: Container(
                  height: 125,
                  width: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/messi.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    // Text(
                    //   'Name:Anya Foger',
                    //   style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    // ),
                    textWidget('Name:', 'Lionel Messi'),
                    textWidget('Age:', '6'),
                    textWidget('Address:', 'Tokyo,Japan'),
                    textWidget('Level:', 'Kindergarden'),
                    textWidget('Date Of Birth:', '2019-01-01'),

                    // Text(
                    //   'Address:Tokyo,Japan ',
                    //   style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    // ),
                    //
                    // Text(
                    //   'Date Of Birth:2019-01-01 ',
                    //   style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
