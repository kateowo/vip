# VIP prepare
# runs on every /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add last_login dummy

# bossbar
bossbar add vip:main ""
bossbar set vip:main name {"text":"The game will begin shortly!"}
bossbar set vip:main color green

# death
scoreboard objectives add death deathCount
# death times
scoreboard objectives add death_time dummy
scoreboard objectives add death_time_t dummy

# teams
team add red
team add blue
team add green
team add yellow
# admin bypass
team add admin

# defaults
execute unless score defaults internal matches 1.. run function vip:defaults