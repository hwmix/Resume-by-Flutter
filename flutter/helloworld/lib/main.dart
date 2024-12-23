import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Resume',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal,
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Section
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                          "https://scontent.fbkk22-7.fna.fbcdn.net/v/t39.30808-6/369220047_1642085126319438_9163676206444903784_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFAQF5Vi2rAGCB5yU8z2hT6rgixbjrQ7AmuCLFuOtDsCU9XKx4DW0MxrRjMCl2zhhHHRBtgEGPTVwWWP1dINy_l&_nc_ohc=ywEXUHXVf1AQ7kNvgHRiPO5&_nc_oc=AdibcZw9psCxJjkpZrHfZ_6pkgpD3mGTiy-TXhMBvob2NxTfNCcJc5pHdCVbjV3g8JNVoWnsOKHrvvUcKXMyAzRY&_nc_zt=23&_nc_ht=scontent.fbkk22-7.fna&_nc_gid=AGblLmdpasQ-VIU-T0u5Kgi&oh=00_AYBcTBly56IwKPvuhiRYOMYYqbrq5YIgW3odVAZT4bp8gA&oe=676F6979",
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Pongpon Sreekrajang Mix",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[900],
                        ),
                      ),
                      SizedBox(height: 8),
                      Divider(thickness: 1.5, color: Colors.teal[200]),
                    ],
                  ),
                ),
                SizedBox(height: 24),

                // Personal Information Section
                Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 12),
                Card(
                  color: Colors.teal[50],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildDetailRow("Hobby", "Play a game"),
                        _buildDetailRow("Food", "fried rice"),
                        _buildDetailRow("Birthplace", "Pitsanulok"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24),

                // Education Section
                Text(
                  "Education",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(height: 12),
                Card(
                  color: Colors.teal[50],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        _buildEducationRow("Elementary", "jakarnboon", "59"),
                        _buildEducationRow("Primary", "jakarnboon", "59"),
                        _buildEducationRow("High School",
                            "Phitsanulok pittayakom School", "65"),
                        _buildEducationRow(
                            "Undergrad", "Naresuan University", "69"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

// Helper widget to build personal detail rows
Widget _buildDetailRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.teal[800]),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ],
    ),
  );
}

// Helper widget to build education rows
Widget _buildEducationRow(String level, String institution, String year) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            "$level: $institution",
            style: TextStyle(fontSize: 16, color: Colors.black87),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          "Year: $year",
          style: TextStyle(fontSize: 16, color: Colors.teal[800]),
        ),
      ],
    ),
  );
}
