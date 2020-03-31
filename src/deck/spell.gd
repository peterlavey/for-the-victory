class_name Spell extends Card

var damage: int
var scope: int
var cost: int
var element
var effect: int
var accuracy: int
var description: String

enum {FIRE, WATER, WIND, ICE, THUNDER, EARTH, ROCK, POISON}
enum {BURN, FREEZE, STUN}