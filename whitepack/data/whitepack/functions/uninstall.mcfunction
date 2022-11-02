##################
# from base init #
##################

# one person sleep
scoreboard objectives remove sleep
scoreboard objectives remove mstime

# arrows count while holding bow
scoreboard objectives remove arrows_count

# connect xp orbs
scoreboard objectives remove orb_value

# metric values to convert cm to m and km
scoreboard objectives remove metric

# progress of milestones advancements
scoreboard objectives remove progress

# health and death counters
scoreboard objectives remove health
scoreboard objectives remove deaths

###################################
# from whitepack advancement init #
###################################

#advancement - fall_damage
scoreboard objectives remove fall_damage_distance_fallen
scoreboard objectives remove fall_damage_dead

#advancement - multishot / multikill
scoreboard objectives remove multi_kill

#advancement - no_trident_4_u
scoreboard objectives remove drowned_killed

#advancement - damage_taken
scoreboard objectives remove damage_taken

#advancement - door_trap / submarine
scoreboard objectives remove drowned_deaths
scoreboard objectives remove lungs_time

#advancement - yellow_submarine
scoreboard objectives remove submarine_time

####################################
# from milestones advancement init #
####################################

#advancement - milestones - the_true_swordmaster
scoreboard objectives remove mob_kills

#advancement - milestones - wooden_shield_boyyyy / wrath_shield
scoreboard objectives remove shield_blocked

#advancement - milestones - pirates_of_the_caribbean
scoreboard objectives remove boat_distance
scoreboard objectives remove boat_distance_meters
scoreboard objectives remove boat_distance_kilometers

#advancement - milestones - tarzan
scoreboard objectives remove leaves
scoreboard objectives remove leaves_temp
scoreboard objectives remove leaves_temp_sprint
scoreboard objectives remove leaves_temp_crouch
scoreboard objectives remove leaves_meters
scoreboard objectives remove leaves_kilometers

#advancement - milestones - total_distance
scoreboard objectives remove total_distance
scoreboard objectives remove total_distance_meters
scoreboard objectives remove total_distance_kilometers
scoreboard objectives remove total_distance_walk
scoreboard objectives remove total_distance_walk_on_water
scoreboard objectives remove total_distance_walk_under_water
scoreboard objectives remove total_distance_aviate
scoreboard objectives remove total_distance_boat
scoreboard objectives remove total_distance_climb
scoreboard objectives remove total_distance_crouch
scoreboard objectives remove total_distance_fall
scoreboard objectives remove total_distance_fly
scoreboard objectives remove total_distance_horse
scoreboard objectives remove total_distance_minecart
scoreboard objectives remove total_distance_pig
scoreboard objectives remove total_distance_sprint
scoreboard objectives remove total_distance_strider
scoreboard objectives remove total_distance_swim



#włączone wiadomości na chacie o aktywowanych komendach
gamerule sendCommandFeedback true
gamerule commandBlockOutput true