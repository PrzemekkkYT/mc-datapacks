summon experience_orb ~ ~ ~ {Tags:["finish_orb"],Value:0s}
execute at @s store result entity @e[type=experience_orb,tag=finish_orb,sort=nearest,limit=1] Value short 1 run scoreboard players get @s orb_value
kill @s