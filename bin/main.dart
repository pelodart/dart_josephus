import '../lib/josephus.dart';

void main() {

  Josephus josephus = Josephus(count: Josephus.DefaultSoldiers);
  josephus.PassBy = Josephus.DefaultDecimatio;

  print('Josephus Problem: Number of soldiers: ${josephus.Count}');
  print('Eliminating: Each ${josephus.PassBy}');
  print('');

  while (josephus.Alive > 1) {
    josephus.eliminateNextSoldier();
    print('Removed ${josephus.LastEliminated}');
  }

  print('');
  print('Last soldier: ${josephus.LastAlive}');
  print('Last eliminated: ${josephus.LastEliminated}');
}
