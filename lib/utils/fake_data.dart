import 'package:ti_ospito_io_app_flutter/models/place.dart';
import 'package:ti_ospito_io_app_flutter/models/user.dart';

List<User> getFakeData = [
  User(
      name: 'Stefano',
      surname: 'Baiardi',
      address: 'Via Bologna 123, Cesena',
      telephone: '34033244324',
      freePlace: 5,
      lat: 44.133331,
      long: 12.24315,
      urlImage:
          'https://images.unsplash.com/photo-1598627446792-5d89ab3e3540?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aXRhbGlhbiUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
  User(
      name: 'Siciliani',
      surname: 'Giordano',
      address: 'Via Torino 123, Savignano',
      telephone: '34033244324',
      freePlace: 1,
      lat: 44.133331,
      long: 12.24315,
      urlImage:
          'https://static.independent.co.uk/2022/05/27/13/newFile-4.jpg?quality=75&width=990&crop=2339%3A1754%2Csmart&auto=webp'),
  User(
      name: 'Emma',
      surname: 'Fallaci',
      address: 'Via Rosmini 2383, Piavola',
      freePlace: 2,
      telephone: '34033244324',
      lat: 44.133331,
      long: 12.24315,
      urlImage:
          'https://cdn.images.express.co.uk/img/dynamic/79/590x/LAWSO-382027.jpg'),
  User(
      name: 'Siciliani',
      surname: 'Giordano',
      address: 'Via Torino 123, Savignano',
      freePlace: 5,
      telephone: '34033244324',
      lat: 44.133331,
      long: 12.24315,
      urlImage:
          'https://static.independent.co.uk/2022/05/27/13/newFile-4.jpg?quality=75&width=990&crop=2339%3A1754%2Csmart&auto=webp'),
  User(
      name: 'Quintilio',
      surname: 'Pinti',
      address: 'Viale dei Mille 1212, Cesenatico',
      freePlace: 6,
      telephone: '34033244324',
      lat: 44.133331,
      long: 12.24315,
      urlImage:
          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/03/07/12/toni-iwobi.jpg?quality=75&width=990&crop=2048%3A1536%2Csmart&auto=webp'),
  User(
      name: 'Giulia',
      surname: 'Riccardi',
      address: 'Via Torino 123, Savignano',
      freePlace: 5,
      telephone: '34033244324',
      lat: 44.133331,
      long: 12.24315,
      urlImage:
          'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/03/a0003408/img/basic/a0003408_main.jpg?20200827072016&q=80'),
];

List<Place> getPlaceFakeData = [
  Place(name: 'Pro loco Cesena', address: 'Via Provinciale 29'),
  Place(name: 'Piazza di Predappio Alta', address: 'Via Alta nuova 121'),
  Place(name: 'MARR Sfera', address: 'Viale Pennabilli, 1, 47838 Riccione RN'),
  Place(name: 'Acquadolce', address: 'Viale IV Novembre, 570, 47521 Cesena FC'),
];
