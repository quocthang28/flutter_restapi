import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  num? id;
  String? name;
  String? username;
  String? email;
  AddressBean? address;
  String? phone;
  String? website;
  CompanyBean? company;

  User(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class CompanyBean {
  String? name;
  String? catchPhrase;
  String? bs;

  CompanyBean({this.name, this.catchPhrase, this.bs});

  factory CompanyBean.fromJson(Map<String, dynamic> json) =>
      _$CompanyBeanFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyBeanToJson(this);
}

@JsonSerializable()
class AddressBean {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  GeoBean? geo;

  AddressBean({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory AddressBean.fromJson(Map<String, dynamic> json) =>
      _$AddressBeanFromJson(json);

  Map<String, dynamic> toJson() => _$AddressBeanToJson(this);
}

@JsonSerializable()
class GeoBean {
  String? lat;
  String? lng;

  GeoBean({this.lat, this.lng});

  factory GeoBean.fromJson(Map<String, dynamic> json) =>
      _$GeoBeanFromJson(json);

  Map<String, dynamic> toJson() => _$GeoBeanToJson(this);
}
