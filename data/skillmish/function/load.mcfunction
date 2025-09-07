#> skillmish:load
#

# 再読み込み時の下準備

# common
    gamerule doImmediateRespawn true
    scoreboard objectives add skillmish.skill.death deathCount

# id
    scoreboard objectives add skillmish.process.id.check dummy
    scoreboard objectives add skillmish.temp dummy

# power_gain
    scoreboard objectives add skillmish.skill.power_gain.ready dummy
    execute as @a unless score @s skillmish.skill.power_gain.ready matches -2147483648..2147483647 run scoreboard players set @s skillmish.skill.power_gain.ready 0

# health_blast
    scoreboard objectives add skillmish.skill.health_blast.ready dummy
    execute as @a unless score @s skillmish.skill.health_blast.ready matches -2147483648..2147483647 run scoreboard players set @s skillmish.skill.health_blast.ready 0
    scoreboard objectives add skillmish.skill.health_blast.collision dummy