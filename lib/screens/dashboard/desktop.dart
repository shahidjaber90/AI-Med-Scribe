import 'package:flutter/material.dart';

import '../../uitilities/colors.dart';
import '../../widgets/Client_widget.dart';
import '../../widgets/details_widget.dart';
import '../../widgets/liveStream_widget.dart';
import '../../widgets/report_widget.dart';
import '../../widgets/text_field_input.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 225, 225),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset("assets/side_menu.png"),
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
          actions: [
            Image.asset("assets/tittle.png"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                width: screenWidth * 0.35,
                child: TextFieldInput(
                  iconPath: "assets/search.png",
                  hintText: 'Search',
                  textInputType: TextInputType.text,
                  textEditingController: _searchController,
                  isSearch: true,
                ),
              ),
            ),
            Image.asset("assets/help.png"),
            Image.asset("assets/notification.png"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "Dr.Jhon",
                style: TextStyle(
                  color: textColor,
                  fontSize: 13,
                ),
              ),
            ),
            Image.asset("assets/profile.png"),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 1.00,
          width: double.infinity,
          child: const Padding(
            padding: const EdgeInsets.only(top: 16, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClientWidget(),
                ReportWidget(),
                DetailsWidget(),
                LiveStreamWidget(),
              ],
            ),
          ),
        ));  }
}
