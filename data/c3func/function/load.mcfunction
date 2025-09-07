#> c3func:load
#

# 再読み込み時の下準備

# Tellraw
    #tellraw @a ["",{"text":"< Johnuwyi Library > Beta Enabled."}]

# Scoreboard
    scoreboard objectives add c3func.general.temp dummy
    scoreboard objectives add c3func.mob_damage.hp_current dummy
    scoreboard objectives add c3func.mob_damage.hp_old dummy
    scoreboard objectives add c3func.mob_damage.takendamage dummy
    scoreboard objectives add c3func.mob_damage.round dummy
    scoreboard objectives add c3func.mob_damage.hp_max dummy
    scoreboard objectives add c3func.mob_damage.hp_0 dummy
    scoreboard objectives add c3func.id.mob dummy
    scoreboard objectives add c3func.id.mob_2 dummy
    scoreboard objectives add c3func.id.mob_3 dummy
    scoreboard objectives add c3func.id.player dummy
    scoreboard objectives add c3func.id.player_2 dummy
    scoreboard objectives add c3func.id.player_3 dummy

    scoreboard players set $100 c3func.general.temp 100

    execute unless score $current c3func.id.mob matches 1.. run scoreboard players set $current c3func.id.mob 1
    execute unless score $current c3func.id.mob_2 matches 1.. run scoreboard players set $current c3func.id.mob_2 1
    execute unless score $current c3func.id.mob_3 matches 1.. run scoreboard players set $current c3func.id.mob_3 1

    execute unless score $current c3func.id.player matches 1.. run scoreboard players set $current c3func.id.player 1
    execute unless score $current c3func.id.player_2 matches 1.. run scoreboard players set $current c3func.id.player_2 1
    execute unless score $current c3func.id.player_3 matches 1.. run scoreboard players set $current c3func.id.player_3 1

# Common
    kill @e[type=armor_stand,tag=c3func.reduce_item.amstd]
    forceload add 100000 100000
    summon minecraft:armor_stand 100001 -64 100000 {Small:1b,Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,Tags:["c3func.reduce_item.amstd"]}
