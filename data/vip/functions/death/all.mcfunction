# VIP death tracking


tellraw @s {"text":"You have died! Don't worry, in 25 seconds you will respawn.","color":"green"}

gamemode spectator @s

# based on team
execute if entity @s[team=red] run tp @s @a[team=red,tag=vip,limit=1]
execute if entity @s[team=blue] run tp @s @a[team=blue,tag=vip,limit=1]
execute if entity @s[team=green] run tp @s @a[team=green,tag=vip,limit=1]
execute if entity @s[team=yellow] run tp @s @a[team=yellow,tag=vip,limit=1]

give @s stone_axe{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}
give @s stone_pickaxe{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}

scoreboard players set @s death_time 1
scoreboard players reset @s death