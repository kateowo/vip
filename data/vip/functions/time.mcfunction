# VIP timer


scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

# period
execute if score time_s internal matches 300 if score period internal matches 0 run function vip:main_game