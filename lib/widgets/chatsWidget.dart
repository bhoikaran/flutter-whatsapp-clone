import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 11; i++)
              InkWell(
                onTap: () => {},
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "assets/profile_$i.jpg",
                            height: 65,
                            width: 65,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flutter Coder",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "Hey!! I am Karan Bhoi",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              "10:00",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff0fce5e),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 6),
                            Container(
                              alignment:  Alignment.center,
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                  color: Color(0xff0fce5e),
                                  borderRadius: BorderRadius.circular(18)),
                                  child: Text("2", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
