# VIP defaults


# team count
scoreboard players set team_count global 2

# teams
team modify red prefix {"text":"R ","color":"red","bold":true}
team modify blue prefix {"text":"B ","color":"blue","bold":true}
team modify green prefix {"text":"G ","color":"green","bold":true}
team modify yellow prefix {"text":"Y ","color":"yellow","bold":true}

# world
worldborder set 10
gamerule doImmediateRespawn true
gamerule keepInventory true

# period
scoreboard players set period internal -1


scoreboard players set defaults internal 1