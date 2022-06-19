class TravelWarrant {
  String person;
  String dateFrom;
  String dateTo;
  String destination;
  String reason;
  String remark;
  String meansOfTransportation;
  String advances;
  bool isNew;
  List<String> projects;

  TravelWarrant(this.person, this.dateFrom, this.dateTo, this.destination,
      this.reason, this.remark, this.meansOfTransportation, this.advances,
      {this.isNew = false, this.projects = const []});

  String datePeriod() {
    return '$dateFrom - $dateTo';
  }

  String getProjects(){
    String projects = '';

    if(this.projects.isEmpty){
      return projects;
    }

    for(var project in this.projects){
      projects += projects.isEmpty ? project : ', $project';
    }

    return projects;
  }

  static List<TravelWarrant> fetchDataTest() {
    return <TravelWarrant>[
      TravelWarrant('Jakov Kristović', '05.06.2022.', '07.06.2022.', 'Zagreb',
          '.debug konferencija' , 'Putovanje avionom', 'Avion', '', projects: <String>["PROJ1", "PROJ2"]),
      TravelWarrant('Luka Rokolj', '15.06.2022.', '20.08.2022.', 'Glasgow',
          'Sveučilišna posla', 'Ide preko volje', 'Avion', ''),
      TravelWarrant('Jack Sparrow', '02.07.2022.', '13.07.2022.', 'Black Pearl',
          'Promoviranje ruma', 'Ima li ga još?', 'Dingy', '350kn', isNew: true),
      TravelWarrant('Davy Jones', '05.07.2022.',  '10.07.2022.', 'The Flying Dutchman',
          'Đir oko Kariba', '', 'The Flying Dutchman', '', isNew: true, projects: <String>['PROJ2', 'PROJ3', 'PROJ4']),
      TravelWarrant('Hector Barbosa', '23.07.2022.', '24.07.2022.',
          'Isle de Muerte', 'Da guzica vidi puta', '', 'Black Pearl', '', isNew: true),
    ];
  }
}
