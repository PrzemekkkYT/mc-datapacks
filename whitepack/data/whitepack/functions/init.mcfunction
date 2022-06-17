scoreboard objectives add kickbed trigger
scoreboard objectives add sleep dummy
scoreboard objectives add mstime dummy
scoreboard players set mstime mstime 0
scoreboard players set slp mstime 0

#advancement - fall_damage
scoreboard objectives add fall_damage_distance_fallen minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add fall_damage_dead deathCount
#advancement - multishot
scoreboard objectives add mb minecraft.custom:minecraft.mob_kills
scoreboard objectives add mb2 dummy
scoreboard objectives add mb3 dummy
#advancement - no_trident_4_u
scoreboard objectives add drowned_killed minecraft.killed:minecraft.drowned
#advancement - mlg_water
scoreboard objectives add mlg_water_use_water minecraft.used:minecraft.water_bucket
scoreboard objectives add mlg_water_timer dummy
#advancement - pirates_of_the_caribbean
scoreboard objectives add boat_distance minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add boat_distance_meters dummy
scoreboard objectives add boat_distance_kilometers dummy
#advancement - beds
scoreboard objectives add beds dummy
#advancement - the_true_swordmaster
scoreboard objectives add mob_kills minecraft.custom:minecraft.mob_kills
#advancement - damage_taken
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
#advancement - tarzan
scoreboard objectives add leaves_temp minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add leaves dummy
scoreboard objectives add leaves_temp_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add leaves_temp_crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add leaves_meters dummy
scoreboard objectives add leaves_kilometers dummy
#advancement - door_trap / submarine
scoreboard objectives add drowned_deaths deathCount
scoreboard objectives add lungs_time dummy
#advancement - wooden_shield_boyyyy / wrath_shield
scoreboard objectives add shield_blocked minecraft.custom:minecraft.damage_blocked_by_shield
#advancement - yellow_submarine
scoreboard objectives add submarine_time dummy
#advancement - beds_now
scoreboard objectives add beds_now dummy
#advancement - total_distance
scoreboard objectives add total_distance dummy
scoreboard objectives add total_distance_meters dummy
scoreboard objectives add total_distance_kilometers dummy
scoreboard objectives add total_distance_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add total_distance_walk_on_water minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add total_distance_walk_under_water minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add total_distance_aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add total_distance_boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add total_distance_climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add total_distance_crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add total_distance_fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add total_distance_fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add total_distance_horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add total_distance_minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add total_distance_pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add total_distance_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add total_distance_strider minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add total_distance_swim minecraft.custom:minecraft.swim_one_cm

#scoreboard do numerów
scoreboard objectives add numbers dummy
scoreboard players set 1 numbers 1
scoreboard players set 10 numbers 10
scoreboard players set 100 numbers 100
scoreboard players set 1000 numbers 1000
scoreboard players set 10000 numbers 10000
scoreboard players set 100000 numbers 100000

#progress advancementów
scoreboard objectives add progress trigger

#Ilość życia na liście graczy
scoreboard objectives add health health
scoreboard objectives modify health rendertype hearts
scoreboard objectives setdisplay list health

#brak wiadomości na chacie o aktywowanych komendach
gamerule sendCommandFeedback false
gamerule commandBlockOutput false

#ilość zgonów na sidebarze
scoreboard objectives add zgony deathCount
scoreboard objectives modify zgony displayname {"text":"--==Zgony==--","color":"red","bold":true}
scoreboard objectives setdisplay sidebar zgony

function whitepack:main_1s
function whitepack:main_10s

tellraw @a [{"text":"Whitepack ","color":"gold","bold":true},{"text":"zainstalowany, życzę miłej gry!","color":"green","bold":true}]