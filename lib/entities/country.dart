class Country {
  Country(this.name, this.rate);

  String? name;
  String? rate;

  Country.fromJson(json)
      : name = json['name'],
        rate = json['rate'];
}
