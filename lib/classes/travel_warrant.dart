class TravelWarrant {
  String person;
  String dateFrom;
  String dateTo;
  String destination;
  String reason;
  String remark;
  bool isNew;

  TravelWarrant(
      this.person,
      this.dateFrom,
      this.dateTo,
      this.destination,
      this.reason,
      this.remark,
      {this.isNew = false}
      );

  String datePeriod(){
    return '$dateFrom - $dateTo';
  }

  static List<TravelWarrant> fetchDataTest(){
    return <TravelWarrant>[
      TravelWarrant('Jakov Kristović', '05.06.2022.', '07.06.2022.', 'Zagreb', '.debug konferencija', 'Putovanje avionom'),
      TravelWarrant('Luka Rokolj', '15.06.2022.', '20.08.2022.', 'Glasgow', 'Sveučilišna posla', 'Ide preko volje'),
      TravelWarrant('Jack Sparrow', '02.07.2022.', '13.07.2022.', 'Black Pearl', 'Promoviranje ruma', 'Ima li ga još?', isNew: true),
      TravelWarrant('Davy Jones', '05.07.2022.', '10.07.2022.', 'The Flying Dutchman', 'Đir oko Kariba', '', isNew: true),
      TravelWarrant('Hector Barbosa', '23.07.2022.', '24.07.2022.', 'Isle de Muerte', 'Da guzica vidi puta', '', isNew: true),
    ];
  }
}