scoreboard objectives add kickbed trigger
scoreboard objectives add sleep dummy
scoreboard objectives add mstime dummy
scoreboard players set mstime mstime 0
scoreboard players set slp mstime 0

gamerule sendCommandFeedback false
gamerule commandBlockOutput false

tellraw @a [{"text":"CoronaPack ","color":"dark_red","bold":true},{"text":"zainstalowany, życzę miłej gry!","color":"dark_green","bold":true}]