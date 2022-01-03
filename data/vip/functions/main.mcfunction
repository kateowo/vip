# VIP main loop


# setup
execute as @a unless score setup internal matches 1.. run function vip:setup

# team count
execute if score period time matches 1 if score team_count global matches ..2 run function vip:teams/2
execute if score period time matches 1 if score team_count global matches 3 run function vip:teams/3
execute if score period time matches 1 if score team_count global matches 4 run function vip:teams/4

# track deaths
execute as @a[tag=!vip] at @s if score @s death matches 1.. run function vip:death
execute as @a[tag=vip] at @s if score @s death matches 1.. run function vip:vip_death

# VIP
effect give @a[tag=vip] glowing 1 255 true
effect give @a[tag=vip] slowness 1 0 true
title @a[tag=vip] actionbar ["",{"text":"You are your team's "},{"text":"VIP","color":"green","bold":true},{"text":" - if you die, your team dies."}]
# non-VIP
title @a[team=red,tag=!vip] actionbar ["",{"text":"Defend "},{"selector":"@a[team=red,tag=vip]","color":"green","bold":true},{"text":" to keep your team alive."}]
title @a[team=blue,tag=!vip] actionbar ["",{"text":"Defend "},{"selector":"@a[team=blue,tag=vip]","color":"green","bold":true},{"text":" to keep your team alive."}]
title @a[team=green,tag=!vip] actionbar ["",{"text":"Defend "},{"selector":"@a[team=green,tag=vip]","color":"green","bold":true},{"text":" to keep your team alive."}]
title @a[team=yellow,tag=!vip] actionbar ["",{"text":"Defend "},{"selector":"@a[team=yellow,tag=vip]","color":"green","bold":true},{"text":" to keep your team alive."}]

# period checks
# -1, pre-start
execute if score period internal matches -1 run gamemode adventure @a[gamemode=!adventure,team=!admin]
execute if score period internal matches -1 run effect give @a weakness 9999 255 true
execute if score period internal matches -1 run effect give @a resistance 9999 255 true
execute if score period internal matches -1 run effect give @a regeneration 9999 255 true
execute if score period internal matches -1 run effect give @a saturation 9999 255 true
execute if score period internal matches -1 run scoreboard players set @a last_login -1
# 0, grace period
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run gamemode survival @s[team=!admin]
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run effect clear @s weakness
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run effect give @s resistance 300 255 true
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run effect clear @s regeneration
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run scoreboard players set @s last_login 0
# 1, main game
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run gamemode survival @s[team=!admin]
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s weakness
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s resistance
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s regeneration
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s saturation
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run scoreboard players set @s last_login 1
# 3, victory
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run gamemode spectator @s[tag=!winner,team=!admin]
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s weakness
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect give @s resistance 9999 255 true
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s regeneration
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s saturation
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run scoreboard players set @s last_login 3