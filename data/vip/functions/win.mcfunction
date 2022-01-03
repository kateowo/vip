# VIP win


scoreboard players set period internal 3
gamemode spectator @a[tag=!winner]

# title
title @a title {"text":"VICTORY!","color":"green","bold":true}
execute as @a[team=red,limit=1] if entity @s[tag=winner] run title @a subtitle {"text":"Red has won!"}
execute as @a[team=blue,limit=1] if entity @s[tag=winner] run title @a subtitle {"text":"Blue has won!"}
execute as @a[team=green,limit=1] if entity @s[tag=winner] run title @a subtitle {"text":"Green has won!"}
execute as @a[team=yellow,limit=1] if entity @s[tag=winner] run title @a subtitle {"text":"Yellow has won!"}

# playsound
execute as @a at @s run playsound ui.toast.challenge_complete player @s ~ ~ ~

# fireworks
effect give @a resistance 9999 255 true
execute as @a[tag=winner] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;3471405],FadeColors:[I;617238]}]}}}}

# reset
scoreboard players reset alive internal
scoreboard players reset red internal
scoreboard players reset blue internal
scoreboard players reset green internal
scoreboard players reset yellow internal