# VIP timer


scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

# death times
execute as @a if score @s death_time matches 1.. run scoreboard players add @s death_time_t 1
# convert to s
execute as @a if score @s death_time matches 1.. if score @s death_time_t matches 20.. run scoreboard players add @s death_time 1
execute as @a if score @s death_time matches 1.. if score @s death_time_t matches 20.. run scoreboard players set @s death_time_t 0
# respawn after 20s
execute as @a if score @s death_time matches 25.. run function vip:death/respawn
execute as @a if score @s death_time matches 25.. run scoreboard players reset @s death_time

# period
execute if score time_s internal matches 400 if score period internal matches 0 run worldborder set 20 2400
execute if score time_s internal matches 480 if score period internal matches 0 run function vip:main_game

execute if score time_s internal matches 1400 if score period internal matches 1 run worldborder set 125 1800

# bossbar
execute if score period internal matches -1 run bossbar set vip:main name {"text":"The game will begin shortly!"}
execute if score period internal matches 0 run bossbar set vip:main name ["",{"text":"VIP ","color":"green","bold":true},{"text":"8 minutes of preparation before your team's VIP is chosen."}]
execute if score period internal matches 0 run bossbar set vip:main max 480
execute if score period internal matches 1 run bossbar set vip:main name ["",{"text":"VIP ","color":"green","bold":true},{"text":"Defend your VIP to keep your team alive and win!"}]
execute if score period internal matches 1 run bossbar set vip:main max 1

# actionbar for dead-spectating
execute as @a if score @s death_time matches 1.. run title @s actionbar ["",{"text":"You are dead, "},{"score":{"name":"@s","objective":"death_time"},"color":"green","bold":true},{"text":"/25","color":"dark_green","bold":true},{"text":" seconds!"}]

# store value in bossbar
execute store result bossbar vip:main value run scoreboard players get time_s internal