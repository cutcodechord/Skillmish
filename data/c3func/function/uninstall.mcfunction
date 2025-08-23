#> c3func:uninstall
#

# データパックのアンインストール


# Tellraw
    tellraw @a ["",{"text":"< Johnuwyi Library > Uninstall finished."}]
    tellraw @a ["",{"text":"< Johnuwyi Library > See you!"}]

# Scoreboard
    scoreboard objectives remove c3func.general.temp
    scoreboard objectives remove c3func.mob_damage.hp_current
    scoreboard objectives remove c3func.mob_damage.hp_old
    scoreboard objectives remove c3func.mob_damage.takendamage
    scoreboard objectives remove c3func.mob_damage.round
    scoreboard objectives remove c3func.mob_damage.hp_max
    scoreboard objectives remove c3func.mob_damage.hp_0
    scoreboard objectives remove c3func.id.mob
    scoreboard objectives remove c3func.id.mob_2
    scoreboard objectives remove c3func.id.mob_3
    scoreboard objectives remove c3func.id.player
    scoreboard objectives remove c3func.id.player_2
    scoreboard objectives remove c3func.id.player_3

# Tag
    tag @a remove c3func.mob_damage.attacker
    tag @a remove c3func.mob_damage.hurt
    tag @a remove c3func.id.mob.marked
    tag @a remove c3func.id.mob.marker
    tag @a remove c3func.id.mob.marker_temp
    tag @a remove c3func.id.mob.marker_temp
    tag @a remove c3func.reduce_item.amstd

# Common
    kill @e[type=armor_stand,tag=c3func.reduce_item.amstd]
    