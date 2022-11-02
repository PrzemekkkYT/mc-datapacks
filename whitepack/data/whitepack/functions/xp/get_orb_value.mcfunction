execute as @s store result score @s orb_value run data get entity @s Value
scoreboard players operation @e[type=area_effect_cloud,sort=nearest,limit=1] orb_value += @s orb_value
kill @s