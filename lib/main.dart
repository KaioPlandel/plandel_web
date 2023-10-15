import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Future<void> _launchURL(String url) async {
      try {
        var lUri = Uri.parse(url);
        await canLaunchUrl(lUri);
      } catch(e) {
        print("Não foi possível abrir o link $e");
      }
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: Container(
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        image: const DecorationImage(
                            image: AssetImage(
                              "images/plandel.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Kaio Plandel",
                  style:
                  GoogleFonts.acme(color: Colors.white, letterSpacing: 3),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "📱Navigating between code and words to create unique experiences.✍️",
                  style: GoogleFonts.abel(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 44,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onDoubleTap: ()async {
                       await _launchURL("https://medium.com/@kaiocomercio");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(color: Colors.white)),
                                color: Colors.white,
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "images/medium.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          const SizedBox(width: 8),
                          Text(
                            "Medium",
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        _launchURL(
                            "https://br.linkedin.com/in/kaio-plandel-267a27208");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: const Border.fromBorderSide(
                                    BorderSide(color: Colors.white)),
                                color: Colors.white,
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "images/lin.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(width: 8),
                          Text(
                            "Linkedlin",
                            style: GoogleFonts.abel(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
