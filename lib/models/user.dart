class User {
  final String name;
  final String surname;
  final double lat;
  final double long;
  final String address;
  final int freePlace;
  final String urlImage;
  final String telephone;

  User(
      {required this.name,
      required this.surname,
      required this.address,
      required this.freePlace,
      required this.lat,
      required this.long,
      required this.urlImage,
      required this.telephone});
}
