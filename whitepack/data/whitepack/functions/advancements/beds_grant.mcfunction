scoreboard players add @s beds 1
execute as @a[scores={beds=100..}] at @s run advancement grant @s only whitepack:beds
advancement revoke @s only whitepack:beds_temp