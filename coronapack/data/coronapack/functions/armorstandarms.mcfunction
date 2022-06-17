execute as @e[type=minecraft:armor_stand,name=rece] run data merge entity @s {ShowArms:1b,Tags:["rece"]}
execute as @a[tag=as,tag=near] at @s unless entity @e[type=minecraft:armor_stand,name=rece,tag=rece,distance=..7] run give @s minecraft:name_tag{display:{Name:"{\"text\":\"rece\"}"}}
tag @a remove as
tag @a remove near
execute as @a at @s if entity @e[type=minecraft:armor_stand,name=rece,tag=rece,distance=..6] run tag @s add as
execute as @e[type=minecraft:armor_stand,name=rece,tag=rece] at @s run tag @a[tag=as,sort=nearest,limit=1] add near