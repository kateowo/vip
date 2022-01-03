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
execute as @a[team=red] run scoreboard players add red internal 1
execute as @a[team=blue] run scoreboard players add blue internal 1
execute as @a[team=green] run scoreboard players add green internal 1
execute as @a[team=yellow] run scoreboard players add yellow internal 1

# set period
scoreboard players set period internal 0