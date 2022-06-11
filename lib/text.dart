// import 'package:flutter/material.dart';

// // class FruitColorizer extends TextEditingController {
// //   final Map<String, TextStyle> mapping;
// //   final Pattern pattern;

// //   FruitColorizer(this.mapping)
// //       : pattern =
// //             RegExp(mapping.keys.map((key) => RegExp.escape(key)).join('|'));
// //   @override
// //   TextSpan buildTextSpan({TextStyle style, bool withComposing}) {
// //     List<InlineSpan> children = [];
// //     // splitMapJoin is a bit tricky here but i found it very handy for populating children list
// //     text.splitMapJoin(
// //       pattern,
// //       onMatch: (Match match) {
// //         children.add(
// //             TextSpan(text: match[0], style: style.merge(mapping[match[0]])));
// //       },
// //       onNonMatch: (String text) {
// //         children.add(TextSpan(text: text, style: style));
// //       },
// //     );
// //     return TextSpan(style: style, children: children);
// //   }
// // }

// class text extends StatelessWidget {
//   const text({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Row(
//       children: <Widget>[
//         Expanded(
//           child: IconButton(
//             icon: Icon(LineIcons.times),
//             iconSize: 27,
//             onPressed: () {
//               bottomChangeFunc();
//             },
//           ),
//         ),
//         Expanded(
//           child: IconButton(
//             icon: Icon(LineIcons.bold),
//             iconSize: 27,
//             color: Theme
//                 .of(context)
//                 .iconTheme
//                 .color,
//             onPressed: () {
//             },
//           ),
//         ),
//         Expanded(
//           child: IconButton(
//             icon: Icon(LineIcons.italic),
//             iconSize: 27,
//             color: Theme
//                 .of(context)
//                 .iconTheme
//                 .color,
//             onPressed: () {
//             },
//           ),
//         ),
//         Expanded(
//           child: IconButton(
//             icon: Icon(LineIcons.underline),
//             iconSize: 27,
//             color: Theme
//                 .of(context)
//                 .iconTheme
//                 .color,
//             onPressed: () {
//             },
//           ),
//         ),
//         Expanded(
//           child: IconButton(
//             icon: Icon(LineIcons.link),
//             iconSize: 27,
//             color: Theme
//                 .of(context)
//                 .iconTheme
//                 .color,
//             onPressed: () {},
//           ),
//         ),
//       ],
//     ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Theme(
//                 data: Theme.of(context).copyWith(
//                     textSelectionTheme: TextSelectionThemeData(
//                         selectionColor: Color.fromARGB(255, 174, 255, 177))),
//                 child: TextFormField(
//                   // cursorColor: Color(0XFFFFCC00) //Cursor color change

//                   style: TextStyle(
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     // decorationColor: Color(0XFFFFCC00), //Font color change
//                     // backgroundColor: Color(
//                     // 0XFFFFCC00), //TextFormField title background color change
//                   ),
//                 )),
//           )
//           TextField(
//                 decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Start Typing your Message here',
//                     hintStyle: TextStyle(
//                       fontSize: 17,
//                       color: Theme.of(context).textTheme.subtitle.color
//                     )
//                 ),
//                 maxLines: null,
//                 minLines: 1,
//                 autocorrect: true,
//                 keyboardType: TextInputType.multiline,
//                 onChanged: (String str){
//                   print(str);
//                 },
//               style: TextStyle(
//                 color: Theme.of(context).textTheme.title.color,
//                 fontSize: 19,
//               ),
//               ),
//         ],
//       ),
//     );
//   }
// }
