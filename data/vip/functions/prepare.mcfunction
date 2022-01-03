# VIP prepare
# runs on every /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy

# teams
team add red
team add blue
team add green
team add yellow

# defaults
execute unless score defaults internal matches 1.. run function vip:defaults