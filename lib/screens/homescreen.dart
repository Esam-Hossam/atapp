import 'package:atapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: SvgPicture.asset(
            "assets/images/logo.svg",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: ElevatedButton(
              child: Text("ابدا الآن"),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: MainApp.primaryColor,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: MainApp.primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("هل تشعر بالوحدة؟ نحن معك",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Text(
                          "تحدث مع طبيب أو اخصائي نفسي عبر الانترنت. بكفاءة ومعايير ألمانية",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    FractionallySizedBox(
                        widthFactor: 0.5,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("ابدأ الآن")))
                  ]),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                "لماذا عرب ثيرابي؟",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 20,
                children: List.generate(
                    4,
                    (index) => Container(
                          padding: EdgeInsets.all(20),
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Text(
                                "سرية تامة",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "كافة المعلومات التي تشاركها معنا سواء في مواقع التواصل أو بينك وبين الأخصائي خلال وأثناء الجلسات تخضع لسرية تامة.",
                                textAlign: TextAlign.center,
                                softWrap: true,
                              )
                            ],
                          ),
                        )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Text(
                "اختر الاشتراك المناسب لك",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "حزمة الأمان",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "وفر 50% لأول جلسة",
                        softWrap: true,
                      ),
                      Text(
                        "\$ 29.99",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: MainApp.accentColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("لأول أسبوع ثم 59.99\$ اسبوعيا"),
                      Divider(),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "1 ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "جلسة صوتية أو فيديو اسبوعيا")
                          ])),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                              text: "مدة الجلسة ",
                            ),
                            TextSpan(
                                text: "45 دقيقة",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])),
                      Text("يمكنك إلغاء اشتراكك في أي وقت تريد")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "حزمة الامل",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: "وفر "),
                              TextSpan(
                                  text: "20\$",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]),
                      ),
                      Text(
                        "\$ 220",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: MainApp.accentColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("تدفع شهريا"),
                      Divider(),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "4 ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "جلسات صوتية أو فيديو خلال شهر"),
                            TextSpan(
                                text: "(45 دقيقة لكل جلسة)",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                              text:
                                  "رسائل لا محدودة مع الأخصائي النفسي طيلة فترة الاشتراك",
                            ),
                          ])),
                      Text("يمكنك إلغاء اشتراكك في أي وقت تريد")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "حزمة الرضا",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: "وفر "),
                              TextSpan(
                                  text: "160\$",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]),
                      ),
                      Text(
                        "\$ 559.99",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: MainApp.accentColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("تدفع كل 3 أشهر"),
                      Divider(),
                      RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                                text: "12 ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "جلسة صوتية أو فيديو خلال "),
                            TextSpan(
                                text: "3 أشهر (45 دقيقة لكل جلسة)",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])),
                      Text(
                        "رسائل لا محدودة مع الأخصائي النفسي طيلة فترة الاشتراك",
                      ),
                      Text("يمكنك إلغاء اشتراكك في أي وقت تريد")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Color.fromRGBO(220, 229, 240, 1),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Container(
                  color: Colors.white,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Text(
                              "أنت تستحق أن تكون سعيدا!",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ادخل معلوماتك",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("لمساعدتنا في اختيار الاخصائي المناسب لك"),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "اختر الاشتراك المناسب",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("اسبوعي, شهري, كل 3 أشهر"),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "ادفع بأمان",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("طرق دفع آمنة"),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "نحن بخدمتك 24 ساعة",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                  "سيتواصل فريق خدمة العملاء معك لتحديد المختص الأنسب لحالتك"),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "ابدأ العلاج",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("حدد موعد مع المختص الخاص بك"),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Center(
                                  child: FractionallySizedBox(
                                    widthFactor: 0.8,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text("ابدأ الآن")),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            )
          ])
        ],
      )),
    );
  }
}
