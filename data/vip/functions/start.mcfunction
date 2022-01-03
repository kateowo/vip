# VIP start


# title
title @a title {"text":"STARTED","color":"green","bold":true}
title @a subtitle {"text":"You have 5 minutes to prepare with loot before your team's VIP is chosen."}

# playsound
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# track alive players
scoreboard players reset alive internal
scoreboard players reset red internal
scoreboard players reset blue internal
scoreboard players reset green internal
scoreboard players reset yellow internal

execute as @a[gamemode=!spectator] run scoreboard players add alive internal 1
execute as @a[team=red,limit=1] run scoreboard players set red internal 1
execute as @a[team=blue,limit=1] run scoreboard players set blue internal 1
execute as @a[team=green,limit=1] run scoreboard players set green internal 1
execute as @a[team=yellow,limit=1] run scoreboard players set yellow internal 1

worldborder set 2500 3

# set period
scoreboard players set period internal 0