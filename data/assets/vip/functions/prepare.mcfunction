# VIP prepare
# runs on every /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy

# defaults
execute unless score defaults internal matches 1.. run function vip:defaults