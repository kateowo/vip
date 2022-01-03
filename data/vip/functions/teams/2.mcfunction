# VIP 2 teams


# red win
execute if score blue internal matches 0 if score red internal matches 1 run tag @a[team=red] add winner
execute if score blue internal matches 0 if score red internal matches 1 run function vip:win

# blue win
execute if score red internal matches 0 if score blue internal matches 1 run tag @a[team=blue] add winner
execute if score red internal matches 0 if score blue internal matches 1 run function vip:win