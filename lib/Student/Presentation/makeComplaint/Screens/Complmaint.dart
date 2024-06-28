// import 'dart:convert';
// import 'package:chat_bubbles/bubbles/bubble_normal.dart';
// import 'package:doctor/Student/Data/Complmaint/complmaint_cubit.dart';
// import 'package:doctor/Student/Presentation/makeComplaint/Widget/ModelMessage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;
//
// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});
//
//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   TextEditingController controller = TextEditingController();
//   ScrollController scrollController = ScrollController();
//
//   List<ModelMessage> msgs = [];
//
//   void sendMsg() {
//     if (controller.text.trim().isEmpty) return;
//     final userMessage = ModelMessage(answer: controller.text.trim(), : true);
//     setState(() {
//       msgs.insert(0, userMessage);
//     });
//     context.read<ComplmaintCubit>().complmaint(controller.text.trim());
//     controller.clear();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Chat Bot"),
//       ),
//       body: BlocConsumer<ComplmaintCubit, ComplmaintState>(
//         listener: (context, state) {
//           if (state is ComplmaintSuccess) {
//             setState(() {
//               msgs.insert(0, state.message);
//             });
//           } else if (state is ComplmaintError) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(content: Text(state.error)),
//             );
//           }
//         },
//         builder: (context, state) {
//           return Column(
//             children: [
//               const SizedBox(height: 8),
//               Expanded(
//                 child: ListView.builder(
//                   controller: scrollController,
//                   itemCount: msgs.length + (state is ComplmaintLoading ? 1 : 0),
//                   shrinkWrap: true,
//                   reverse: true,
//                   itemBuilder: (context, index) {
//                     if (index == 0 && state is ComplmaintLoading) {
//                       return Column(
//                         children: [
//                           BubbleNormal(
//                             text: "Loading",
//                             isSender: true,
//                             color: Colors.blue.shade100,
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.only(left: 16, top: 4),
//                             child: Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text("Typing..."),
//                             ),
//                           ),
//                         ],
//                       );
//                     } else {
//                       final msgIndex = state is ComplmaintLoading ? index - 1 : index;
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 4),
//                         child: BubbleNormal(
//                           text: msgs[msgIndex].answer!,
//                           isSender: true,
//                           color: false!
//                               ? Colors.blue.shade100
//                               : Colors.grey.shade200,
//                         ),
//                       );
//                     }
//                   },
//                 ),
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: double.infinity,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 8),
//                           child: TextField(
//                             controller: controller,
//                             textCapitalization: TextCapitalization.sentences,
//                             onSubmitted: (value) {
//                               sendMsg();
//                             },
//                             textInputAction: TextInputAction.send,
//                             showCursor: true,
//                             decoration: const InputDecoration(
//                               border: InputBorder.none,
//                               hintText: "Enter text",
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       sendMsg();
//                     },
//                     child: Container(
//                       height: 40,
//                       width: 40,
//                       decoration: BoxDecoration(
//                         color: Colors.blue,
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: const Icon(
//                         Icons.send,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                 ],
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
// // import 'package:doctor/Student/Data/Complmaint/complmaint_cubit.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// //
// // class ChatScreen extends StatelessWidget {
// //   const ChatScreen({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: BlocConsumer<ComplmaintCubit, ComplmaintState>(
// //         builder: (context, state) {
// //             return Column(
// //               children: [
// //                 Text("ComplmaintCubit.get(context).modelMessage.answer.toString()"),
// //                 MaterialButton(
// //                   onPressed: () {
// //                     ComplmaintCubit.get(context).complmaint("ازاي اختار صاحب الشقة");
// //                   },
// //                   child: Text("send"),
// //                 )
// //               ],
// //             );
// //
// //         },
// //         listener: (context, state) {},
// //       ),
// //     );
// //   }
// // }
