class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  // Factory method para crear una instancia de YesNoModel a partir de un mapa JSON
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json[
            "answer"], // Asigna el valor de la clave "answer" del mapa JSON a la propiedad answer
        forced: json[
            "forced"], // Asigna el valor de la clave "forced" del mapa JSON a la propiedad forced
        image: json[
            "image"], // Asigna el valor de la clave "image" del mapa JSON a la propiedad image
      );
}
