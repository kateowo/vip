# VIP timer


scoreboard players add time internal 1

execute if score time internal matches 20.. run scoreboard players add time_s internal 1
execute if score time internal matches 20.. run scoreboard players set time internal 0

# period
execute if score time_s internal matches 400 if score period internal matches 0 run worldborder set 20 3000
execute if score time_s internal matches 480 if score period internal matches 0 run function vip:main_game

execute if score time_s internal matches 1400 if score period internal matches 1 run worldborder set 125 1900

# bossbar
execute if score period internal matches -1 run bossbar set vip:main name {"text":"The game will begin shortly!"}
execute if score period internal matches 0 run bossbar set vip:main name ["",{"text":"VIP ","color":"green","bold":true},{"text":"5 minutes of preparation before your team's VIP is chosen."}]
execute if score period internal matches 0 run bossbar set vip:main max 480
execute if score period internal matches 1 run bossbar set vip:main name ["",{"text":"VIP ","color":"green","bold":true},{"text":"Defend your VIP to keep your team alive and win!"}]
execute if score period internal matches 1 run bossbar set vip:main max 1

# store value in bossbar
execute store result bossbar vip:main value run scoreboard players get time_s internal