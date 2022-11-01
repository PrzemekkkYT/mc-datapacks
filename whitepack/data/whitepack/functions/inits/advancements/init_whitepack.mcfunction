#advancement - fall_damage
scoreboard objectives add fall_damage_distance_fallen minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add fall_damage_dead deathCount
scoreboard players set @a fall_damage_distance_fallen 0
scoreboard players set @a fall_damage_dead 0

#advancement - multishot / multikill
scoreboard objectives add multi_kill minecraft.custom:minecraft.mob_kills

#advancement - no_trident_4_u
scoreboard objectives add drowned_killed minecraft.killed:minecraft.drowned

#advancement - damage_taken
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken

#advancement - door_trap / submarine
scoreboard objectives add drowned_deaths deathCount
scoreboard objectives add lungs_time dummy

#advancement - yellow_submarine
scoreboard objectives add submarine_time dummy