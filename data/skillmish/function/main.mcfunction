#> skillmish:main
#

# 毎ティックの実行

# common
# 全員の処理
    execute as @a at @s run function skill:common/loop

# Markerkill
    execute if entity @e[tag=skillmish.process.mustbe_killed] run kill @e[tag=skillmish.process.mustbe_killed]

# SkillSelect
    execute if entity @e[tag=skillmish.process.ui_box.marker] as @e[tag=skillmish.process.ui_box.marker,tag=!skillmish.process.ui_box.marker.set] at @s run function skillmish:skill_select/ui/set
    execute if entity @e[tag=skillmish.process.ui_box.marker.set] as @e[tag=skillmish.process.ui_box.marker.set] at @s unless block ~ ~ ~ minecraft:dispenser{components:{"minecraft:custom_data":{"skillmish.process.ui_box.dispenser":"true"}}} run function skillmish:skill_select/ui/break

# id
    function skillmish:id/player_id/detect

# power_gain
# tagがある人に能力付与
    execute as @a if entity @s[tag=skillmish.skill.power_gain,scores={skillmish.skill.ready=0}] at @s run function skill:power_gain/
    execute as @a if entity @s[tag=skillmish.skill.power_gain] at @s run function skill:power_gain/loop

# リセット
    execute as @a if entity @s[tag=!skillmish.skill.power_gain] at @s run function skill:power_gain/reset
