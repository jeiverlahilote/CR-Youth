class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimezone timezone;
  UserLocation({
    required this.city,
    required this.coordinates,
    required this.country,
    required this.postcode,
    required this.state,
    required this.street,
    required this.timezone,
  });
}

class LocationStreet {
  final int number;
  final String name;
  LocationStreet ({
    required this.name,
    required this.number,
  });
}

class LocationCoordinate {
  final String latitude;
  final String longitude;
  LocationCoordinate({
    required this.latitude,
    required this.longitude,
  });
}

class LocationTimezone {
  final String offset;
  final String description;
  LocationTimezone({
    required this.description,
    required this.offset,
  });
}