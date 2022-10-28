execute store result score count playercount run execute if entity @a
execute if score count playercount matches 2.. run function coronapack:sleep
function coronapack:armorstandarms

execute as @a store result score @s sleep run data get entity @s SleepTimer

execute as @a if entity @s[nbt={warden_spawn_tracker:{warning_level:3}},scores={warden_warned=0}] run function coronapack:warden_warn
execute as @a if entity @s[nbt={warden_spawn_tracker:{warning_level:2}}] run scoreboard players set @s warden_warned 0

scoreboard players enable @a kickbed
execute if entity @a[scores={kickbed=1..}] run tellraw @a {"text":"","extra":[{"selector":"@a[scores={kickbed=1}]","color":"dark_green","bold":true},{"text":" nie chce, żeby ktoś spał!","color":"blue","bold":true}]}
execute if entity @a[scores={kickbed=1..}] as @a[scores={sleep=1..}] at @s run tp ~ ~ ~
scoreboard players set @a kickbed 0

execute if score slp mstime matches 1 run function coronapack:sleep_change