// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // class profit_loss extends StatefulWidget {
// //   const profit_loss({super.key});
// //
// //   @override
// //   State<profit_loss> createState() => _ExpenseReportScreenState();
// // }
// //
// // class _ExpenseReportScreenState extends State<profit_loss> {
// //   final TextEditingController _incomeController = TextEditingController(text: '98540');
// //   final double totalExpense = 47670;
// //   double totalIncome = 98540;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _incomeController.addListener(() {
// //       setState(() {
// //         totalIncome = double.tryParse(_incomeController.text) ?? 0;
// //       });
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     double profit = totalIncome - totalExpense;
// //     return Scaffold(
// //       backgroundColor: const Color(0xFFFFE2A3),
// //       appBar: AppBar(
// //         backgroundColor: Colors.transparent,
// //         elevation: 0,
// //         leading: const BackButton(color: Colors.black),
// //       ),
// //       body: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
// //           child: Container(
// //             width: double.infinity,
// //             padding: const EdgeInsets.only(top: 16, bottom: 20),
// //             decoration: BoxDecoration(
// //               color: Colors.grey.shade100,
// //               borderRadius: BorderRadius.circular(28),
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 // Top icon
// //                 Image.asset(
// //                   'assets/icons/image.png', // Put your "image.png" or the correct path here.
// //                   height: 34,
// //                 ),
// //                 // Expense card
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //                   child: Container(
// //                     width: double.infinity,
// //                     decoration: BoxDecoration(
// //                       color: Colors.grey.shade400,
// //                       borderRadius: BorderRadius.circular(22),
// //                     ),
// //                     child: Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             "Total Expense",
// //                             style: GoogleFonts.poppins(
// //                               fontWeight: FontWeight.w600,
// //                               fontSize: 17,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                           const SizedBox(height: 10),
// //                           Text(
// //                             '₹${totalExpense.toStringAsFixed(0)}',
// //                             style: GoogleFonts.poppins(
// //                               fontWeight: FontWeight.bold,
// //                               fontSize: 30,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 // Income card
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //                   child: Container(
// //                     width: double.infinity,
// //                     decoration: BoxDecoration(
// //                       color: Colors.grey.shade400,
// //                       borderRadius: BorderRadius.circular(22),
// //                     ),
// //                     child: Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             "Total Income",
// //                             style: GoogleFonts.poppins(
// //                               fontWeight: FontWeight.bold,
// //                               fontSize: 19,
// //                               color: Colors.black,
// //                             ),
// //                           ),
// //                           Text(
// //                             'Enter your Income here',
// //                             style: GoogleFonts.poppins(
// //                               fontWeight: FontWeight.normal,
// //                               fontSize: 12,
// //                               color: Colors.black87,
// //                             ),
// //                           ),
// //                           const SizedBox(height: 9),
// //                           Container(
// //                             decoration: BoxDecoration(
// //                               color: Colors.white,
// //                               borderRadius: BorderRadius.circular(22),
// //                               boxShadow: [
// //                                 BoxShadow(
// //                                   color: Colors.black26,
// //                                   offset: Offset(2,3),
// //                                   blurRadius: 6,
// //                                 ),
// //                               ],
// //                             ),
// //                             child: TextField(
// //                               controller: _incomeController,
// //                               keyboardType: TextInputType.number,
// //                               style: GoogleFonts.poppins(
// //                                 fontWeight: FontWeight.bold,
// //                                 fontSize: 26,
// //                               ),
// //                               decoration: InputDecoration(
// //                                 border: InputBorder.none,
// //                                 prefixText: '₹',
// //                                 prefixStyle: GoogleFonts.poppins(
// //                                   fontWeight: FontWeight.bold,
// //                                   fontSize: 26,
// //                                   color: Colors.black,
// //                                 ),
// //                                 contentPadding: const EdgeInsets.symmetric(
// //                                     horizontal: 16, vertical: 10),
// //                               ),
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 // Profit/Loss card
// //                 Padding(
// //                   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //                   child: Container(
// //                     width: double.infinity,
// //                     decoration: BoxDecoration(
// //                       color: Colors.grey.shade400,
// //                       borderRadius: BorderRadius.circular(22),
// //                     ),
// //                     child: Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Row(
// //                             children: [
// //                               Text(
// //                                 "Profit",
// //                                 style: GoogleFonts.poppins(
// //                                   fontWeight: FontWeight.bold,
// //                                   fontSize: 22,
// //                                   color: Colors.green,
// //                                 ),
// //                               ),
// //                               Text(
// //                                 "/",
// //                                 style: GoogleFonts.poppins(
// //                                   fontWeight: FontWeight.bold,
// //                                   fontSize: 22,
// //                                   color: Colors.black,
// //                                 ),
// //                               ),
// //                               Text(
// //                                 "Loss",
// //                                 style: GoogleFonts.poppins(
// //                                   fontWeight: FontWeight.bold,
// //                                   fontSize: 22,
// //                                   color: Colors.red,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                           const SizedBox(height: 9),
// //                           Text(
// //                             '₹${profit.abs().toStringAsFixed(0)} ${profit >= 0 ? "P" : "L"}',
// //                             style: GoogleFonts.poppins(
// //                               fontWeight: FontWeight.bold,
// //                               fontSize: 28,
// //                               color: profit >= 0 ? Colors.green : Colors.red,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 // Save & Get report button
// //                 Padding(
// //                   padding: const EdgeInsets.only(top: 18.0),
// //                   child: Container(
// //                     width: double.infinity,
// //                     margin: const EdgeInsets.symmetric(horizontal: 32),
// //                     decoration: BoxDecoration(
// //                       borderRadius: BorderRadius.circular(18),
// //                       border: Border.all(
// //                           color: Colors.orange, width: 1.6),
// //                       color: Colors.white,
// //                     ),
// //                     child: MaterialButton(
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(18),
// //                       ),
// //                       padding: const EdgeInsets.symmetric(vertical: 12),
// //                       onPressed: () {
// //                         // Action for report
// //                       },
// //                       child: Text(
// //                         "Save & Get report",
// //                         style: GoogleFonts.poppins(
// //                           fontWeight: FontWeight.w500,
// //                           fontSize: 17,
// //                           color: Colors.black,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //       bottomNavigationBar: _buildBottomNavigationBar(),
// //     );
// //   }
// //
// //   Widget _buildBottomNavigationBar() {
// //     return BottomNavigationBar(
// //       type: BottomNavigationBarType.fixed,
// //       currentIndex: 0, // set according to your app
// //       selectedFontSize: 0,
// //       unselectedFontSize: 0,
// //       showSelectedLabels: false,
// //       showUnselectedLabels: false,
// //       items: [
// //         BottomNavigationBarItem(
// //           icon: Image.asset('assets/icon/farmer.png', height: 36),
// //           label: '',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Image.asset('assets/icon/grocery.png', height: 36),
// //           label: '',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.home, size: 36),
// //           label: '',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.history, size: 36),
// //           label: '',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Image.asset('assets/icon/user.png', height: 36),
// //           label: '',
// //         ),
// //       ],
// //     );
// //   }
// // }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profit_loss extends StatefulWidget {
  const profit_loss({super.key});

  @override
  State<profit_loss> createState() => _ProfitLossState();
}

class _ProfitLossState extends State<profit_loss> {
  final TextEditingController _incomeController = TextEditingController(text: '98540');
  final double totalExpense = 47670;
  double totalIncome = 98540;

  @override
  void initState() {
    super.initState();
    _incomeController.addListener(() {
      setState(() {
        totalIncome = double.tryParse(_incomeController.text) ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double profit = totalIncome - totalExpense;

    return Scaffold(
      backgroundColor: const Color(0xFFFFE2A3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Top icon with fallback in case image missing
              Image.asset(
                'assets/icons/image.png',
                height: 34,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.autorenew, size: 34, color: Colors.orange),
              ),
              sectionExpense(),
              sectionIncome(),
              sectionProfitLoss(profit),
              const SizedBox(height: 24), // Extra bottom spacing for scroll comfort
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 12),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.orange, width: 1.6),
            color: Colors.white,
          ),
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
            onPressed: () {
              // Your save action here
            },
            child: Text(
              "Save & Get report",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget sectionExpense() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Expense",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '₹${totalExpense.toStringAsFixed(0)}',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionIncome() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Income",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
              Text(
                'Enter your Income here',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 9),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _incomeController,
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixText: '₹',
                    prefixStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.black,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionProfitLoss(double profit) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Profit",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "/",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Loss",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 9),
              Text(
                '₹${profit.abs().toStringAsFixed(0)} ${profit >= 0 ? "P" : "L"}',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: profit >= 0 ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
