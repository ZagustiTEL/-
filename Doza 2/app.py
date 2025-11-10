from flask import Flask, render_template, request, jsonify
import random

app = Flask(__name__)

# Базы данных героев, предметов и способностей
HEROES = [
    "Anti-Mage", "Axe", "Bane", "Bloodseeker", "Crystal Maiden", "Drow Ranger",
    "Earthshaker", "Juggernaut", "Mirana", "Morphling", "Shadow Fiend", "Phantom Lancer",
    "Puck", "Pudge", "Razor", "Sand King", "Storm Spirit", "Sven", "Tiny", "Vengeful Spirit",
    "Windranger", "Zeus", "Kunkka", "Lina", "Lion", "Shadow Shaman", "Slardar", "Tidehunter",
    "Witch Doctor", "Riki", "Enigma", "Tinker", "Sniper", "Necrophos", "Warlock", "Beastmaster",
    "Queen of Pain", "Venomancer", "Faceless Void", "Wraith King", "Death Prophet", "Phantom Assassin",
    "Pugna", "Templar Assassin", "Viper", "Luna", "Dragon Knight", "Dazzle", "Clockwerk",
    "Leshrac", "Nature's Prophet", "Lifestealer", "Dark Seer", "Clinkz", "Omniknight", "Enchantress",
    "Huskar", "Night Stalker", "Broodmother", "Bounty Hunter", "Weaver", "Jakiro", "Batrider",
    "Chen", "Spectre", "Ancient Apparition", "Doom", "Ursa", "Spirit Breaker", "Gyrocopter",
    "Alchemist", "Invoker", "Silencer", "Outworld Destroyer", "Lycan", "Brewmaster", "Shadow Demon",
    "Lone Druid", "Chaos Knight", "Meepo", "Treant Protector", "Ogre Magi", "Undying", "Rubick",
    "Disruptor", "Nyx Assassin", "Naga Siren", "Keeper of the Light", "Io", "Visage", "Slark",
    "Medusa", "Troll Warlord", "Centaur Warrunner", "Magnus", "Timbersaw", "Bristleback",
    "Tusk", "Skywrath Mage", "Abaddon", "Elder Titan", "Legion Commander", "Techies", "Ember Spirit",
    "Earth Spirit", "Underlord", "Terrorblade", "Phoenix", "Oracle", "Winter Wyvern", "Arc Warden",
    "Monkey King", "Dark Willow", "Pangolier", "Grimstroke", "Hoodwink", "Void Spirit", "Snapfire",
    "Mars", "Dawnbreaker", "Marci", "Primal Beast", "Muerta"
]

ITEMS = {
    "starting": [
        "Tango", "Healing Salve", "Clarity", "Iron Branch", "Gauntlets of Strength", 
        "Slippers of Agility", "Mantle of Intelligence", "Circlet", "Magic Stick",
        "Enchanted Mango", "Faerie Fire"
    ],
    "early": [
        "Magic Wand", "Boots of Speed", "Bracer", "Wraith Band", "Null Talisman",
        "Soul Ring", "Power Treads", "Phase Boots", "Arcane Boots", "Hand of Midas"
    ],
    "core": [
        "Black King Bar", "Blink Dagger", "Force Staff", "Aghanim's Scepter",
        "Shadow Blade", "Desolator", "Maelstrom", "Battle Fury", "Radiance",
        "Armlet of Mordiggian", "Crystalys", "Echo Sabre", "Dragon Lance"
    ],
    "late": [
        "Abyssal Blade", "Butterfly", "Daedalus", "Divine Rapier", "Eye of Skadi",
        "Heart of Tarrasque", "Monkey King Bar", "Mjollnir", "Nullifier",
        "Satanic", "Skull Basher", "Silver Edge", "Bloodthorn", "Assault Cuirass",
        "Shiva's Guard", "Scythe of Vyse", "Linken's Sphere", "Lotus Orb",
        "Refresher Orb", "Aghanim's Blessing", "Octarine Core"
    ],
    "neutral": [
        "Faded Broach", "Ocean Heart", "Iron Talon", "Royal Jelly", "Pupil's Gift",
        "Trusty Shovel", "Quickening Charm", "Philosopher's Stone", "Essence Ring",
        "Grove Bow", "Elven Tunic", "Cloak of Flames", "Titan Sliver", "Mind Breaker",
        "Spell Prism", "Ninja Gear", "Illusionist's Cape", "Timeless Relic",
        "Fusion Rune", "Mirror Shield", "Apex", "Ballista", "Book of the Dead",
        "Ex Machina", "Fallen Sky", "Seer Stone", "Stygian Desolator", "The Leveller",
        "Pirate Hat", "Witless Shako", "Magic Lamp", "Giant's Ring"
    ]
}

SKILL_BUILDS = {
    "aggressive": ["Maximize damage skills first", "Focus on early game dominance"],
    "defensive": ["Maximize survival skills", "Focus on sustain and escape"],
    "farming": ["Maximize farming abilities", "Focus on late game scaling"],
    "utility": ["Maximize crowd control", "Focus on team support"],
    "hybrid": ["Balanced skill build", "Adapt to game situation"]
}

LANES = ["Safe Lane", "Mid Lane", "Off Lane", "Soft Support", "Hard Support"]

def generate_random_build():
    hero = random.choice(HEROES)
    lane = random.choice(LANES)
    skill_build_type = random.choice(list(SKILL_BUILDS.keys()))
    skill_build = random.choice(SKILL_BUILDS[skill_build_type])
    
    # Генерация предметов
    starting_items = random.sample(ITEMS["starting"], min(6, len(ITEMS["starting"])))
    early_items = random.sample(ITEMS["early"], min(3, len(ITEMS["early"])))
    core_items = random.sample(ITEMS["core"], min(3, len(ITEMS["core"])))
    late_items = random.sample(ITEMS["late"], min(2, len(ITEMS["late"])))
    neutral_items = random.sample(ITEMS["neutral"], min(2, len(ITEMS["neutral"])))
    
    return {
        "hero": hero,
        "lane": lane,
        "skill_build": skill_build,
        "starting_items": starting_items,
        "early_game": early_items,
        "core_items": core_items,
        "late_game": late_items,
        "neutral_items": neutral_items
    }

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/generate')
def generate_build():
    build = generate_random_build()
    return render_template('build.html', build=build)

@app.route('/api/generate')
def api_generate_build():
    build = generate_random_build()
    return jsonify(build)

if __name__ == '__main__':
    app.run(debug=True)