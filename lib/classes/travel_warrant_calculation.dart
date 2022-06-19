class TravelWarrantCalculation {
  String person;
  String dateFrom;
  String dateTo;
  String destination;
  String reason;
  String remark;
  bool isNew;

  TravelWarrantCalculation(
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

  static List<TravelWarrantCalculation> fetchDataTest(){
    return <TravelWarrantCalculation>[
      TravelWarrantCalculation('Jack Sparrow', '24.03.2022.', '26.03.2022.', 'Tortuga', 'Povjerljivo', 'Putovanje brodom'),
      TravelWarrantCalculation('Tia Dalma', '01.04.2022.', '04.04.2022.', 'Davy Jones Locker', 'Osvojiti Jacka nazad', ''),
      TravelWarrantCalculation('Hector Barbosa', '02.05.2022.', '10.05.2022.', 'Isla de Muerte', 'Nabavka zlatnika', 'Moguća oštečenja broda', isNew: true),
      TravelWarrantCalculation('William Turner', '15.05.2022.', '17.05.2022.', 'The Fyling Dutchman', 'Godišnjica prestanka rada kao člana posade', '', isNew: true),
      TravelWarrantCalculation('Elizabeth Swann', '01.06.2022,', '04.06.2022.', 'Port Royal', 'Posjet kući', 'Putovanje kočijom', isNew: true),
    ];
  }
}