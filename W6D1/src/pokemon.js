class Pokemon {
  constructor(name stats) {
    this.name = name;
    this.attack = stats['attack'];
    this.health = stats['health'];
    this.special = stats['special'];
    this.defense = stats['special'];
  }

  attack() {
    return `${this.name} ${this.attack}!`;
  }

  specialAttack() {
    return `${this.name} ${this.special}!`;
  }
}

module.exports = Pokemon;
