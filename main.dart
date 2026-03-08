import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Root widget of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Connect',
      home: IntroCardScreen(),
    );
  }
}

// Main screen showing the intro card
class IntroCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Connect"),
      ),
      body: Center(
        child: Container(
          width: 300,

          // Margin outside the card
          margin: EdgeInsets.all(20),

          // Padding inside the card
          padding: EdgeInsets.all(16),

          decoration: BoxDecoration(
            color: Colors.blue.shade50, // Background color

            // Rounded corners
            borderRadius: BorderRadius.circular(20),

            // Shadow effect
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(4, 4),
              ),
            ],
          ),

          // Row for profile + details
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Profile Image
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/150?img=3",
                ),
              ),

              SizedBox(width: 15),

              // User Information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Name
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 4),

                    // Role
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),

                    SizedBox(height: 8),

                    // Description / Quote
                    Text(
                      "Passionate about building beautiful mobile apps using Flutter.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
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
