class TravelWarrant {
  String person;
  String date;
  String destination;
  String reason;
  String remark;
  bool isNew;

  TravelWarrant(
      this.person,
      this.date,
      this.destination,
      this.reason,
      this.remark,
      {this.isNew = false}
      );

  static List<TravelWarrant> fetchDataTest(){
    return <TravelWarrant>[
      TravelWarrant('Jakov Kristović', '05-06-2022', 'Zagreb', '.debug konferencija', 'Putovanje avionom'),
      TravelWarrant('Luka Rokolj', '15-06-2022', 'Glasgow', 'University business', 'Ide preko volje'),
      TravelWarrant('Jack Sparrow', '02-07-2022', 'Black Pearl', 'Raid and steal', 'Shoo', isNew: true),
      TravelWarrant('Davy Jones', '05-07-2022', 'The Flying Dutchman', 'One day is over', '', isNew: true),
      TravelWarrant('Hector Barbosa', '23-07-2022', 'Isle de Muerte', 'Death', '', isNew: true),
    ];
  }
}