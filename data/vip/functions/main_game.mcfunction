# VIP main game


# randomly pick vip
execute if score team_count global matches ..2 run function vip:pick/2
execute if score team_count global matches 3 run function vip:pick/3
execute if score team_count global matches 4 run function vip:pick/4

# title
title @a title {"text":"YOUR VIP HAS BEEN CHOSEN","color":"green","bold":true}
title @a[team=red] subtitle ["",{"text":"Defend "},{"selector":"@a[team=red,tag=vip]"},{"text":" for your team."}]
title @a[team=blue] subtitle ["",{"text":"Defend "},{"selector":"@a[team=blue,tag=vip]"},{"text":" for your team."}]
title @a[team=green] subtitle ["",{"text":"Defend "},{"selector":"@a[team=green,tag=vip]"},{"text":" for your team."}]
title @a[team=yellow] subtitle ["",{"text":"Defend "},{"selector":"@a[team=yellow,tag=vip]"},{"text":" for your team."}]

# playsound
execute as @a at @s run playsound entity.player.levelup player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~


scoreboard players set period internal 1