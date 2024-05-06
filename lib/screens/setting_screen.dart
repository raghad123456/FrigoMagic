import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_screen.dart';

class CustomRatingBar extends StatefulWidget {
  final double rating;
  final double size;
  final Color color;
  final Duration animationDuration;
  final ValueChanged<double> onRatingChanged;

  const CustomRatingBar({
    Key? key,
    required this.rating,
    required this.onRatingChanged,
    this.size = 30,
    this.color = Colors.amber,
    this.animationDuration = const Duration(milliseconds: 500),
  }) : super(key: key);

  @override
  _CustomRatingBarState createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _animation = Tween<double>(begin: 0, end: widget.rating).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return IconButton(
              onPressed: () {
                widget.onRatingChanged(index + 1.0);
              },
              icon: Icon(
                index < widget.rating.floor()
                    ? Icons.star
                    : index < widget.rating
                    ? Icons.star_half
                    : Icons.star_border,
                color: widget.color,
                size: widget.size,
              ),
            );
          }),
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(5, (index) {
                return AnimatedOpacity(
                  opacity: index < _animation.value.floor() ? 1 : 0,
                  duration: widget.animationDuration,
                  child: Icon(
                    Icons.star,
                    color: widget.color.withOpacity(0.5),
                    size: widget.size,
                  ),
                );
              }),
            );
          },
        ),
      ],
    );
  }
}

class Settings extends StatefulWidget {
  final String userEmail;

  const Settings({Key? key, required this.userEmail}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _notificationsEnabled = true;
  double _userRating = 0.0;
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/user.png'), // Change to user's profile picture
            ),
            title: Text(
              'User Profile',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Email: ${user!.email}'),
            trailing: IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Disable Notifications',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Switch(
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
                // Implement notification toggle logic
              },
            ),
          ),
          Divider(),
          ExpansionTile(
            title: Text(
              'Privacy and Policies',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  '''Our commitment to your privacy and security is paramount. Below are the privacy rules and policies that govern your use of our services:

1. **Data Collection and Usage:** We collect personal information to provide and improve our services. This may include your name, email address, and usage data. We use this information to personalize your experience and communicate with you.

2. **Data Protection:** We employ industry-standard security measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction. Your data is encrypted and stored securely on our servers.

3. **Third-Party Services:** We may utilize third-party services to enhance our offerings. These services adhere to their own privacy policies, and we are not responsible for their practices. We encourage you to review their policies before using their services.

4. **Cookies:** We use cookies and similar technologies to analyze trends, administer the website, track users' movements around the site, and gather demographic information about our user base. You can control the use of cookies through your browser settings.

5. **User Rights:** You have the right to access, correct, or delete your personal information. You can also opt-out of certain data processing activities. For more information on exercising your rights, please contact us.

6. **Updates to Policies:** We reserve the right to update our privacy policies periodically. Any changes will be reflected on this page, and we may notify you via email or through our website. Continued use of our services constitutes acceptance of these policies.

By using our services, you agree to abide by these privacy rules and policies. If you have any questions or concerns about our practices, please don't hesitate to contact us.''',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rate App',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                CustomRatingBar(
                  rating: _userRating,
                  onRatingChanged: (double rating) {
                    setState(() {
                      _userRating = rating;
                    });
                    // Implement rating update logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
