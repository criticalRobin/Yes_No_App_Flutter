import 'package:yes_no_app/domain/entities/message.dart';
import 'package:dio/dio.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  final _url = "https://yesno.wtf/api";

  Future<Message> getAnswer() async {
    final response = await _dio.get(_url);
    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
