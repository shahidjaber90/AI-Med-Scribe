import 'package:ai_med_scribble/uitilities/colors.dart';
import 'package:ai_med_scribble/uitilities/global_variable.dart';
import 'package:ai_med_scribble/widgets/organize_widget.dart';
import 'package:ai_med_scribble/widgets/review_widget.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({super.key});

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.32,
      height: MediaQuery.of(context).size.height * 1.00,
      color: Colors.white,
      child: ContainedTabBarView(
        tabBarProperties: const TabBarProperties(
          indicatorSize: TabBarIndicatorSize.label,
          alignment: TabBarAlignment.start,
          padding: EdgeInsets.only(left: 30),
          width: 350,
          labelColor: blueColor,
          unselectedLabelColor: Colors.grey,
        ),
        tabs: [
          Text(
            'Organize',
            style:
                GoogleFonts.urbanist(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          Text(
            'Build',
            style:
                GoogleFonts.urbanist(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          Text(
            'Review',
            style:
                GoogleFonts.urbanist(fontSize: 18, fontWeight: FontWeight.w900),
          ),
        ],
        views: const [
          OrganizeWidget(),
          Text('data-2'),
          ReviewWidget(),
        ],
        onChange: (index) {
          print(index);
        },
      ),
    );
  }
}
