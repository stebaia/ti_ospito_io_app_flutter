import 'package:ti_ospito_io_app_flutter/models/city.dart';
import 'package:ti_ospito_io_app_flutter/models/place.dart';
import 'package:ti_ospito_io_app_flutter/models/sos_place.dart';
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

List<Place> getFakePlaceOspital = [
  Place(
      name: 'Ospedale M. Bufalini Cesena',
      address: 'Viale Giovanni Ghirotti, 286, 47521 Cesena FC',
      lat: 44.1342522,
      long: 12.2574514),
  Place(
      name: 'Ospedale Santa Colomba',
      address: 'Corso Giulio Perticari, 119, 47039 Savignano sul Rubicone FC',
      lat: 44.1235832,
      long: 12.1580953),
  Place(
      name: 'Ospedale "G.Marconi" di Cesenatico',
      address: 'Viale C. Abba, 102, 47042 Cesenatico FC',
      lat: 44.1235832,
      long: 12.1580953),
  Place(
      name: 'Ospedale San Giorgio Di Cervia',
      address: 'Via Tommaso Guerra, Via Ospedale, 17, 48015 Cervia RA',
      lat: 44.1779785,
      long: 11.8639369),
  Place(
      name: 'Ospedale "Franchini" di Santarcangelo di Romagna',
      address: 'Via Pedrignone, 3, 47822 Santarcangelo di Romagna RN',
      lat: 44.1235417,
      long: 12.1947816)
];

List<SosPlace> getFakeSosPlace = [
  SosPlace(
      date: '26/05',
      time: '16:00-19:00',
      activity: 'Pulizia Strade e Immobili',
      address: 'Via Caprera, 32',
      notes:
          'RECARSI DIRETTAMENTE SUL LUOGO DELL\'INTERVENTO MUNITI DI STIVALI, GUANTI',
      freePlace: 2,
      city: 'Cesena'),
  SosPlace(
      date: '26/05',
      time: '15:00-19:00',
      activity: 'Pulizia Strade e Immobili',
      address: 'Via Eredità, 71',
      notes:
          'RECARSI DIRETTAMENTE SUL LUOGO DELL\'INTERVENTO MUNITI DI STIVALI, GUANTI E PALE - referente Porcheddu Giuseppe 328/879273',
      freePlace: 5,
      city: 'Cesena'),
  SosPlace(
      date: '26/05',
      time: '14:00-18:00',
      activity: 'Pulizia Strade e Immobili',
      address: 'Via Mensa, 925',
      notes:
          'RECARSI DIRETTAMENTE SUL LUOGO DELL\'INTERVENTO MUNITI DI STIVALI, GUANTI E PALE - referente signora Bazzocchi Anna Maria 340/9174814',
      freePlace: 3,
      city: 'Cesena'),
  SosPlace(
      date: '26/05',
      time: '14:00-18:00',
      activity: 'Pulizia Strade e Immobili',
      address: 'Via Ravennate, 6928',
      notes:
          'RECARSI DIRETTAMENTE SUL LUOGO DELL\'INTERVENTO MUNITI DI STIVALI, GUANTI E PALE - REFERENTE GENNARO GIACOMO 3495910021',
      freePlace: 6,
      city: 'Cesena'),
  SosPlace(
      date: '26/05',
      time: '16:00-19:00',
      activity: 'Pulizia Strade e Immobili',
      address: 'Via Caprera, 32',
      notes:
          'RECARSI DIRETTAMENTE SUL LUOGO DELL\'INTERVENTO MUNITI DI STIVALI, GUANTI',
      freePlace: 2,
      city: 'Cesena'),
  SosPlace(
      date: '26/05',
      time: '14:00-20:00',
      activity: 'Pulizia Strade e Immobili',
      address: 'Via Roversano, 84',
      notes:
          'RECARSI DIRETTAMENTE SUL LUOGO DELL\'INTERVENTO MUNITI DI STIVALI, GUANTI, PALE, SECCHI E CARIOLE - referente graziani alessandra 3406217846',
      freePlace: 2,
      city: 'Cesena')
];

List<City> getSosPlaceCity = [
  City(name: 'Cesena', sosPlaceList: getFakeSosPlace)
];
