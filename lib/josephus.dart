class Josephus {
  static const int DefaultSoldiers = 12;  // 41
  static const int DefaultDecimatio = 3;

  List<bool> _soldiers; // array of soldiers
  int _current; // current soldier

  int _count; // total number of soldiers
  int _alive; // number of alive soldiers
  int _lastEliminated; // last eliminated soldier
  int _lastAlive; // number of surviving soldier
  int _passby; // 'decimatio'

  Josephus({int count = DefaultSoldiers}) {
    _soldiers = List<bool>(count);
    _soldiers.fillRange(0, count, true);
    _current = 0;

    _count = count;
    _alive = _count;
    _lastEliminated = 0;
    _lastAlive = 0;
    _passby = DefaultDecimatio;
  }

  // getter/setter
  int get Count => _count;
  int get Alive => _alive;
  int get LastEliminated => _lastEliminated;
  int get LastAlive {
    if (_lastAlive == 0) {
      moveToNextAliveSoldier();
      _lastAlive = _current + 1;
    }

    return _lastAlive;
  }

  int get PassBy => _passby;
  set PassBy(int value) => _passby = value;

  // public interface
  bool eliminateNextSoldier() {
    // more than one soldier?
    if (_alive == 1) return false;

    for (int i = 0; i < _passby - 1; i++) {
      this.moveToNextAliveSoldier();

      // skip found alive soldier
      this.moveToNext();
    }

    this.moveToNextAliveSoldier();

    // eliminate 'n'.th soldier
    _soldiers[_current] = false;
    _alive--;
    _lastEliminated = _current + 1;

    return true;
  }

  // private helper methods
  void moveToNextAliveSoldier() {
    while (_soldiers[_current] == false) {
      // move index to next entry
      this.moveToNext();
    }
  }

  void moveToNext() {
    // move index to next entry
    _current++;
    if (_current >= _count) _current = 0;
  }
}
