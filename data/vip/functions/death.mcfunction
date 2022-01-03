# VIP death tracking


tellraw @s ["",{"text":"You have respawned! Defend your VIP.","color":"green"}]

# based on team
execute if entity @s[team=red] run tp @s @a[team=red,tag=vip,limit=1]
execute if entity @s[team=blue] run tp @s @a[team=blue,tag=vip,limit=1]
execute if entity @s[team=green] run tp @s @a[team=green,tag=vip,limit=1]
execute if entity @s[team=yellow] run tp @s @a[team=yellow,tag=vip,limit=1]

scoreboard players reset @s death