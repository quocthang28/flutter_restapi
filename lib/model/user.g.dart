// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as num?,
    name: json['name'] as String?,
    username: json['username'] as String?,
    email: json['email'] as String?,
    address: json['address'] == null
        ? null
        : AddressBean.fromJson(json['address'] as Map<String, dynamic>),
    phone: json['phone'] as String?,
    website: json['website'] as String?,
    company: json['company'] == null
        ? null
        : CompanyBean.fromJson(json['company'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };

CompanyBean _$CompanyBeanFromJson(Map<String, dynamic> json) {
  return CompanyBean(
    name: json['name'] as String?,
    catchPhrase: json['catchPhrase'] as String?,
    bs: json['bs'] as String?,
  );
}

Map<String, dynamic> _$CompanyBeanToJson(CompanyBean instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };

AddressBean _$AddressBeanFromJson(Map<String, dynamic> json) {
  return AddressBean(
    street: json['street'] as String?,
    suite: json['suite'] as String?,
    city: json['city'] as String?,
    zipcode: json['zipcode'] as String?,
    geo: json['geo'] == null
        ? null
        : GeoBean.fromJson(json['geo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AddressBeanToJson(AddressBean instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

GeoBean _$GeoBeanFromJson(Map<String, dynamic> json) {
  return GeoBean(
    lat: json['lat'] as String?,
    lng: json['lng'] as String?,
  );
}

Map<String, dynamic> _$GeoBeanToJson(GeoBean instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
