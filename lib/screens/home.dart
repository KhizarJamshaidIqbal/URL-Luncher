// ignore_for_file: avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:url_launcher/url_launcher.dart';

import 'PrivacyPolicy.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {
                  StoreRedirect.redirect(
                    androidAppId: "com.devglim.nooraniqaida",
                  );
                },
                label: const Text(
                  "Rate Us",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.star_border_rounded),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () async {
                  // final UrlPreview =
                  //     "https://play.google.com/store/apps/details?id=com.devglim.nooraniqaida";
                  // await Share.share("$UrlPreview");
                  try {
                    Share.share(
                        "https://play.google.com/store/apps/details?id=com.devglim.nooraniqaida");
                  } catch (e) {
                    print(e.toString());
                  }
                },
                label: const Text(
                  "Share Us",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.share),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {
                  launch('mailto:viralswipe695@gmail.com');
                },
                label: const Text(
                  "FeedBack",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.email_sharp),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //   height: 50,
            //   width: 150,
            //   child: ElevatedButton.icon(
            //     onPressed: () {
            //       launch('+923414757849');
            //     },
            //     label: const Text(
            //       "Phone Number",
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //     icon: const Icon(Icons.phone),
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.black,
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(30.0),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacyPolicy(),
                      ));
                },
                label: const Text(
                  "Privacy policy",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                icon: const Icon(Icons.email_sharp),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
