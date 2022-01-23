# VIP team bossbars


bossbar set vip:red name {"selector":"@a[team=red,tag=vip]","color":"red","bold":true}
execute store result bossbar vip:red value run scoreboard players get @a[team=red,tag=vip,limit=1] health

bossbar set vip:blue name {"selector":"@a[team=blue,tag=vip]","color":"blue","bold":true}
execute store result bossbar vip:blue value run scoreboard players get @a[team=blue,tag=vip,limit=1] health

bossbar set vip:green name {"selector":"@a[team=green,tag=vip]","color":"green","bold":true}
execute store result bossbar vip:green value run scoreboard players get @a[team=green,tag=vip,limit=1] health

bossbar set vip:yellow name {"selector":"@a[team=yellow,tag=vip]","color":"yellow","bold":true}
execute store result bossbar vip:yellow value run scoreboard players get @a[team=yellow,tag=vip,limit=1] health