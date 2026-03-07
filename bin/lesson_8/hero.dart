import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;

  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = (RpgGame.random.nextInt(5) + 2) * damage; // 2,3,4,5,6
    boss.health -= crit;
    print('Warrior $name hits critically $crit');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  void applySuperPower(Boss boss, List<Hero> heroes) {

  }
}

class Medic extends Hero {
  int healPonts;
  Medic(String name, int health, int damage, this.healPonts)
    : super(name, health, damage, SuperAbility.heal);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && this != hero) {
        hero.health += healPonts;
      }
    }
  }
}

class Ludoman extends Hero {
  Ludoman(String name, int health, int damage)
      : super(name, health, damage, SuperAbility.gamble);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int die1 = RpgGame.random.nextInt(6) + 1;
    int die2 = RpgGame.random.nextInt(6) + 1;

    if (die1 == die2) {
      int points = die1 * die2;
      boss.health -= points;
      print('Ludoman $name lucky strike: -$points to Boss');
    } else {
      int points = die1 + die2;
      List<Hero> teammates = heroes.where((h) => h != this && h.isAlive()).toList();
      if (teammates.isNotEmpty) {
        Hero victim = teammates[RpgGame.random.nextInt(teammates.length)];
        victim.health -= points;
        print('Ludoman $name failed: -$points to ${victim.name}');
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name is reverted $blockedDamage');
  }
}