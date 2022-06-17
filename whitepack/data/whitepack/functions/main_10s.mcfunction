execute as @a[scores={damage_taken=300..},nbt={DeathTime:0s}] at @s run advancement grant @s only whitepack:damage_taken
execute as @a at @s run scoreboard players set @s damage_taken 0

schedule function whitepack:main_10s 10s