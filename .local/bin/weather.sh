#!/bin/bash
json=$(curl -s "http://dataservice.accuweather.com/currentconditions/v1/260493?apikey=5UoFiSjInAYhX0eYmXs1USQzcBMHnUaz")
echo $json | jq -r '.[0] | (."Temperature"."Metric"."Value"|tostring) + "°C" + " " + ."WeatherText"'
