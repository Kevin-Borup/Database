CREATE TABLE Location (
    LocationId int PRIMARY KEY,
    Postnummer int,
    By varchar(30),
    Land varchar(30)
);

CREATE TABLE WeatherIcon (
    Vejr varchar(30) PRIMARY KEY UNIQUE,
    Icon varchar(30)
);

CREATE TABLE Weather(
    Dato date,
    LocationId int,
    Min_temp int,
    Max_temp int,
    Solopgang timestamp,
    Solnedgang timestamp,
    CONSTRAINT PkWeather_datoLocationId PRIMARY KEY (Dato, LocationId),
    CONSTRAINT FkWeather_locationId FOREIGN KEY (LocationId) REFERENCES location(locationid)
);

CREATE TABLE WeatherIconCatalog (
    Dato date,
    LocationId int,
    Vejr varchar(30),
    CONSTRAINT pkWeatherIconCatalog_DatoLocationIdVejr PRIMARY KEY (Dato, LocationId, Vejr),
    CONSTRAINT FkWeatherIconCatalog_Dato FOREIGN KEY (Dato, LocationId) REFERENCES Weather(Dato, locationid),
    CONSTRAINT FkWeatherIconCatalog_Vejr FOREIGN KEY (Vejr) REFERENCES WeatherIcon(Vejr)
);

