class Country {
  Country({
    required this.name,
    required this.region,
    required this.population,
  });

  final String name;
  final String region;
  final String population;

  Country.fromList(List<dynamic> list)
      : name = list[0],
        region = list[1],
        population = list[2].toString();
}
