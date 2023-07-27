import 'package:ai_med_scribble/screens/Mobile%20Size/details_widget.dart';
import 'package:ai_med_scribble/screens/Mobile%20Size/liveStream_widget.dart';
import 'package:flutter/material.dart';
import '../../uitilities/colors.dart';
import '../../widgets/Client_widget.dart';
import '../../widgets/report_widget.dart';
import '../../widgets/text_field_input.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
          child: Image.asset("assets/side_menu.png"),
        ),
        title: const Row(
          children: [
            Text(
              "Your work",
              style: TextStyle(
                color: textColor,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Projects",
              style: TextStyle(
                color: textColor,
                fontSize: 13,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
      ),
      drawer: Drawer(
        width: 546,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/profile2.png"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Dr.Jhon",
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  children: [
                    Image.asset("assets/tittle.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: 530,
                  child: TextFieldInput(
                    iconPath: "assets/search.png",
                    hintText: 'Search',
                    textInputType: TextInputType.text,
                    textEditingController: _searchController,
                    isSearch: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.black,
                    size: 32,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    "Help.",
                    style: TextStyle(
                        color: textColor, fontSize: 16, letterSpacing: 0.5),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.notifications_sharp,
                    color: Colors.black,
                    size: 32,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Notification.",
                    style: TextStyle(
                        color: textColor, fontSize: 16, letterSpacing: 0.5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: const Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClientWidget(),
                    ReportWidget(),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DetailsWidget(),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LiveStreamWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
