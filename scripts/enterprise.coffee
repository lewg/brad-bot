# Description:
#   Detect enterprise references
#
# Commands:
#   None


module.exports = (robot) ->

  quotes = [
    "Scotty, beam us up!",
    "Khaaaaaaaaaaan!",
    "Space: the final frontier.",
    "Live long and prosper.",
    "I'm a doctor, not a bricklayer!",
    "I'm a surgeon, not a psychiatrist!",
    "I'm a doctor, not a mechanic!",
    "I'm not a scientist or a physicist, Mr. Spock...",
    "I'm a doctor, not a escalator!",
    "I'm not a magician, Spock, just an old country doctor.",
    "I will not peddle flesh! I'm a physician.",
    "I'm a doctor, not a coal miner!",
    "I'm a Doctor, not an engineer!",
    "Dammit man, I'm a Doctor not a physicist!",
    "I'm a physician, not an engineer!",

  ]

  robot.hear /enterprise/i, (msg) ->

    msg.send "Like the starship? \"#{msg.random quotes}\""
