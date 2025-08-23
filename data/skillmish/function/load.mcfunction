#> skillmish:load
#

# 再読み込み時の下準備

# common
    gamerule doImmediateRespawn true
    scoreboard objectives add skillmish.skill.ready dummy
    scoreboard objectives add skillmish.skill.death deathCount

# id
    scoreboard objectives add skillmish.process.id.check dummy

# power_gain
    scoreboard objectives add skillmish.skill.power_gain.item_damage dummy
    execute as @a unless score @s skillmish.skill.ready matches -2147483648..2147483647 run scoreboard players set @s skillmish.skill.ready 0
