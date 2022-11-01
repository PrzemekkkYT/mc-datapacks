# one player sleep
scoreboard objectives add sleep dummy
scoreboard objectives add mstime dummy
scoreboard players set mstime mstime 0
scoreboard players set slp mstime 0

# arrows count while holding bow
scoreboard objectives add arrows_count dummy

#advancement - main - init
function whitepack:inits/advancements/init_whitepack

#advancement - milestones - init
function whitepack:inits/advancements/init_milestones

# metric
scoreboard objectives add metric dummy
scoreboard players set cm_m metric 100
scoreboard players set cm_km metric 100000

#progress advancementów
scoreboard objectives add progress trigger

#Ilość życia na liście graczy
scoreboard objectives add health health
scoreboard objectives modify health rendertype hearts
scoreboard objectives setdisplay list health

#ilość zgonów na sidebarze
scoreboard objectives add deaths deathCount {"text":"--==Zgony==--","color":"red","bold":true}
scoreboard objectives setdisplay sidebar deaths

#brak wiadomości na chacie o aktywowanych komendach
gamerule sendCommandFeedback false
gamerule commandBlockOutput false

function whitepack:loops/main_1s
function whitepack:loops/main_10s

tellraw @a [{"text":"Whitepack ","color":"gold","bold":true},{"text":"zainstalowany, życzę miłej gry!","color":"green","bold":true}]