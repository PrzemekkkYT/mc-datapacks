execute as @e[type=minecraft:experience_orb,sort=random,limit=1,tag=!finish_orb] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..5,tag=xp_orb] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["xp_orb"]}
execute at @e[type=minecraft:area_effect_cloud,tag=xp_orb] as @e[type=minecraft:experience_orb,distance=..5] run function whitepack:xp/get_orb_value
execute as @e[type=area_effect_cloud,tag=xp_orb] at @s run function whitepack:xp/spawn_finish_orb