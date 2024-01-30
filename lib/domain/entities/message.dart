enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageUtl;
  final FromWho fromWho;

  Message({required this.text, this.imageUtl, required this.fromWho});
}
