# VIP time-checks


# period
execute if score time_s internal matches 800 if score period internal matches 0 run worldborder set 20 2800
execute if score time_s internal matches 900 if score period internal matches 0 run function vip:main_game

execute if score time_s internal matches 1600 if score period internal matches 1 run worldborder set 125 1400

execute if score time_s internal matches 2800 if score period internal matches 1 run worldborder set 80 220

# bossbar
execute if score period internal matches 0 run bossbar set vip:main name ["",{"text":"VIP \u0020 \u0020","color":"green","bold":true},{"text":"15 minutes of preparation before your team's VIP is chosen."}]
execute if score period internal matches 0 run bossbar set vip:main max 1500