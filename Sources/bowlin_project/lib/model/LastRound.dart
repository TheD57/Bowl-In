import 'package:bowl_in/model/AbstractRound.dart';

import 'Player.dart';

class LastRound extends AbstractRound{
  int? _thirdThrow;

  LastRound(super.firstThrow, super.secondThrow, super.points, super.player, super.number, this._thirdThrow);

  int? get thirdThrow => _thirdThrow;

  set thirdThrow(int? value) {
    _thirdThrow = value;
  }

  @override
  bool computeNext(int val) {
    if(firstThrow==null){
      firstThrow=val;
      if(previousRound?.isSpare() ?? false){
        previousRound?.update(val);
      }
      return false;
    }else if(secondThrow==null){
      secondThrow=val;
      return ((firstThrow??0)+(secondThrow??0)<10);
    }else if((firstThrow??0)+(secondThrow??0)>=10){
      thirdThrow=val;
    }
    computePoints();
    return true;
  }

  @override
  void computePoints() {
    points = (firstThrow??0)+(secondThrow??0)+(thirdThrow??0);

    if(previousRound?.isStrike()??false){
      update(points??0);
    }
    unsubscribePreviousRound();
  }

  @override
  bool shotIsStrike(){
    if(firstThrow==null){
      return true;
    }else if(secondThrow==null){
      return firstThrow==10;
    }else{
      return secondThrow==10;
    }
  }
}