#> skill:health_blast/used
#

# 使用

# run
    summon item ~ ~ ~ {Tags:["skillmish.skill.health_blast.bullet_temp"],Age:-32768,Health:32767,PickupDelay:32767,Item:{id:"minecraft:name_tag",components:{item_model:"minecraft:air"}},OnGround:0b}
    summon item_display ~ ~ ~ {item:{id:"chiseled_copper"},teleport_duration:1,Tags:["skillmish.skill.health_blast.bullet_icon"],transformation:{right_rotation:[0f,0f,0f,1f],scale:[0.25f,0.25f,0.25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},brightness:{block:15,sky:15},glow_color_override:15}
    execute at @s as @e[tag=skillmish.skill.health_blast.bullet_temp] run tp @s ~ ~1.5 ~ ~ ~
    scoreboard players operation @n[tag=skillmish.skill.health_blast.bullet_temp] skillmish.process.id.check = @s c3func.id.player
    scoreboard players set $horizontalpower c3func.general.temp 200
    scoreboard players set $verticalpower c3func.general.temp 500
    execute as @e[tag=skillmish.skill.health_blast.bullet_temp] run function c3func:motion/looking_at
    tag @e[tag=skillmish.skill.health_blast.bullet_temp] add skillmish.skill.health_blast.bullet
    tag @e[tag=skillmish.skill.health_blast.bullet_temp] remove skillmish.skill.health_blast.bullet_temp

# リセット
    advancement revoke @s only skill:process/health_blast/consume