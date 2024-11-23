// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:toggle_switch/toggle_switch.dart';

// class CalcUi extends StatefulWidget {
//   const CalcUi({super.key});

//   @override
//   State<CalcUi> createState() => _CalcUiState();
// }

// class _CalcUiState extends State<CalcUi> {
//   List button = [
//     'AC',
//     'DEL'
//     '(',
//     ')',
//     '7',
//     '8',
//     '9',
//     '➗',
//     '4',
//     '5',
//     '6',
//     'x',
//     '1',
//     '2',
//     '3',
//     '-',
//     '0',
//     '.',
//     '=',
//     '+',
//   ];
//   bool enableDark = false;
//   String ans = '0';
//   String val = '';

//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: enableDark
//             ? Theme.of(context).colorScheme.secondary
//             : Theme.of(context).primaryColor,
//         body: Column(
//           children: [
//             Container(
//               width: w,
//               height: h * 0.28,
//               color: enableDark
//                   ? Theme.of(context).colorScheme.secondary
//                   : Theme.of(context).primaryColor,
//               child: Column(
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(8),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               ToggleSwitch(
//                                 iconSize: 22,
//                                 initialLabelIndex: 0,
//                                 activeFgColor: enableDark
//                                     ? const Color(0xff6b6f77)
//                                     : Theme.of(context).colorScheme.secondary,
//                                 inactiveFgColor: enableDark
//                                     ? Theme.of(context).primaryColor
//                                     : const Color(0xffdddddd),
//                                 activeBgColors: [
//                                   [
//                                     enableDark
//                                         ? const Color(0xff2a2d37)
//                                         : const Color(0xfff4f1f2),
//                                   ],
//                                   [
//                                     enableDark
//                                         ? const Color(0xfff4f1f2)
//                                         : const Color(0xff2a2d37),
//                                   ],
//                                 ],
//                                 inactiveBgColor: enableDark
//                                     ? const Color(0xff2a2d37)
//                                     : const Color(0xfff4f1f2),
//                                 minHeight: 30,
//                                 minWidth: 40,
//                                 totalSwitches: 2,
//                                 onToggle: (index) {
//                                   setState(() {
//                                     if (index == 0) {
//                                       enableDark = false;
//                                     } else {
//                                       enableDark = true;
//                                     }
//                                   });
//                                 },
//                                 icons: const [
//                                   CupertinoIcons.sun_max,
//                                   CupertinoIcons.moon,
//                                 ],
//                               ),
//                             ],
//                           ),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             '$val',
//                             style: TextStyle(
//                               color: enableDark
//                                   ? Theme.of(context).primaryColor
//                                   : Theme.of(context).colorScheme.secondary,
//                               fontSize: 25,
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 30,
//                           ),
//                           Text(
//                             '$ans',
//                             style: TextStyle(
//                                 color: enableDark
//                                     ? Theme.of(context).primaryColor
//                                     : Theme.of(context).colorScheme.secondary,
//                                 fontSize: 30),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: enableDark
//                               ? const Color(0xff2a2d37)
//                               : const Color(0xfff4f1f2),
//                           borderRadius: const BorderRadius.vertical(
//                             top: Radius.circular(20),
//                           )),
//                       padding: const EdgeInsets.all(8),
//                       child: GridView.count(
//                         crossAxisCount: 4,
//                         crossAxisSpacing: 20,
//                         mainAxisSpacing: 8,
//                         children: [
//                           for (String icon in button)
//                             GestureDetector(
//                               onTap: () {
//                                 valUpdate(icon);
//                               },
//                               child: Container(
//                                 width: w*0.05,
//                                 height: h*0.05,
//                                 decoration: BoxDecoration(
//                                   color: Colors.transparent,
//                                   border: Border.all(
//                                     color: (icon=='AC'||icon=='DEL')?Colors.redAccent
//                                     :(icon=='+'||icon=='-'||icon=='x'||icon=='÷'||icon=='=')?
//                                     Colors.greenAccent:(icon=='('||icon==')')?Colors.blueAccent:
//                                     enableDark?Theme.of(context).primaryColor:Theme.of(context).colorScheme.secondary,
//                                     width: 1,

//                                   ),
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: Center(child: Text(
//                                   icon,
//                                   style: TextStyle(
//                                     fontSize: 22,
//                                     color: (icon=='AC'||icon=='DEL')?Colors.redAccent
//                                     :(icon=='+'||icon=='-'||icon=='x'||icon=='÷'||icon=='=')?
//                                     Colors.greenAccent.shade400:(icon=='('||icon==')')?Colors.blueAccent:
//                                     enableDark?Theme.of(context).primaryColor:Theme.of(context).colorScheme.secondary,

//                                   ),
//                                 ),),
//                               ),
//                             )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   void valUpdate(String val){}
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CalcUi extends StatefulWidget {
  const CalcUi({super.key});

  @override
  State<CalcUi> createState() => _CalcUiState();
}

class _CalcUiState extends State<CalcUi> {
  List<String> button = [
    'AC',
    'DEL',
    '(',
    ')',
    '7',
    '8',
    '9',
    '',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];
  bool enableDark = false;
  String ans = '0';
  String val = '';

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: enableDark
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Header Section
              Container(
                width: w,
                height: h * 0.28,
                color: enableDark
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ToggleSwitch(
                                iconSize: 22,
                                initialLabelIndex: 0,
                                activeFgColor: enableDark
                                    ? const Color(0xff6b6f77)
                                    : Theme.of(context).colorScheme.secondary,
                                inactiveFgColor: enableDark
                                    ? Theme.of(context).primaryColor
                                    : const Color(0xffdddddd),
                                activeBgColors: [
                                  [
                                    enableDark
                                        ? const Color(0xff2a2d37)
                                        : const Color(0xfff4f1f2),
                                  ],
                                  [
                                    enableDark
                                        ? const Color(0xfff4f1f2)
                                        : const Color(0xff2a2d37),
                                  ],
                                ],
                                inactiveBgColor: enableDark
                                    ? const Color.fromARGB(255, 1, 8, 31)
                                    : const Color(0xfff4f1f2),
                                minHeight: 30,
                                minWidth: 40,
                                totalSwitches: 2,
                                onToggle: (index) {
                                  setState(() {
                                    enableDark = index == 1;
                                  });
                                },
                                icons: const [
                                  CupertinoIcons.sun_max,
                                  CupertinoIcons.moon,
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            val,
                            style: TextStyle(
                              color: enableDark
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).colorScheme.secondary,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            ans,
                            style: TextStyle(
                              color: enableDark
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).colorScheme.secondary,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Grid Section
              Container(
                decoration: BoxDecoration(
                  color: enableDark
                      ? const Color(0xff2a2d37)
                      : const Color(0xfff4f1f2),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    for (String icon in button)
                      GestureDetector(
                        onTap: () {
                          valUpdate(icon);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: (icon == 'AC' || icon == 'DEL')
                                  ? const Color.fromARGB(255, 226, 50, 50)
                                  : (icon == '+' ||
                                          icon == '-' ||
                                          icon == 'x' ||
                                          icon == '/' ||
                                          icon == '=')
                                      ? Colors.greenAccent
                                      : (icon == '(' || icon == ')')
                                          ? Colors.blueAccent
                                          : enableDark
                                              ? Theme.of(context).primaryColor
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              icon,
                              style: TextStyle(
                                fontSize: 22,
                                color: (icon == 'AC' || icon == 'DEL')
                                    ? Colors.redAccent
                                    : (icon == '+' ||
                                            icon == '-' ||
                                            icon == 'x' ||
                                            icon == '/' ||
                                            icon == '=')
                                        ? Colors.greenAccent.shade400
                                        : (icon == '(' || icon == ')')
                                            ? Colors.blueAccent
                                            : enableDark
                                                ? Theme.of(context).primaryColor
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void valUpdate(String s) {
    if (s == '0') val = '${val}0';
    if (s == '1') val = '${val}1';
    if (s == '2') val = '${val}2';
    if (s == '3') val = '${val}3';
    if (s == '4') val = '${val}4';
    if (s == '5') val = '${val}5';
    if (s == '6') val = '${val}6';
    if (s == '7') val = '${val}7';
    if (s == '8') val = '${val}8';
    if (s == '9') val = '${val}9';
    if (s == '+') val = '$val+';
    if (s == '-') val = '$val-';
    if (s == '/') val = '$val/';
    if (s == 'x') val = '$val*';
    if (s == 'AC') {
      val = ' ';
      ans = '0';
    }

    if (s == 'DEL') {
      if (val == '') {
        val = '';
      } else {
        val = val.substring(0, val.length - 1);
      }
    }
    if (s == '(') val = '$val(';
    if (s == ')') val = '$val)';
    if (s == '.') val = '$val.';
    if (s == '=') {
      ans = calc(val);
      val = '';
    }
    setState(() {});
  }

  String calc(String v) {
    String modVal = v;
    Parser p = Parser();
    Expression e = p.parse(modVal);
    ContextModel cm = ContextModel();
    num eval = e.evaluate(EvaluationType.REAL, cm);
    String a = eval.toString();
    return a.length > 20 ? eval.toStringAsPrecision(16) : a;
  }
}
