execute as @s[scores={mb=1..}] at @s store result score @s mb3 run scoreboard players operation @s mb -= @s mb2
execute as @s[scores={mb3=5..}] at @s run advancement grant @s only whitepack:multi_kill
execute as @s[scores={mb3=5..}] at @s run scoreboard players set @s mb3 0