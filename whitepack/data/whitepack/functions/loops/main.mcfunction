execute store result storage whitepack:variables playercount int 1 run execute if entity @e[type=player]
execute unless data storage whitepack:variables {playercount:0} unless data storage whitepack:variables {playercount:1} run function whitepack:sleep/sleep
function whitepack:armorstandarms

execute as @a store result score @s sleep run data get entity @s SleepTimer

execute if score slp mstime matches 1 run function whitepack:sleep/sleep_change

# warden warn
execute as @a if entity @s[nbt={warden_spawn_tracker:{warning_level:3}},tag=!warden_warn] run function whitepack:warden_warn
execute as @a if entity @s[nbt={warden_spawn_tracker:{warning_level:2}}] run tag @s remove warden_warn

# arrows count while holding bow
execute as @a at @s store result score @s arrows_count run clear @s #whitepack:arrows 0
execute as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run title @s actionbar [{"text":"Ilość strzał: "},{"score":{"objective":"arrows_count","name":"@s"}}]
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] at @s run title @s actionbar [{"text":"Ilość strzał: "},{"score":{"objective":"arrows_count","name":"@s"}}]

# compass world directions
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=-45..45] at @s run title @s actionbar {"text":"kierunek: południe"}
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=45..135] at @s run title @s actionbar {"text":"kierunek: zachód"}
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=135..-135] at @s run title @s actionbar {"text":"kierunek: północ"}
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}},y_rotation=-135..-45] at @s run title @s actionbar {"text":"kierunek: wschód"}

# minecarts and boats separator
function whitepack:separate/separator

#advancement - no_trident_4_u
execute as @a[nbt={Inventory:[{id:"minecraft:trident"}]}] at @s run scoreboard players set @s drowned_killed 0
execute as @a[scores={drowned_killed=100..}] at @s run advancement grant @s only whitepack:no_trident_4_u
#advancement - tarzan
execute as @a at @s unless block ~ ~-1 ~ #minecraft:leaves run function whitepack:advancements/reset/reset_tarzan_scores
execute as @a at @s if block ~ ~-1 ~ #minecraft:leaves run function whitepack:advancements/tarzan
#advancement - door_trap
execute as @a at @s store result score @s lungs_time run data get entity @s Air
#advancement - yellow_submarine
execute as @a[predicate=whitepack:ocean] at @s run scoreboard players add @s submarine_time 1
execute as @a[predicate=!whitepack:ocean] at @s run scoreboard players set @s submarine_time 0
execute as @a[scores={submarine_time=1200..}] at @s run advancement grant @s only whitepack:yellow_submarine
#advancement - total_distance
execute as @a at @s run function whitepack:advancements/total_distance

#progress advancementów

execute as @a[scores={progress=1..}] at @s run function whitepack:progress