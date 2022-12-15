class Country {
  Country({
    required this.name,
    required this.flag,
    required this.region,
    required this.population,
    required this.description,
  });

  final String name;
  final String flag;
  final String region;
  final String population;
  final String description;

  Country.fromList(List<dynamic> list)
      : name = list[0],
        flag = list[1],
        region = list[2],
        population = list[3].toString(),
        description = 'Country description';
}
