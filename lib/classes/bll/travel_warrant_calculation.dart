import 'package:argosy_companion/classes/bll/travel_warrant.dart';
import 'package:argosy_companion/classes/bll/wage.dart';

class TravelWarrantCalculation extends TravelWarrant {

  List<Wage> wages;
  List<String> transportationExpenses;
  List<String> otherExpenses;

  TravelWarrantCalculation(id, person, dateFrom, dateTo, destination, reason, remark,
      meansOfTransportation, advances, {isNew = false, projects = const [],
        this.wages = const [], this.transportationExpenses = const [], this.otherExpenses = const []}) :
      super (id, person, dateFrom, dateTo, destination, reason, remark,
          meansOfTransportation, advances);

  static List<TravelWarrantCalculation> fetchDataTest() {
    return <TravelWarrantCalculation>[
      TravelWarrantCalculation(1, 'Jakov Kristović', '05.01.2022.', '09.01.2022.', 'New York',
          'Poslovna konferencija', '.NET Days' , 'Avion', '',
          projects: <String>["PROJ11", "PROJ12"], wages: <Wage>[Wage('SAD', 4.00, 'HRK', 1600.00)]),
      TravelWarrantCalculation(2, 'Luka Rokolj', '12.02.2022.', '20.02.2022.', 'Amsterdam',
          'Službeni put', 'Funny Cake Days', 'Vlak', '1100 €'),
      TravelWarrantCalculation(3, 'Jack Sparrow', '13.02.2022.', '15.02.2022.', 'Port Royale',
          'Edukacija', 'Destilacija ruma', 'Dingy', '350 zlatnika', isNew: true),
      TravelWarrantCalculation(4, 'Davy Jones', '05.03.2022.',  '14.03.2022.', 'The Flying Dutchman',
          'Seminar', 'Nova generacija čvorova', 'Brod', '', isNew: true, projects: <String>['PROJ2', 'PROJ3', 'PROJ4']),
      TravelWarrantCalculation(5, 'Hector Barbosa', '19.04.2022.', '27.04.2022.', 'Tortuga',
          'Certifikacija', 'Biti kapetan u 21. stoljeću', 'Brod', '', isNew: true),
    ];
  }
}