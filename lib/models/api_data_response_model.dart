class ApiDataResponseModel {
  ApiDataResponseModel({
    this.ip,
    this.ipDecimal,
    this.country,
    this.countryIso,
    this.countryEu,
    this.regionName,
    this.regionCode,
    this.zipCode,
    this.city,
    this.latitude,
    this.longitude,
    this.timeZone,
    this.asn,
    this.asnOrg,
    this.userAgent,
  });

  ApiDataResponseModel.fromJson(dynamic json) {
    ip = json['ip'];
    ipDecimal = json['ip_decimal'];
    country = json['country'];
    countryIso = json['country_iso'];
    countryEu = json['country_eu'];
    regionName = json['region_name'];
    regionCode = json['region_code'];
    zipCode = json['zip_code'];
    city = json['city'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    timeZone = json['time_zone'];
    asn = json['asn'];
    asnOrg = json['asn_org'];
    userAgent = json['user_agent'] != null
        ? UserAgent.fromJson(json['user_agent'])
        : null;
  }
  String? ip;
  int? ipDecimal;
  String? country;
  String? countryIso;
  bool? countryEu;
  String? regionName;
  String? regionCode;
  String? zipCode;
  String? city;
  double? latitude;
  double? longitude;
  String? timeZone;
  String? asn;
  String? asnOrg;
  UserAgent? userAgent;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ip'] = ip;
    map['ip_decimal'] = ipDecimal;
    map['country'] = country;
    map['country_iso'] = countryIso;
    map['country_eu'] = countryEu;
    map['region_name'] = regionName;
    map['region_code'] = regionCode;
    map['zip_code'] = zipCode;
    map['city'] = city;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['time_zone'] = timeZone;
    map['asn'] = asn;
    map['asn_org'] = asnOrg;
    if (userAgent != null) {
      map['user_agent'] = userAgent?.toJson();
    }
    return map;
  }
}

class UserAgent {
  UserAgent({
    this.product,
    this.version,
    this.comment,
    this.rawValue,
  });

  UserAgent.fromJson(dynamic json) {
    product = json['product'];
    version = json['version'];
    comment = json['comment'];
    rawValue = json['raw_value'];
  }
  String? product;
  String? version;
  String? comment;
  String? rawValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['product'] = product;
    map['version'] = version;
    map['comment'] = comment;
    map['raw_value'] = rawValue;
    return map;
  }
}
