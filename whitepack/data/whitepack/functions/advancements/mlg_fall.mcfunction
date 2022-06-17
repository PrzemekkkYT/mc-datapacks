execute as @a[predicate=whitepack:mlg_fall_predi] at @s run scoreboard players add @s mlg_water_timer 1
scoreboard players set @a[predicate=!whitepack:mlg_fall_predi] mlg_water_timer 0
advancement revoke @a[scores={mlg_water_timer=20..},advancements={whitepack:mlg_fall=false}] only whitepack:mlg_fall
advancement revoke @a[scores={mlg_water_timer=20..},advancements={whitepack:mlg_fall_100=false}] only whitepack:mlg_fall_100
advancement revoke @a[scores={mlg_water_timer=20..},advancements={whitepack:mlg_fall_world_height=false}] only whitepack:mlg_fall_world_height
scoreboard players set @a[scores={mlg_water_timer=20..}] mlg_water_use_water 0
scoreboard players set @a[scores={mlg_water_timer=20..}] mlg_water_timer 0