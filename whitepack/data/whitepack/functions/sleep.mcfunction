execute as @a[scores={sleep=1}] run tellraw @a [{"selector":"@s","color":"dark_red","bold":true},{"text":" śpi. ","color":"dark_green","bold":true},{"text":"Kliknij tekst, jeżeli chcesz zostawić noc.","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger kickbed set 1"},"hoverEvent":{"action":"show_text","value":{"text":"NOC!!!","color":"red"}}}]
execute as @a[scores={sleep=80}] run tellraw @a [{"text":"Gracz ","color":"dark_green","bold":true},{"selector":"@s","color":"dark_red","bold":true},{"text":" przespał się robiąc dzień!","color":"dark_green","bold":true}]
execute as @a[scores={sleep=80}] run weather rain 1
execute as @a[scores={sleep=80}] run execute store result score mstime mstime run time query daytime
execute as @a[scores={sleep=80}] run scoreboard players remove mstime mstime 24000
execute as @a[scores={sleep=80}] run scoreboard players set slp mstime 1