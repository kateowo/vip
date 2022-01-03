# VIP prepare
# runs on every /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add last_login dummy

# death
scoreboard objectives add death dummy

# teams
team add red
team add blue
team add green
team add yellow
# admin bypass
team add admin

# defaults
execute unless score defaults internal matches 1.. run function vip:defaults