import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                    height: 80.h,
                    width: 80.w,
                  ),
                  Spacer(),
                  const Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                  Container(
                    width: 10.w,
                  )
                ],
              ),
              SliderP(),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.readexPro(
                      fontSize: 18.sp,
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
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.readexPro(
                      fontSize: 18.sp,
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
                      height: 68.h,
                      width: 58.w,
                    ),
                    Image.asset(
                      'assets/images/img.png',
                      height: 90.h,
                      width: 90.w,
                    ),
                    const Spacer(),
                    Text(
                      ':للتواصل والإستفسار',
                      style: GoogleFonts.readexPro(
                        fontSize: 15.sp,
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
                    fontSize: 17.sp,
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
                      height: 50.h,
                      width: 50.w,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchURLHttp('www.instagram.com/mohammed._.rahma/');
                    },
                    child: Image.asset(
                      'assets/images/img_6.png',
                      height: 50.h,
                      width: 50.w,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchURLPhone('+972592168641');
                    },
                    child: Image.asset(
                      'assets/images/img_7.png',
                      height: 50.h,
                      width: 50.w,
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
