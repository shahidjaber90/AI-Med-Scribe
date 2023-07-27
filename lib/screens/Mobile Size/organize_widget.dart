import 'package:ai_med_scribble/uitilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrganizeWidget extends StatelessWidget {
  const OrganizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        child: Column(
          children: [
            // Line 1 Work
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 546,
                      height: 36,
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.black.withOpacity(0.35)),
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(0.35)),
                      )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Container(
                              alignment: Alignment.topLeft,
                              width: 95,
                              child: Text(
                                'Patient',
                                style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'NAME',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Jenny Wilson',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.70),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'GENDER',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Femail',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.70),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: MediaQuery.of(context).size.width * 0.08,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'AGE',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '32',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.70),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),

            // Line 2 Work
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 546,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(0.35)),
                      )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Container(
                              alignment: Alignment.topLeft,
                              width: 95,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 1.00,
                            decoration: BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                  color: Colors.black.withOpacity(0.35)),
                            )),
                            alignment: Alignment.topLeft,
                            width: 108,
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 60,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      'Male',
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.70),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 60,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: blueColor,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      'Femail',
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            height: MediaQuery.of(context).size.height * 1.00,
                            decoration: BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                  color: Colors.black.withOpacity(0.35)),
                            )),
                            alignment: Alignment.topLeft,
                            width: 108,
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),

            // Line 3 Work
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 546,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(0.35)),
                      )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              width: 95,
                              child: Text(
                                'Visit',
                                style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'START TIME',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    '12:15 AM',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.70),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'VISIT TYPE',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'SERVICE TYPE',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),

            // Line 4 Work
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 546,
                      height: 90,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(0.35)),
                      )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Container(
                              alignment: Alignment.topLeft,
                              width: 95,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 1.00,
                            decoration: BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                  color: Colors.black.withOpacity(0.35)),
                            )),
                            alignment: Alignment.topLeft,
                            width: 108,
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 60,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: blueColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Text(
                                        'Accute',
                                        style: GoogleFonts.urbanist(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Anual',
                                            style: GoogleFonts.urbanist(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.70),
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            'Follow up',
                                            style: GoogleFonts.urbanist(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.70),
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            'New patient',
                                            style: GoogleFonts.urbanist(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.70),
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            height: MediaQuery.of(context).size.height * 1.00,
                            decoration: BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                  color: Colors.black.withOpacity(0.35)),
                            )),
                            alignment: Alignment.topLeft,
                            width: 108,
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),

            // Line 5 Work
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 546,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(0.35)),
                      )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: 95,
                              child: Text(
                                'Templates',
                                style: GoogleFonts.urbanist(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CHIEF COMPLAINT',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Cough',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 12,
                                        color: Colors.black.withOpacity(0.70),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ACUTE COMPLAINT',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              alignment: Alignment.topLeft,
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CHRONIC CONDITION  ',
                                    style: GoogleFonts.urbanist(
                                        fontSize: 8,
                                        color: Colors.black.withOpacity(0.40),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),

            // Line 6 Work
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 546,
                      height: 170,
                      decoration: BoxDecoration(
                          border: Border(
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(0.35)),
                      )),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Container(
                              alignment: Alignment.topLeft,
                              width: 95,
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 60,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: blueColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Text(
                                        'Cough',
                                        style: GoogleFonts.urbanist(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Container(
                                        height: 130,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Backpain',
                                              style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(0.70),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Diabates',
                                              style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(0.70),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Depression',
                                              style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(0.70),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Dermatitis',
                                              style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(0.70),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Headache',
                                              style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(0.70),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Migraine',
                                              style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(0.70),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              'Hypertension',
                                              style: GoogleFonts.urbanist(
                                                  fontSize: 12,
                                                  color: Colors.black
                                                      .withOpacity(0.70),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height * 1.00,
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(
                                    color: Colors.black.withOpacity(0.35)),
                              )),
                              width: 108,
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Backpain',
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.70),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Diabates',
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.70),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Depression',
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.70),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      'Dermatitis',
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.70),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            height: MediaQuery.of(context).size.height * 1.00,
                            decoration: BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                  color: Colors.black.withOpacity(0.35)),
                            )),
                            alignment: Alignment.topLeft,
                            width: 108,
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Backpain',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.70),
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Diabates',
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.70),
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
