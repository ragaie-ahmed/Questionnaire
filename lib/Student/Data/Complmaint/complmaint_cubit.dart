// import 'dart:convert';
// import 'package:bloc/bloc.dart';
// import 'package:doctor/Student/Presentation/makeComplaint/Widget/ModelMessage.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:http/http.dart' as http;
//
// part 'complmaint_state.dart';
//
// class ComplmaintCubit extends Cubit<ComplmaintState> {
//   ComplmaintCubit() : super(ComplmaintInitial());
//   static ComplmaintCubit get(context) => BlocProvider.of(context);
//   ModelMessage? modelMessage;
//
//   void complmaint(String value) async {
//     emit(ComplmaintLoading());
//     try {
//       final requestBody = jsonEncode({"msg": value});
//       final contentLength = requestBody.length;
//
//       http.Response response = await http.post(
//         Uri.parse("https://excited-central-shrimp.ngrok-free.app/ChatBot"),
//         headers: {
//           'Content-Type': 'application/json',
//           'Content-Length': contentLength.toString(),
//         },
//         body: requestBody,
//       );
//
//       // Follow redirect if 308 status code is received
//       if (response.statusCode == 308) {
//         final newUrl = response.headers['location'];
//         if (newUrl != null) {
//           response = await http.post(
//             Uri.parse(newUrl),
//             headers: {
//               'Content-Type': 'application/json',
//               'Content-Length': contentLength.toString(),
//             },
//             body: requestBody,
//           );
//         }
//       }
//
//       // Check if the response status is 200 (OK)
//       if (response.statusCode == 200) {
//         // Ensure the response content type is JSON
//         if (response.headers['content-type']?.contains('application/json') == true) {
//           var responseBody = jsonDecode(response.body);
//           modelMessage = ModelMessage.fromJson(responseBody);
//           emit(ComplmaintSuccess(modelMessage!));
//         } else {
//           emit(ComplmaintError(error: 'Invalid content type'));
//         }
//       } else {
//         emit(ComplmaintError(error: 'Failed to get response: ${response.statusCode}'));
//       }
//     } catch (e) {
//       print(e.toString());
//       emit(ComplmaintError(error: e.toString()));
//     }
//   }
// }
