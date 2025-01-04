import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Set the color of the back arrow
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 17),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile_1.jpg",
                        height: 65,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Text("Hey there, I am using WhatsApp"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Security notification, change number",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.lock),
                ),
                title: Text(
                  "Privacy",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Block contacts, disappering messages",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.person_4_rounded),
                ),
                title: Text(
                  "Avatar",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Create, edit, profile photo",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.person_pin_outlined),
                ),
                title: Text(
                  "Lists",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Manage people and groups",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.chat),
                ),
                title: Text(
                  "Chats",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Theme, wallpapers, chat history",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Message, group & call tones",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.cloud_circle),
                ),
                title: Text(
                  "Storage and data",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Network usage, auto-download",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.language),
                ),
                title: Text(
                  "App language",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "English(device's language)",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.help_outline),
                ),
                title: Text(
                  "Help",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Help center, contact us, privacy policy ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Icon(Icons.people_alt_outlined),
                ),
                title: Text(
                  "Invite a friend",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:  60),
                child: Column(
                  children: [
                    Text(
                      "From",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Meta",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
