# Das Josephus-Problem

Das Meisterwerk des Historikers **Flavius Josephus** ist seine geschichtliche Darstellung des Jüdischen Krieges. Einer Legende zufolge war er während dieses Krieges Mitglied einer 41-köpfigen jüdischen Rebellenbande, die im Jahre 67 n. Chr. in der galiläischen Stadt **Jotopata** ein Zentrum des antirömischen Widerstandes bildete. Nach 47-tägiger Belagerung gelang es den Römern unter der Führung ihres Kaisers **Vespasian** jedoch, die Stadt einzunehmen. Die Rebellen beschlossen, den Freitod einer Gefangenschaft vorzuziehen. Vergebens beschwor Josephus seine Mitstreiter, davon abzulassen. Um wenigstens sich zusammen mit einem unbekannten Mitverschwörer vor dieser Freitod-Orgie zu retten, schlug er als Tötungsritual den alten römischen Brauch der **Decimatio** (Dezimierung) vor: Zuerst mussten sich die Rebellen in einem Kreis herum aufzustellen, danach sollte sich jeder dritte nacheinander im Kreis das Leben nehmen. Josephus jedoch konnte Dank seiner mathematischen Begabung schnell ausrechnen, wo er und sein Freund im Kreis stehen mussten, um als Letzte übrig zu bleiben und somit dem Tode zu entkommen.

Schreiben Sie ein Programm, dass berechnet, an welche Stelle des Kreises Josephus sich und seinen Freund stellte, um zu überleben? Zum Entwurf einer Lösung können sehr unterschiedliche Datenstrukturen zum Einsatz kommen. Investieren Sie zunächst genügend Zeit in die Ausgestaltung eines Entwurfs, bevor Sie mit der Implementierung anfangen.

Bei 17 Soldaten sollte die Ausgabe des Programms wie folgt aussehen, wenn jeder dritte Soldat ausgesondert wird:

```dart
Josephus Problem: Number of soldiers: 17
Eliminating: Each 3

Removed 3
Removed 6
Removed 9
Removed 12
Removed 15
Removed 1
Removed 5
Removed 10
Removed 14
Removed 2
Removed 8
Removed 16
Removed 7
Removed 17
Removed 13
Removed 4

Last soldier: 11
Last eliminated: 4
```

Die Ausgabe kann durch das nachfolgende Codefragment erzeugt werden. Sie dürfen hiervon abweichen und eigene Vorstellungen umsetzen:

```dart
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
```

Wie lautet nun die Antwort des Josephus-Problems in seiner historisch überlieferten Version? Es handelt sich dabei – einschließlich Josephus – um 41 Soldaten und es wird jeweils jeder dritte Soldat getötet.

*Hinweis*: Damit Sie Ihre Lösung auf Korrektheit überprüfen können: Der Legende nach stellte Josephus sich an die 16. Stelle und blieb damit als Vorletzter übrig. Er konnte auf diese Weise den letzten, schwächeren Mann an der 31. Position überwältigen. Beide ergaben sich den Römern und konnten auf diese Weise ihr Leben retten.