//: [Previous](@previous)

import Foundation

var responseJson = """
{
"latitude": 37.8267,
"longitude": -122.4233,
"timezone": "America/Los_Angeles",
"currently": {
"time": 1536666901,
"summary": "Clear",
"icon": "clear-night",
"nearestStormDistance": 225,
"nearestStormBearing": 355,
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 57.83,
"apparentTemperature": 57.83,
"dewPoint": 48.39,
"humidity": 0.71,
"pressure": 1011.61,
"windSpeed": 2.7,
"windGust": 8.4,
"windBearing": 257,
"cloudCover": 0.05,
"uvIndex": 0,
"visibility": 10,
"ozone": 277.43
},
"minutely": {
"summary": "Clear for the hour.",
"icon": "clear-night",
"data": [
{
"time": 1536666900,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536666960,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667020,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667080,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667140,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667200,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667260,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667320,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667380,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667440,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667500,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667560,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667620,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667680,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667740,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667800,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667860,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667920,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536667980,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668040,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668100,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668160,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668220,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668280,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668340,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668400,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668460,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668520,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668580,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668640,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668700,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668760,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668820,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668880,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536668940,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669000,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669060,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669120,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669180,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669240,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669300,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669360,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669420,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669480,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669540,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669600,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669660,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669720,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669780,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669840,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669900,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536669960,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670020,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670080,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670140,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670200,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670260,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670320,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670380,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670440,
"precipIntensity": 0,
"precipProbability": 0
},
{
"time": 1536670500,
"precipIntensity": 0,
"precipProbability": 0
}
]
},
"hourly": {
"summary": "Partly cloudy starting tonight.",
"icon": "partly-cloudy-night",
"data": [
{
"time": 1536663600,
"summary": "Clear",
"icon": "clear-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.9,
"apparentTemperature": 58.9,
"dewPoint": 48.36,
"humidity": 0.68,
"pressure": 1011.21,
"windSpeed": 2.99,
"windGust": 8.44,
"windBearing": 227,
"cloudCover": 0,
"uvIndex": 0,
"visibility": 10,
"ozone": 277.53
},
{
"time": 1536667200,
"summary": "Clear",
"icon": "clear-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 57.74,
"apparentTemperature": 57.74,
"dewPoint": 48.39,
"humidity": 0.71,
"pressure": 1011.65,
"windSpeed": 2.71,
"windGust": 8.39,
"windBearing": 260,
"cloudCover": 0.06,
"uvIndex": 0,
"visibility": 10,
"ozone": 277.43
},
{
"time": 1536670800,
"summary": "Clear",
"icon": "clear-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 56.3,
"apparentTemperature": 56.3,
"dewPoint": 49.07,
"humidity": 0.77,
"pressure": 1011.78,
"windSpeed": 4.43,
"windGust": 8.15,
"windBearing": 229,
"cloudCover": 0.12,
"uvIndex": 0,
"visibility": 10,
"ozone": 277.78
},
{
"time": 1536674400,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0.0025,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 54.71,
"apparentTemperature": 54.71,
"dewPoint": 49.72,
"humidity": 0.83,
"pressure": 1011.8,
"windSpeed": 4.58,
"windGust": 8.75,
"windBearing": 270,
"cloudCover": 0.2,
"uvIndex": 0,
"visibility": 10,
"ozone": 278.22
},
{
"time": 1536678000,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.002,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 55.14,
"apparentTemperature": 55.14,
"dewPoint": 50.21,
"humidity": 0.83,
"pressure": 1012.16,
"windSpeed": 5.06,
"windGust": 8.89,
"windBearing": 258,
"cloudCover": 0.25,
"uvIndex": 0,
"visibility": 10,
"ozone": 278.66
},
{
"time": 1536681600,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0008,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 57.71,
"apparentTemperature": 57.71,
"dewPoint": 50.14,
"humidity": 0.76,
"pressure": 1012.47,
"windSpeed": 4.25,
"windGust": 8.57,
"windBearing": 276,
"cloudCover": 0.25,
"uvIndex": 2,
"visibility": 10,
"ozone": 278.57
},
{
"time": 1536685200,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0.0007,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 60.7,
"apparentTemperature": 60.7,
"dewPoint": 50.37,
"humidity": 0.69,
"pressure": 1012.72,
"windSpeed": 5.17,
"windGust": 9.19,
"windBearing": 248,
"cloudCover": 0.24,
"uvIndex": 3,
"visibility": 10,
"ozone": 278.43
},
{
"time": 1536688800,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0.0011,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 62.85,
"apparentTemperature": 62.85,
"dewPoint": 50.66,
"humidity": 0.64,
"pressure": 1012.81,
"windSpeed": 6.17,
"windGust": 10.61,
"windBearing": 260,
"cloudCover": 0.22,
"uvIndex": 5,
"visibility": 10,
"ozone": 278.96
},
{
"time": 1536692400,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0.0007,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 64.74,
"apparentTemperature": 64.74,
"dewPoint": 50.49,
"humidity": 0.6,
"pressure": 1012.59,
"windSpeed": 7.84,
"windGust": 13,
"windBearing": 268,
"cloudCover": 0.18,
"uvIndex": 7,
"visibility": 10,
"ozone": 278.96
},
{
"time": 1536696000,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0.0005,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 66.39,
"apparentTemperature": 66.39,
"dewPoint": 50.38,
"humidity": 0.56,
"pressure": 1012.1,
"windSpeed": 9.58,
"windGust": 15.42,
"windBearing": 270,
"cloudCover": 0.13,
"uvIndex": 8,
"visibility": 10,
"ozone": 279.68
},
{
"time": 1536699600,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0.0005,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 67.35,
"apparentTemperature": 67.35,
"dewPoint": 50.42,
"humidity": 0.55,
"pressure": 1011.61,
"windSpeed": 11.15,
"windGust": 18.26,
"windBearing": 269,
"cloudCover": 0.09,
"uvIndex": 7,
"visibility": 10,
"ozone": 281.61
},
{
"time": 1536703200,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 67.67,
"apparentTemperature": 67.67,
"dewPoint": 50.49,
"humidity": 0.54,
"pressure": 1011.21,
"windSpeed": 12.48,
"windGust": 20.68,
"windBearing": 263,
"cloudCover": 0.06,
"uvIndex": 6,
"visibility": 10,
"ozone": 281.51
},
{
"time": 1536706800,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0.0006,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 67.37,
"apparentTemperature": 67.37,
"dewPoint": 50.7,
"humidity": 0.55,
"pressure": 1010.89,
"windSpeed": 12.85,
"windGust": 22.7,
"windBearing": 290,
"cloudCover": 0.04,
"uvIndex": 4,
"visibility": 10,
"ozone": 282.81
},
{
"time": 1536710400,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 66.54,
"apparentTemperature": 66.54,
"dewPoint": 50.85,
"humidity": 0.57,
"pressure": 1010.66,
"windSpeed": 13.79,
"windGust": 24.19,
"windBearing": 276,
"cloudCover": 0.03,
"uvIndex": 2,
"visibility": 10,
"ozone": 284.44
},
{
"time": 1536714000,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 64.69,
"apparentTemperature": 64.69,
"dewPoint": 50.94,
"humidity": 0.61,
"pressure": 1010.49,
"windSpeed": 13.25,
"windGust": 24.34,
"windBearing": 273,
"cloudCover": 0.03,
"uvIndex": 1,
"visibility": 10,
"ozone": 284.71
},
{
"time": 1536717600,
"summary": "Clear",
"icon": "clear-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 61.81,
"apparentTemperature": 61.81,
"dewPoint": 51.61,
"humidity": 0.69,
"pressure": 1010.28,
"windSpeed": 11.87,
"windGust": 19.84,
"windBearing": 278,
"cloudCover": 0.06,
"uvIndex": 0,
"visibility": 10,
"ozone": 285.4
},
{
"time": 1536721200,
"summary": "Clear",
"icon": "clear-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 59.81,
"apparentTemperature": 59.81,
"dewPoint": 51.6,
"humidity": 0.74,
"pressure": 1010.39,
"windSpeed": 11.46,
"windGust": 19.67,
"windBearing": 276,
"cloudCover": 0.09,
"uvIndex": 0,
"visibility": 10,
"ozone": 286.1
},
{
"time": 1536724800,
"summary": "Clear",
"icon": "clear-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 59.02,
"apparentTemperature": 59.02,
"dewPoint": 51.62,
"humidity": 0.76,
"pressure": 1010.66,
"windSpeed": 10.86,
"windGust": 18.93,
"windBearing": 277,
"cloudCover": 0.16,
"uvIndex": 0,
"visibility": 10,
"ozone": 286.71
},
{
"time": 1536728400,
"summary": "Clear",
"icon": "clear-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.68,
"apparentTemperature": 58.68,
"dewPoint": 51.6,
"humidity": 0.77,
"pressure": 1011,
"windSpeed": 10.22,
"windGust": 17.74,
"windBearing": 277,
"cloudCover": 0.24,
"uvIndex": 0,
"visibility": 10,
"ozone": 287.17
},
{
"time": 1536732000,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.26,
"apparentTemperature": 58.26,
"dewPoint": 51.54,
"humidity": 0.78,
"pressure": 1011.3,
"windSpeed": 9.77,
"windGust": 16.74,
"windBearing": 278,
"cloudCover": 0.31,
"uvIndex": 0,
"visibility": 10,
"ozone": 287.75
},
{
"time": 1536735600,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.43,
"apparentTemperature": 58.43,
"dewPoint": 51.38,
"humidity": 0.77,
"pressure": 1011.54,
"windSpeed": 9.62,
"windGust": 16.1,
"windBearing": 279,
"cloudCover": 0.36,
"uvIndex": 0,
"visibility": 10,
"ozone": 288.36
},
{
"time": 1536739200,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.34,
"apparentTemperature": 58.34,
"dewPoint": 51.16,
"humidity": 0.77,
"pressure": 1011.73,
"windSpeed": 9.67,
"windGust": 15.63,
"windBearing": 280,
"cloudCover": 0.41,
"uvIndex": 0,
"visibility": 10,
"ozone": 288.97
},
{
"time": 1536742800,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.02,
"apparentTemperature": 58.02,
"dewPoint": 51.01,
"humidity": 0.77,
"pressure": 1011.82,
"windSpeed": 9.67,
"windGust": 15.27,
"windBearing": 281,
"cloudCover": 0.45,
"uvIndex": 0,
"visibility": 10,
"ozone": 289.56
},
{
"time": 1536746400,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 57.02,
"apparentTemperature": 57.02,
"dewPoint": 51.03,
"humidity": 0.8,
"pressure": 1011.75,
"windSpeed": 9.66,
"windGust": 15.12,
"windBearing": 282,
"cloudCover": 0.49,
"uvIndex": 0,
"visibility": 10,
"ozone": 290.11
},
{
"time": 1536750000,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 55.78,
"apparentTemperature": 55.78,
"dewPoint": 51.15,
"humidity": 0.84,
"pressure": 1011.58,
"windSpeed": 9.58,
"windGust": 15.09,
"windBearing": 284,
"cloudCover": 0.53,
"uvIndex": 0,
"visibility": 10,
"ozone": 290.7
},
{
"time": 1536753600,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 54.77,
"apparentTemperature": 54.77,
"dewPoint": 51.22,
"humidity": 0.88,
"pressure": 1011.57,
"windSpeed": 9.42,
"windGust": 14.84,
"windBearing": 285,
"cloudCover": 0.54,
"uvIndex": 0,
"visibility": 10,
"ozone": 291.19
},
{
"time": 1536757200,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 53.97,
"apparentTemperature": 53.97,
"dewPoint": 51.22,
"humidity": 0.9,
"pressure": 1011.84,
"windSpeed": 9.02,
"windGust": 14.14,
"windBearing": 286,
"cloudCover": 0.51,
"uvIndex": 0,
"visibility": 10,
"ozone": 291.83
},
{
"time": 1536760800,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0006,
"precipProbability": 0.02,
"precipType": "rain",
"temperature": 53.45,
"apparentTemperature": 53.45,
"dewPoint": 51.18,
"humidity": 0.92,
"pressure": 1012.27,
"windSpeed": 8.5,
"windGust": 13.23,
"windBearing": 288,
"cloudCover": 0.45,
"uvIndex": 0,
"visibility": 10,
"ozone": 292.43
},
{
"time": 1536764400,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0012,
"precipProbability": 0.02,
"precipType": "rain",
"temperature": 53.65,
"apparentTemperature": 53.65,
"dewPoint": 51.16,
"humidity": 0.91,
"pressure": 1012.69,
"windSpeed": 8.23,
"windGust": 12.43,
"windBearing": 289,
"cloudCover": 0.41,
"uvIndex": 0,
"visibility": 10,
"ozone": 293.15
},
{
"time": 1536768000,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0011,
"precipProbability": 0.02,
"precipType": "rain",
"temperature": 54.98,
"apparentTemperature": 54.98,
"dewPoint": 51.13,
"humidity": 0.87,
"pressure": 1013.09,
"windSpeed": 7.94,
"windGust": 11.65,
"windBearing": 287,
"cloudCover": 0.44,
"uvIndex": 1,
"visibility": 10,
"ozone": 293.77
},
{
"time": 1536771600,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0008,
"precipProbability": 0.02,
"precipType": "rain",
"temperature": 57.39,
"apparentTemperature": 57.39,
"dewPoint": 51.12,
"humidity": 0.8,
"pressure": 1013.47,
"windSpeed": 7.41,
"windGust": 10.97,
"windBearing": 268,
"cloudCover": 0.51,
"uvIndex": 3,
"visibility": 10,
"ozone": 294.45
},
{
"time": 1536775200,
"summary": "Partly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0005,
"precipProbability": 0.02,
"precipType": "rain",
"temperature": 59.4,
"apparentTemperature": 59.4,
"dewPoint": 51.19,
"humidity": 0.74,
"pressure": 1013.73,
"windSpeed": 7.96,
"windGust": 10.98,
"windBearing": 273,
"cloudCover": 0.59,
"uvIndex": 4,
"visibility": 10,
"ozone": 295.16
},
{
"time": 1536778800,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0003,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 60.72,
"apparentTemperature": 60.72,
"dewPoint": 51.38,
"humidity": 0.71,
"pressure": 1013.82,
"windSpeed": 8.27,
"windGust": 12.03,
"windBearing": 287,
"cloudCover": 0.71,
"uvIndex": 5,
"visibility": 10,
"ozone": 296.06
},
{
"time": 1536782400,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0002,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 61.99,
"apparentTemperature": 61.99,
"dewPoint": 51.64,
"humidity": 0.69,
"pressure": 1013.76,
"windSpeed": 10.31,
"windGust": 13.74,
"windBearing": 258,
"cloudCover": 0.84,
"uvIndex": 5,
"visibility": 10,
"ozone": 297.05
},
{
"time": 1536786000,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0.0002,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 63.15,
"apparentTemperature": 63.15,
"dewPoint": 51.82,
"humidity": 0.67,
"pressure": 1013.62,
"windSpeed": 11.27,
"windGust": 15.57,
"windBearing": 267,
"cloudCover": 0.92,
"uvIndex": 4,
"visibility": 10,
"ozone": 297.83
},
{
"time": 1536789600,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 64.01,
"apparentTemperature": 64.01,
"dewPoint": 51.81,
"humidity": 0.65,
"pressure": 1013.32,
"windSpeed": 11.43,
"windGust": 17.55,
"windBearing": 249,
"cloudCover": 0.85,
"uvIndex": 4,
"visibility": 10,
"ozone": 298.14
},
{
"time": 1536793200,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 63.64,
"apparentTemperature": 63.64,
"dewPoint": 51.74,
"humidity": 0.65,
"pressure": 1012.94,
"windSpeed": 12.61,
"windGust": 19.65,
"windBearing": 296,
"cloudCover": 0.72,
"uvIndex": 3,
"visibility": 10,
"ozone": 298.24
},
{
"time": 1536796800,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 62.79,
"apparentTemperature": 62.79,
"dewPoint": 51.67,
"humidity": 0.67,
"pressure": 1012.62,
"windSpeed": 13.53,
"windGust": 21.07,
"windBearing": 274,
"cloudCover": 0.63,
"uvIndex": 2,
"visibility": 10,
"ozone": 298.28
},
{
"time": 1536800400,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 61.39,
"apparentTemperature": 61.39,
"dewPoint": 51.68,
"humidity": 0.7,
"pressure": 1012.48,
"windSpeed": 13.27,
"windGust": 21.44,
"windBearing": 275,
"cloudCover": 0.62,
"uvIndex": 0,
"visibility": 10,
"ozone": 298.37
},
{
"time": 1536804000,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-day",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 59.85,
"apparentTemperature": 59.85,
"dewPoint": 51.72,
"humidity": 0.74,
"pressure": 1012.43,
"windSpeed": 12.39,
"windGust": 21.15,
"windBearing": 271,
"cloudCover": 0.65,
"uvIndex": 0,
"visibility": 10,
"ozone": 298.35
},
{
"time": 1536807600,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.69,
"apparentTemperature": 58.69,
"dewPoint": 51.8,
"humidity": 0.78,
"pressure": 1012.48,
"windSpeed": 12.2,
"windGust": 20.7,
"windBearing": 276,
"cloudCover": 0.68,
"uvIndex": 0,
"visibility": 10,
"ozone": 298.3
},
{
"time": 1536811200,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 58.3,
"apparentTemperature": 58.3,
"dewPoint": 51.94,
"humidity": 0.79,
"pressure": 1012.72,
"windSpeed": 11.24,
"windGust": 20.12,
"windBearing": 287,
"cloudCover": 0.69,
"uvIndex": 0,
"visibility": 10,
"ozone": 298.18
},
{
"time": 1536814800,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 57.7,
"apparentTemperature": 57.7,
"dewPoint": 52.12,
"humidity": 0.82,
"pressure": 1013.05,
"windSpeed": 11.28,
"windGust": 19.33,
"windBearing": 264,
"cloudCover": 0.69,
"uvIndex": 0,
"visibility": 10,
"ozone": 298
},
{
"time": 1536818400,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0.0002,
"precipProbability": 0.01,
"precipType": "rain",
"temperature": 57.42,
"apparentTemperature": 57.42,
"dewPoint": 52.24,
"humidity": 0.83,
"pressure": 1013.3,
"windSpeed": 10.83,
"windGust": 18.7,
"windBearing": 270,
"cloudCover": 0.69,
"uvIndex": 0,
"visibility": 10,
"ozone": 297.51
},
{
"time": 1536822000,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 57.14,
"apparentTemperature": 57.14,
"dewPoint": 52.29,
"humidity": 0.84,
"pressure": 1013.37,
"windSpeed": 10.54,
"windGust": 18.41,
"windBearing": 269,
"cloudCover": 0.71,
"uvIndex": 0,
"visibility": 10,
"ozone": 296.66
},
{
"time": 1536825600,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 56.84,
"apparentTemperature": 56.84,
"dewPoint": 52.27,
"humidity": 0.85,
"pressure": 1013.38,
"windSpeed": 10.68,
"windGust": 18.26,
"windBearing": 270,
"cloudCover": 0.73,
"uvIndex": 0,
"visibility": 10,
"ozone": 295.62
},
{
"time": 1536829200,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 56.49,
"apparentTemperature": 56.49,
"dewPoint": 52.2,
"humidity": 0.86,
"pressure": 1013.38,
"windSpeed": 10.56,
"windGust": 17.95,
"windBearing": 270,
"cloudCover": 0.74,
"uvIndex": 0,
"visibility": 10,
"ozone": 294.85
},
{
"time": 1536832800,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 55.72,
"apparentTemperature": 55.72,
"dewPoint": 52.04,
"humidity": 0.87,
"pressure": 1013.4,
"windSpeed": 10.28,
"windGust": 17.37,
"windBearing": 271,
"cloudCover": 0.71,
"uvIndex": 0,
"visibility": 10,
"ozone": 294.62
},
{
"time": 1536836400,
"summary": "Mostly Cloudy",
"icon": "partly-cloudy-night",
"precipIntensity": 0,
"precipProbability": 0,
"temperature": 54.77,
"apparentTemperature": 54.77,
"dewPoint": 51.8,
"humidity": 0.9,
"pressure": 1013.42,
"windSpeed": 9.92,
"windGust": 16.63,
"windBearing": 272,
"cloudCover": 0.68,
"uvIndex": 0,
"visibility": 10,
"ozone": 294.7
}
]
},
"daily": {
"summary": "No precipitation throughout the week, with high temperatures rising to 69°F on Sunday.",
"icon": "clear-day",
"data": [
{
"time": 1536649200,
"summary": "Partly cloudy overnight.",
"icon": "partly-cloudy-night",
"sunriseTime": 1536673790,
"sunsetTime": 1536719126,
"moonPhase": 0.08,
"precipIntensity": 0.0004,
"precipIntensityMax": 0.0025,
"precipIntensityMaxTime": 1536674400,
"precipProbability": 0.04,
"precipType": "rain",
"temperatureHigh": 67.67,
"temperatureHighTime": 1536703200,
"temperatureLow": 53.45,
"temperatureLowTime": 1536760800,
"apparentTemperatureHigh": 67.67,
"apparentTemperatureHighTime": 1536703200,
"apparentTemperatureLow": 53.45,
"apparentTemperatureLowTime": 1536760800,
"dewPoint": 50.21,
"humidity": 0.68,
"pressure": 1011.52,
"windSpeed": 7.5,
"windGust": 24.34,
"windGustTime": 1536714000,
"windBearing": 268,
"cloudCover": 0.12,
"uvIndex": 8,
"uvIndexTime": 1536696000,
"visibility": 10,
"ozone": 280.93,
"temperatureMin": 54.71,
"temperatureMinTime": 1536674400,
"temperatureMax": 67.67,
"temperatureMaxTime": 1536703200,
"apparentTemperatureMin": 54.71,
"apparentTemperatureMinTime": 1536674400,
"apparentTemperatureMax": 67.67,
"apparentTemperatureMaxTime": 1536703200
},
{
"time": 1536735600,
"summary": "Mostly cloudy throughout the day.",
"icon": "partly-cloudy-day",
"sunriseTime": 1536760240,
"sunsetTime": 1536805433,
"moonPhase": 0.11,
"precipIntensity": 0.0003,
"precipIntensityMax": 0.0012,
"precipIntensityMaxTime": 1536764400,
"precipProbability": 0.07,
"precipType": "rain",
"temperatureHigh": 64.01,
"temperatureHighTime": 1536789600,
"temperatureLow": 52.85,
"temperatureLowTime": 1536847200,
"apparentTemperatureHigh": 64.01,
"apparentTemperatureHighTime": 1536789600,
"apparentTemperatureLow": 52.85,
"apparentTemperatureLowTime": 1536847200,
"dewPoint": 51.48,
"humidity": 0.78,
"pressure": 1012.65,
"windSpeed": 10.03,
"windGust": 21.44,
"windGustTime": 1536800400,
"windBearing": 277,
"cloudCover": 0.6,
"uvIndex": 5,
"uvIndexTime": 1536778800,
"visibility": 10,
"ozone": 294.75,
"temperatureMin": 53.45,
"temperatureMinTime": 1536760800,
"temperatureMax": 64.01,
"temperatureMaxTime": 1536789600,
"apparentTemperatureMin": 53.45,
"apparentTemperatureMinTime": 1536760800,
"apparentTemperatureMax": 64.01,
"apparentTemperatureMaxTime": 1536789600
},
{
"time": 1536822000,
"summary": "Partly cloudy throughout the day.",
"icon": "partly-cloudy-day",
"sunriseTime": 1536846690,
"sunsetTime": 1536891739,
"moonPhase": 0.15,
"precipIntensity": 0.0003,
"precipIntensityMax": 0.0014,
"precipIntensityMaxTime": 1536904800,
"precipProbability": 0.11,
"precipType": "rain",
"temperatureHigh": 64.26,
"temperatureHighTime": 1536876000,
"temperatureLow": 51.59,
"temperatureLowTime": 1536930000,
"apparentTemperatureHigh": 64.26,
"apparentTemperatureHighTime": 1536876000,
"apparentTemperatureLow": 51.59,
"apparentTemperatureLowTime": 1536930000,
"dewPoint": 51.27,
"humidity": 0.8,
"pressure": 1014.91,
"windSpeed": 9.52,
"windGust": 18.41,
"windGustTime": 1536822000,
"windBearing": 272,
"cloudCover": 0.45,
"uvIndex": 6,
"uvIndexTime": 1536865200,
"visibility": 10,
"ozone": 299.04,
"temperatureMin": 52.85,
"temperatureMinTime": 1536847200,
"temperatureMax": 64.26,
"temperatureMaxTime": 1536876000,
"apparentTemperatureMin": 52.85,
"apparentTemperatureMinTime": 1536847200,
"apparentTemperatureMax": 64.26,
"apparentTemperatureMaxTime": 1536876000
},
{
"time": 1536908400,
"summary": "Partly cloudy throughout the day.",
"icon": "partly-cloudy-day",
"sunriseTime": 1536933140,
"sunsetTime": 1536978045,
"moonPhase": 0.18,
"precipIntensity": 0.0004,
"precipIntensityMax": 0.0013,
"precipIntensityMaxTime": 1536908400,
"precipProbability": 0.11,
"precipType": "rain",
"temperatureHigh": 68.24,
"temperatureHighTime": 1536962400,
"temperatureLow": 52.51,
"temperatureLowTime": 1537009200,
"apparentTemperatureHigh": 68.24,
"apparentTemperatureHighTime": 1536962400,
"apparentTemperatureLow": 52.51,
"apparentTemperatureLowTime": 1537009200,
"dewPoint": 50.76,
"humidity": 0.78,
"pressure": 1014.21,
"windSpeed": 6.33,
"windGust": 14.78,
"windGustTime": 1536973200,
"windBearing": 267,
"cloudCover": 0.54,
"uvIndex": 6,
"uvIndexTime": 1536955200,
"visibility": 10,
"ozone": 294.71,
"temperatureMin": 51.59,
"temperatureMinTime": 1536930000,
"temperatureMax": 68.24,
"temperatureMaxTime": 1536962400,
"apparentTemperatureMin": 51.59,
"apparentTemperatureMinTime": 1536930000,
"apparentTemperatureMax": 68.24,
"apparentTemperatureMaxTime": 1536962400
},
{
"time": 1536994800,
"summary": "Clear throughout the day.",
"icon": "clear-day",
"sunriseTime": 1537019590,
"sunsetTime": 1537064351,
"moonPhase": 0.21,
"precipIntensity": 0,
"precipIntensityMax": 0.0002,
"precipIntensityMaxTime": 1537030800,
"precipProbability": 0,
"temperatureHigh": 65.09,
"temperatureHighTime": 1537048800,
"temperatureLow": 52.48,
"temperatureLowTime": 1537106400,
"apparentTemperatureHigh": 65.09,
"apparentTemperatureHighTime": 1537048800,
"apparentTemperatureLow": 52.48,
"apparentTemperatureLowTime": 1537106400,
"dewPoint": 51.62,
"humidity": 0.8,
"pressure": 1013.88,
"windSpeed": 6.3,
"windGust": 16.77,
"windGustTime": 1537063200,
"windBearing": 265,
"cloudCover": 0.01,
"uvIndex": 7,
"uvIndexTime": 1537038000,
"visibility": 10,
"ozone": 305.61,
"temperatureMin": 52.51,
"temperatureMinTime": 1537009200,
"temperatureMax": 65.09,
"temperatureMaxTime": 1537048800,
"apparentTemperatureMin": 52.51,
"apparentTemperatureMinTime": 1537009200,
"apparentTemperatureMax": 65.09,
"apparentTemperatureMaxTime": 1537048800
},
{
"time": 1537081200,
"summary": "Clear throughout the day.",
"icon": "clear-day",
"sunriseTime": 1537106040,
"sunsetTime": 1537150656,
"moonPhase": 0.24,
"precipIntensity": 0,
"precipIntensityMax": 0.0001,
"precipIntensityMaxTime": 1537120800,
"precipProbability": 0,
"temperatureHigh": 68.54,
"temperatureHighTime": 1537135200,
"temperatureLow": 52.28,
"temperatureLowTime": 1537189200,
"apparentTemperatureHigh": 68.54,
"apparentTemperatureHighTime": 1537135200,
"apparentTemperatureLow": 52.28,
"apparentTemperatureLowTime": 1537189200,
"dewPoint": 49.87,
"humidity": 0.71,
"pressure": 1014.93,
"windSpeed": 5.59,
"windGust": 14.58,
"windGustTime": 1537142400,
"windBearing": 280,
"cloudCover": 0,
"uvIndex": 8,
"uvIndexTime": 1537128000,
"visibility": 10,
"ozone": 293.37,
"temperatureMin": 52.48,
"temperatureMinTime": 1537106400,
"temperatureMax": 68.54,
"temperatureMaxTime": 1537135200,
"apparentTemperatureMin": 52.48,
"apparentTemperatureMinTime": 1537106400,
"apparentTemperatureMax": 68.54,
"apparentTemperatureMaxTime": 1537135200
},
{
"time": 1537167600,
"summary": "Clear throughout the day.",
"icon": "clear-day",
"sunriseTime": 1537192490,
"sunsetTime": 1537236962,
"moonPhase": 0.27,
"precipIntensity": 0,
"precipIntensityMax": 0,
"precipProbability": 0,
"temperatureHigh": 67.86,
"temperatureHighTime": 1537221600,
"temperatureLow": 52.85,
"temperatureLowTime": 1537268400,
"apparentTemperatureHigh": 67.86,
"apparentTemperatureHighTime": 1537221600,
"apparentTemperatureLow": 52.85,
"apparentTemperatureLowTime": 1537268400,
"dewPoint": 50.44,
"humidity": 0.74,
"pressure": 1013.7,
"windSpeed": 4.26,
"windGust": 11.67,
"windGustTime": 1537228800,
"windBearing": 244,
"cloudCover": 0,
"uvIndex": 8,
"uvIndexTime": 1537214400,
"visibility": 10,
"ozone": 281.52,
"temperatureMin": 52.28,
"temperatureMinTime": 1537189200,
"temperatureMax": 67.86,
"temperatureMaxTime": 1537221600,
"apparentTemperatureMin": 52.28,
"apparentTemperatureMinTime": 1537189200,
"apparentTemperatureMax": 67.86,
"apparentTemperatureMaxTime": 1537221600
},
{
"time": 1537254000,
"summary": "Clear throughout the day.",
"icon": "clear-day",
"sunriseTime": 1537278940,
"sunsetTime": 1537323267,
"moonPhase": 0.31,
"precipIntensity": 0.0001,
"precipIntensityMax": 0.0003,
"precipIntensityMaxTime": 1537326000,
"precipProbability": 0.02,
"precipType": "rain",
"temperatureHigh": 67.22,
"temperatureHighTime": 1537311600,
"temperatureLow": 54.18,
"temperatureLowTime": 1537365600,
"apparentTemperatureHigh": 67.22,
"apparentTemperatureHighTime": 1537311600,
"apparentTemperatureLow": 54.18,
"apparentTemperatureLowTime": 1537365600,
"dewPoint": 51.36,
"humidity": 0.78,
"pressure": 1013.17,
"windSpeed": 4.26,
"windGust": 10.64,
"windGustTime": 1537315200,
"windBearing": 235,
"cloudCover": 0.01,
"uvIndex": 8,
"uvIndexTime": 1537300800,
"visibility": 10,
"ozone": 279.5,
"temperatureMin": 52.85,
"temperatureMinTime": 1537268400,
"temperatureMax": 67.22,
"temperatureMaxTime": 1537311600,
"apparentTemperatureMin": 52.85,
"apparentTemperatureMinTime": 1537268400,
"apparentTemperatureMax": 67.22,
"apparentTemperatureMaxTime": 1537311600
}
]
},
"flags": {
"sources": [
"nearest-precip",
"nwspa",
"cmc",
"gfs",
"hrrr",
"icon",
"isd",
"madis",
"nam",
"sref",
"darksky"
],
"nearest-station": 1.839,
"units": "us"
},
"offset": -7
}
"""


func encode<T>(of model: T) throws where T: Codable {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    let encodedData = try encoder.encode(model)
    print(String(data: encodedData, encoding: .utf8)!)
}
func decode<T>(of jsonString: String, type: T.Type) throws -> T where T: Codable {
    let data = jsonString.data(using: .utf8)!
    let decoder = JSONDecoder()
    let model = try decoder.decode(T.self, from: data)
    return model
}

//
//  DarkSky.swift
//  HelloUber
//
//  Created by Yi JIANG on 11/9/18.
//  Copyright © 2018 Uber. All rights reserved.
//


struct DarkSky: Codable {
    
    let latitude: Double
    let longitude: Double
    let timezone: String
    let currently: Currently
    let daily: Daily
    let flags: Flags
    
    struct Currently: Codable {
        let time: Int32
        let summary: String
        let icon: String
        let temperature: Double
        let humidity: Double
        let pressure: Double
        let windSpeed: Double
        let windGust: Double
        let windBearing: Double
        let cloudCover: Double
        let uvIndex: Int
        let visibility: Int
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            time = try container.decode(Int32.self, forKey: .time)
            summary = try container.decode(String.self, forKey: .summary)
            icon = try container.decode(String.self, forKey: .icon)
            temperature = try container.decode(Double.self, forKey: .temperature)
            humidity = try container.decode(Double.self, forKey: .humidity)
            pressure = try container.decode(Double.self, forKey: .pressure)
            windSpeed = try container.decode(Double.self, forKey: .windSpeed)
            windGust = try container.decode(Double.self, forKey: .windGust)
            windBearing = try container.decode(Double.self, forKey: .windBearing)
            cloudCover = try container.decode(Double.self, forKey: .cloudCover)
            uvIndex = try container.decode(Int.self, forKey: .uvIndex)
            visibility = try container.decode(Int.self, forKey: .visibility)
        }
    }
    
    struct Daily: Codable {
        let summary: String
        let icon: String
        let data: [Data]
        
        struct Data: Codable {
            let time: Int32
            let summary: String
            let icon: String
            let temperatureMax: Double
            let temperatureMin: Double
            let humidity: Double
            let pressure: Double
            let windSpeed: Double
            let windGust: Double
            let windBearing: Double
            let cloudCover: Double
            let uvIndex: Int
            let visibility: Int
            let sunriseTime: Int32
            let sunsetTime: Int32
            
            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                time = try container.decode(Int32.self, forKey: .time)
                summary = try container.decode(String.self, forKey: .summary)
                icon = try container.decode(String.self, forKey: .icon)
                temperatureMax = try container.decode(Double.self, forKey: .temperatureMax)
                temperatureMin = try container.decode(Double.self, forKey: .temperatureMin)
                humidity = try container.decode(Double.self, forKey: .humidity)
                pressure = try container.decode(Double.self, forKey: .pressure)
                windSpeed = try container.decode(Double.self, forKey: .windSpeed)
                windGust = try container.decode(Double.self, forKey: .windGust)
                windBearing = try container.decode(Double.self, forKey: .windBearing)
                cloudCover = try container.decode(Double.self, forKey: .cloudCover)
                uvIndex = try container.decode(Int.self, forKey: .uvIndex)
                visibility = try container.decode(Int.self, forKey: .visibility)
                sunriseTime = try container.decode(Int32.self, forKey: .sunriseTime)
                sunsetTime = try container.decode(Int32.self, forKey: .sunsetTime)
            }
        }
        
        init(from decoder: Decoder) throws{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            summary = try container.decode(String.self, forKey: .summary)
            icon = try container.decode(String.self, forKey: .icon)
            var unkeyedContainer = try container.nestedUnkeyedContainer(forKey: .data)
            var data = [Data]()
            while !unkeyedContainer.isAtEnd {
                let datum = try unkeyedContainer.decode(Data.self)
                data.append(datum)
            }
            self.data = data
        }
    }
    
    struct Flags: Codable {
        let sources: [String]
        let nearestStation: Double
        let units: String
        
        enum CodingKeys: String, CodingKey {
            case sources
            case units
            case nearestStation = "nearest-station"
        }
        
        init(from decoder: Decoder) throws{
            let container = try decoder.container(keyedBy: CodingKeys.self)
            var unkeyedContainer = try container.nestedUnkeyedContainer(forKey: .sources)
            var sources = [String]()
            while !unkeyedContainer.isAtEnd {
                let source = try unkeyedContainer.decode(String.self)
                sources.append(source)
            }
            self.sources = sources
            units = try container.decode(String.self, forKey: .units)
            nearestStation = try container.decode(Double.self, forKey: .nearestStation)
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        latitude = try container.decode(Double.self, forKey: .latitude)
        longitude = try container.decode(Double.self, forKey: .longitude)
        timezone = try container.decode(String.self, forKey: .timezone)
        currently = try container.decode(Currently.self, forKey: .currently)
        daily = try container.decode(Daily.self, forKey: .daily)
        flags = try container.decode(Flags.self, forKey: .flags)
    }
    
}

extension DarkSky {
    
    func encode<T>(of model: T) throws where T: Codable {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let encodedData = try encoder.encode(model)
        print(String(data: encodedData, encoding: .utf8)!)
    }
    
    func decode<T>(of jsonString: String, type: T.Type) throws -> T where T: Codable {
        let data = jsonString.data(using: .utf8)!
        let decoder = JSONDecoder()
        let model = try! decoder.decode(T.self, from: data)
        return model
    }
    
}


let sky = try! decode(of: responseJson, type: DarkSky.self)
dump(sky)
print("🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨🚨")
try! encode(of: sky)
