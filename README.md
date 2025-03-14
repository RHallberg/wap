# wap

WAP, Weather App. 

Meant to be used with SMHI's API to fetch weather information for display in terminal or in something like dwmblocks.

## Installation

Dependencies: The crystal language

Just do `crystal build --release src/wap.cr`

## Usage

Provide the API url as well as the station id for the temperature and the station id for prognosis as input arguments. You can find the station ids on SMHIs website.
```bash
./wap opendata-download.example.com TEMPERATURE_STATION_ID PROGNOSIS_STATION_ID
```

## Contributors

- [Rickard Hallberg](https://github.com/RHallberg) - creator and maintainer
