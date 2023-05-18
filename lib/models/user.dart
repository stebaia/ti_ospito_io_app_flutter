class User {
  final String name;
  final String surname;
  final double lat;
  final double long;
  final String address;
  final int freePlace;

  User(
      {required this.name,
      required this.surname,
      required this.address,
      required this.freePlace,
      required this.lat,
      required this.long});
}
