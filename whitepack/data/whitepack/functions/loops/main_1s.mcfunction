# Ten main włącza się co sekundę zamiast co tick #
#advancement - wrath_shield
execute as @a[advancements={whitepack:milestones/wooden_shield_boyyyy/wooden_shield_boyyyy=true}] at @s run scoreboard players set @s shield_blocked 0

function whitepack:xp/connect_xp_orbs

execute as @a at @s run function whitepack:advancements/reset/reset_fall_damage
execute as @a at @s run function whitepack:advancements/reset/reset_multi_kill

#reset funkcji
schedule function whitepack:loops/main_1s 1s