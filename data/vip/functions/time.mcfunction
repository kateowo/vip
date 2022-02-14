# VIP timer


scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

# death times
execute as @a if score @s death_time matches 1.. run scoreboard players add @s death_time_t 1
# convert to s
execute as @a if score @s death_time matches 1.. if score @s death_time_t matches 20.. run scoreboard players add @s death_time 1
execute as @a if score @s death_time matches 1.. if score @s death_time_t matches 20.. run scoreboard players set @s death_time_t 0
# respawn after set time
execute as @a if score @s death_time >= death_time global run function vip:death/respawn
execute as @a if score @s death_time >= death_time global run scoreboard players reset @s death_time

# FINALE CHECKS
execute if score finale internal matches 1.. run function vip:extras/finale
execute unless score finale internal matches 1.. run function vip:time_normal

# bossbar
execute if score period internal matches -1 run bossbar set vip:main name {"text":"The game will begin shortly!"}

execute if score period internal matches 1 run bossbar set vip:main name ["",{"text":"VIP \u0020 \u0020","color":"green","bold":true},{"text":"Defend your VIP to keep your team alive and win!"}]
execute if score period internal matches 1 run bossbar set vip:main max 1

execute if score period internal matches 1 run function vip:teams/bossbar

# actionbar for dead-spectating
execute as @a if score @s death_time matches 1.. run title @s actionbar ["",{"text":"You are dead, "},{"score":{"name":"@s","objective":"death_time"},"color":"green","bold":true},{"text":"/","color":"dark_green","bold":true},{"score":{"name":"death_time","objective":"global"},"color":"dark_green","bold":true},{"text":" seconds!"}]

# store value in bossbar
execute store result bossbar vip:main value run scoreboard players get time_s internal