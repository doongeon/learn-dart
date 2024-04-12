enum Role { Warior, Theif }

class Player {
  late final name;
  late int health, mana;
  late String role;

  Player({
    required this.name,
    required this.health,
    required this.mana,
  });

  Player.createNewPlayer({required name})
      : this.name = name,
        health = 100,
        mana = 100;

  void printStat() {
    print("user: $name \nhealth: $health / 100 \nmana: $mana / 100");
  }

  void printRole() {
    printStat();
    print("Role: ${role.toString()}\n");
  }

  void setRole({required role}) {
    this.role = role;
  }
}

void main() {
  var player = Player.createNewPlayer(name: "Bull");

  player.printStat();

  player.setRole(role: Role.Warior);

  player.printRole();

  return;
}
