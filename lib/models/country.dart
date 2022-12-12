class Country {
  Country({
    required this.name,
    required this.region,
    required this.population,
    required this.description,
  });

  final String name;
  final String region;
  final String population;
  final String description;

  Country.fromList(List<dynamic> list)
      : name = list[0],
        region = list[1],
        population = list[2].toString(),
        description = 'Country description';
}
