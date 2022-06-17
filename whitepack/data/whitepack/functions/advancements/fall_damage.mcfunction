execute as @a[scores={fall_damage_dead=0,fall_damage_distance_fallen=0..}] at @s run scoreboard players set @s fall_damage_distance_fallen 0
execute as @a[scores={fall_damage_dead=0..,fall_damage_distance_fallen=0}] at @s run scoreboard players set @s fall_damage_dead 0
execute as @a[scores={fall_damage_dead=1..,fall_damage_distance_fallen=1..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] at @s run function whitepack:advancements/false_wings_grant
execute as @a[scores={fall_damage_dead=1..,fall_damage_distance_fallen=2600..3000}] at @s run function whitepack:advancements/magik_grant
execute as @a[scores={fall_damage_dead=1..,fall_damage_distance_fallen=1..}] at @s run function whitepack:advancements/fall_damage_grant