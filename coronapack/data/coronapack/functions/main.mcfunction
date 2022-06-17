function coronapack:sleep
function coronapack:armorstandarms

execute as @a store result score @s sleep run data get entity @s SleepTimer

scoreboard players enable @a kickbed
execute if entity @a[scores={kickbed=1..}] run tellraw @a {"text":"","extra":[{"selector":"@a[scores={kickbed=1}]","color":"dark_green","bold":true},{"text":" nie chce, żeby ktoś spał!","color":"blue","bold":true}]}
execute if entity @a[scores={kickbed=1..}] as @a[scores={sleep=1..}] at @s run tp ~ ~ ~
scoreboard players set @a kickbed 0

execute if score slp mstime matches 1 run function coronapack:sleep_change