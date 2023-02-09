import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_ui/view/slider.dart';
import 'package:url_launcher/url_launcher.dart';

class WeCare extends StatefulWidget {
  const WeCare({Key? key}) : super(key: key);

  @override
  State<WeCare> createState() => _WeCareState();
}

class _WeCareState extends State<WeCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(),
                  Image.asset(
                    'assets/images/img.png',
                    height: 80,
                    width: 80,
                  ),
                  Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                  Container(
                    width: 10,
                  )
                ],
              ),
              SliderP(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.readexPro(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                    children: [
                      const TextSpan(
                        text: '”خصم',
                      ),
                      TextSpan(
                        text: '50',
                        style: GoogleFonts.readexPro(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1d3f79),
                        ),
                      ),
                      const TextSpan(
                        text: '% لمساهمي “الروضة وحولي',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.readexPro(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                    children: [
                      const TextSpan(
                        text: 'مختبر مستوصف',
                      ),
                      TextSpan(
                        text: ' بروفيشنال وي كير',
                        style: GoogleFonts.readexPro(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff1d3f79),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/img_4.png',
                      height: 68,
                      width: 58,
                    ),
                    Image.asset(
                      'assets/images/img.png',
                      height: 90,
                      width: 90,
                    ),
                    const Spacer(),
                    Text(
                      ':للتواصل والإستفسار',
                      style: GoogleFonts.readexPro(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1d3f79),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '92219914',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.readexPro(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      _launchURLHttp('www.facebook.com/mohammed.hani.77312');
                    },
                    child: Image.asset(
                      'assets/images/img_5.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchURLHttp('www.instagram.com/mohammed._.rahma/');
                    },
                    child: Image.asset(
                      'assets/images/img_6.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchURLPhone('+972592168641');
                    },
                    child: Image.asset(
                      'assets/images/img_7.png',
                      height: 50,
                      width: 50,
                    ),
                  )
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchURLPhone(String url) async {
    final Uri uri = Uri(scheme: "tel", path: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Future<void> _launchURLHttp(String url) async {
    final Uri uri = Uri(scheme: "https", path: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }
}
