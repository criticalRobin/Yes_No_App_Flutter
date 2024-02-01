import 'package:yes_no_app/domain/entities/message.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  final _url = "https://yesno.wtf/api";

  Future<Message> getAnswer() async {
    final response = await _dio.get(_url);
    final answer = response.data["answer"];
    final image = response.data["image"];

    return (answer == "yes")
        ? Message(text: "Si", imageUrl: image, fromWho: FromWho.other)
        : Message(text: "No", imageUrl: image, fromWho: FromWho.other);
  }
}
