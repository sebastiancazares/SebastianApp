class PersonajeModel {
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? image;
  String? origin;
  String? location;

  PersonajeModel({
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
    this.origin,
    this.location,
  });

  factory PersonajeModel.fromMapJson(Map<String, dynamic> data) =>
      PersonajeModel(
        name: data['name'],
        status: data['status'],
        image: data['image'],
        gender: data['gender'],
        species: data['species'],
        type: data['type'],
        origin: data['origin']['name'],
        location: data['location']['name'],
      );
}
