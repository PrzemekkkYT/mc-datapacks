function whitepack:sleep
function whitepack:armorstandarms

execute as @a store result score @s sleep run data get entity @s SleepTimer

scoreboard players enable @a kickbed
execute if entity @a[scores={kickbed=1..}] run tellraw @a {"text":"","extra":[{"selector":"@a[scores={kickbed=1}]","color":"dark_green","bold":true},{"text":" nie chce, żeby ktoś spał!","color":"blue","bold":true}]}
execute if entity @a[scores={kickbed=1..}] as @a[scores={sleep=1..}] at @s run tp ~ ~ ~
scoreboard players set @a kickbed 0

execute if score slp mstime matches 1 run function whitepack:sleep_change

#compass world directions
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=-45..45] at @s run title @s actionbar {"text":"kierunek: południe"}
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=45..135] at @s run title @s actionbar {"text":"kierunek: zachód"}
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=135..-135] at @s run title @s actionbar {"text":"kierunek: północ"}
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=-135..-45] at @s run title @s actionbar {"text":"kierunek: wschód"}


#advancement - fall_damage / false_wings / magik
function whitepack:advancements/fall_damage
#advancement - multishot / multi_kill
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:multishot"}]}}}] at @s run function whitepack:advancements/multishot
execute as @a[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:multishot"}]}}}] at @s run function whitepack:advancements/multi_kill
execute as @a at @s run scoreboard players operation @s mb2 = @s mb
#advancement - no_trident_4_u
execute as @a[nbt={Inventory:[{id:"minecraft:trident"}]}] at @s run scoreboard players set @s drowned_killed 0
execute as @a[scores={drowned_killed=100..}] at @s run advancement grant @s only whitepack:no_trident_4_u
#advancement - mlg_water
function whitepack:advancements/mlg_fall
#advancement - damage_taken
execute as @a at @s run scoreboard players operation @s damage_taken += @s damage_resisted
execute as @a at @s run scoreboard players set @s damage_resisted 0
#advancement - tarzan
execute as @a at @s unless block ~ ~-1 ~ #minecraft:leaves run function whitepack:advancements/tarzan_scores_reset
execute as @a at @s if block ~ ~-1 ~ #minecraft:leaves run function whitepack:advancements/tarzan
#advancement - door_trap
execute as @a at @s store result score @s lungs_time run data get entity @s Air
execute as @a[scores={drowned_deaths=1..,lungs_time=..1}] at @s if block ~-1 ~ ~ minecraft:iron_door if block ~1 ~ ~ minecraft:iron_door if block ~ ~ ~-1 minecraft:iron_door if block ~ ~ ~1 minecraft:iron_door if block ~ ~ ~ #minecraft:pressure_plates if block ~ ~1 ~ minecraft:water if block ~ ~2 ~ obsidian run function whitepack:advancements/door_trap
#advancement - submarine
execute as @a[scores={drowned_deaths=1..,lungs_time=..1},predicate=whitepack:ocean] if block ~ ~ ~ water if block ~ ~1 ~ water at @s run function whitepack:advancements/submarine
scoreboard players set @a drowned_deaths 0
#advancement - yellow_submarine
execute as @a[predicate=whitepack:ocean] at @s run scoreboard players add @s submarine_time 1
execute as @a[predicate=!whitepack:ocean] at @s run scoreboard players set @s submarine_time 0
execute as @a[scores={submarine_time=1200..}] at @s run advancement grant @s only whitepack:yellow_submarine
#advancement - beds_now
execute as @a store result score @s beds_now run clear @s #beds 0
advancement grant @a[scores={beds_now=37..}] only whitepack:beds_now
#advancement - composter_trap
execute as @a at @s if block ~ ~ ~ minecraft:composter if block ~ ~1 ~ #minecraft:trapdoors[open=false] run advancement grant @s only whitepack:composter_trap
#advancement - total_distance
execute as @a at @s run function whitepack:advancements/total_distance

#progress advancementów
scoreboard players enable @a progress
execute as @a[scores={progress=1..}] at @s run function whitepack:progress