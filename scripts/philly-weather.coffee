# Description
#   Gets the Philadelphia weather conditions
#
#
# Commands: 
# hubot weather
#

module.exports = (robot) ->
  robot.respond /weather( pic)?/i, (msg) ->
  
    xml2js = require 'xml2js'
    # inspect = require('eyes').inspector({maxLength: false})

    # Get the PHL weather
    msg.http('http://w1.weather.gov/xml/current_obs/KPHL.xml')
      .get() (err, res, body) ->
        
        parser = new xml2js.Parser()
        parser.parseString body, (err, result) -> 

          current_weather = result.current_observation
          # msg.send inspect(current_weather)

          if msg.match[1]
            msg.send "Conditions: " + current_weather.icon_url_base[0] + current_weather.icon_url_name[0]
          else 
            weather = "It's " + current_weather.temp_f[0] + "º"
            weather += " and " + current_weather.weather[0] 
            weather += " with " + current_weather.wind_mph[0] + " mph winds from the " + current_weather.wind_dir[0] 
            weather += " and " + current_weather.relative_humidity + "% humiditiy"
            msg.send weather



  
  
