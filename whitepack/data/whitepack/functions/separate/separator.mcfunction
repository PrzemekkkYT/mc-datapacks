# minecarts separator
execute as @e[type=item,nbt={Item:{id:"minecraft:chest_minecart",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/minecarts/chest_minecart
execute as @e[type=item,nbt={Item:{id:"minecraft:furnace_minecart",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/minecarts/furnace_minecart
execute as @e[type=item,nbt={Item:{id:"minecraft:hopper_minecart",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/minecarts/hopper_minecart
execute as @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/minecarts/tnt_minecart

# boats separator
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_chest_boat",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/boats/oak_chest_boat
execute as @e[type=item,nbt={Item:{id:"minecraft:spruce_chest_boat",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/boats/spruce_chest_boat
execute as @e[type=item,nbt={Item:{id:"minecraft:birch_chest_boat",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/boats/birch_chest_boat
execute as @e[type=item,nbt={Item:{id:"minecraft:jungle_chest_boat",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/boats/jungle_chest_boat
execute as @e[type=item,nbt={Item:{id:"minecraft:acacia_chest_boat",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/boats/acacia_chest_boat
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_chest_boat",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/boats/dark_oak_chest_boat
execute as @e[type=item,nbt={Item:{id:"minecraft:mangrove_chest_boat",Count:1b}}] at @s if block ~ ~ ~ minecraft:stonecutter run function whitepack:separate/boats/mangrove_chest_boat