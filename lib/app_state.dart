import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _bluetooth = false;
  bool get bluetooth => _bluetooth;
  set bluetooth(bool value) {
    _bluetooth = value;
  }

  List<String> _clinic = [
    'Hello World2',
    'Hello World3',
    'Hello World4',
    'Hello World5',
    'Hello World6'
  ];
  List<String> get clinic => _clinic;
  set clinic(List<String> value) {
    _clinic = value;
  }

  void addToClinic(String value) {
    clinic.add(value);
  }

  void removeFromClinic(String value) {
    clinic.remove(value);
  }

  void removeAtIndexFromClinic(int index) {
    clinic.removeAt(index);
  }

  void updateClinicAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    clinic[index] = updateFn(_clinic[index]);
  }

  void insertAtIndexInClinic(int index, String value) {
    clinic.insert(index, value);
  }

  bool _mice = false;
  bool get mice => _mice;
  set mice(bool value) {
    _mice = value;
  }

  bool _AIGenerated = false;
  bool get AIGenerated => _AIGenerated;
  set AIGenerated(bool value) {
    _AIGenerated = value;
  }

  bool _adddress = false;
  bool get adddress => _adddress;
  set adddress(bool value) {
    _adddress = value;
  }

  bool _doc = false;
  bool get doc => _doc;
  set doc(bool value) {
    _doc = value;
  }

  bool _Gate = false;
  bool get Gate => _Gate;
  set Gate(bool value) {
    _Gate = value;
  }

  bool _fire = false;
  bool get fire => _fire;
  set fire(bool value) {
    _fire = value;
  }

  bool _frame = false;
  bool get frame => _frame;
  set frame(bool value) {
    _frame = value;
  }

  bool _game = false;
  bool get game => _game;
  set game(bool value) {
    _game = value;
  }

  int _tabcommunity = 1;
  int get tabcommunity => _tabcommunity;
  set tabcommunity(int value) {
    _tabcommunity = value;
  }

  bool _icon = false;
  bool get icon => _icon;
  set icon(bool value) {
    _icon = value;
  }

  int _itemurgency = 0;
  int get itemurgency => _itemurgency;
  set itemurgency(int value) {
    _itemurgency = value;
  }

  bool _cln = false;
  bool get cln => _cln;
  set cln(bool value) {
    _cln = value;
  }

  bool _family = false;
  bool get family => _family;
  set family(bool value) {
    _family = value;
  }

  bool _amount = false;
  bool get amount => _amount;
  set amount(bool value) {
    _amount = value;
  }

  bool _gage = false;
  bool get gage => _gage;
  set gage(bool value) {
    _gage = value;
  }

  bool _cen = false;
  bool get cen => _cen;
  set cen(bool value) {
    _cen = value;
  }

  bool _smartcard = false;
  bool get smartcard => _smartcard;
  set smartcard(bool value) {
    _smartcard = value;
    notifyListeners();
  }

  bool _monitor = false;
  bool get monitor => _monitor;
  set monitor(bool value) {
    _monitor = value;
  }

  String _Bquest1 = '';
  String get Bquest1 => _Bquest1;
  set Bquest1(String value) {
    _Bquest1 = value;
  }

  String _Bquest2 = '';
  String get Bquest2 => _Bquest2;
  set Bquest2(String value) {
    _Bquest2 = value;
  }

  String _Bquest3 = '';
  String get Bquest3 => _Bquest3;
  set Bquest3(String value) {
    _Bquest3 = value;
  }

  String _Bquest4 = '';
  String get Bquest4 => _Bquest4;
  set Bquest4(String value) {
    _Bquest4 = value;
  }

  String _Bquest5 = '';
  String get Bquest5 => _Bquest5;
  set Bquest5(String value) {
    _Bquest5 = value;
  }

  String _Bquest6 = '';
  String get Bquest6 => _Bquest6;
  set Bquest6(String value) {
    _Bquest6 = value;
  }

  String _Bquest7 = '';
  String get Bquest7 => _Bquest7;
  set Bquest7(String value) {
    _Bquest7 = value;
  }

  String _Bquest8 = '';
  String get Bquest8 => _Bquest8;
  set Bquest8(String value) {
    _Bquest8 = value;
  }

  String _Bquest9 = '';
  String get Bquest9 => _Bquest9;
  set Bquest9(String value) {
    _Bquest9 = value;
  }

  String _Bquest10 = '';
  String get Bquest10 => _Bquest10;
  set Bquest10(String value) {
    _Bquest10 = value;
  }

  String _Bquest11 = '';
  String get Bquest11 => _Bquest11;
  set Bquest11(String value) {
    _Bquest11 = value;
  }

  String _eatb = '';
  String get eatb => _eatb;
  set eatb(String value) {
    _eatb = value;
  }

  String _perone = '';
  String get perone => _perone;
  set perone(String value) {
    _perone = value;
  }

  String _pertwo = '';
  String get pertwo => _pertwo;
  set pertwo(String value) {
    _pertwo = value;
  }

  String _perthree = '';
  String get perthree => _perthree;
  set perthree(String value) {
    _perthree = value;
  }

  String _perfore = '';
  String get perfore => _perfore;
  set perfore(String value) {
    _perfore = value;
  }

  String _perfive = '';
  String get perfive => _perfive;
  set perfive(String value) {
    _perfive = value;
  }

  String _healthone = '';
  String get healthone => _healthone;
  set healthone(String value) {
    _healthone = value;
  }

  String _healthtwo = '';
  String get healthtwo => _healthtwo;
  set healthtwo(String value) {
    _healthtwo = value;
  }

  String _checkone = '';
  String get checkone => _checkone;
  set checkone(String value) {
    _checkone = value;
  }

  String _checktwo = '';
  String get checktwo => _checktwo;
  set checktwo(String value) {
    _checktwo = value;
  }

  String _checkthree = '';
  String get checkthree => _checkthree;
  set checkthree(String value) {
    _checkthree = value;
  }

  String _checkfore = '';
  String get checkfore => _checkfore;
  set checkfore(String value) {
    _checkfore = value;
  }

  String _checkfive = '';
  String get checkfive => _checkfive;
  set checkfive(String value) {
    _checkfive = value;
  }

  String _checksix = '';
  String get checksix => _checksix;
  set checksix(String value) {
    _checksix = value;
  }

  String _checkseven = '';
  String get checkseven => _checkseven;
  set checkseven(String value) {
    _checkseven = value;
  }

  String _checkeight = '';
  String get checkeight => _checkeight;
  set checkeight(String value) {
    _checkeight = value;
  }

  String _checknine = '';
  String get checknine => _checknine;
  set checknine(String value) {
    _checknine = value;
  }

  String _riskone = '';
  String get riskone => _riskone;
  set riskone(String value) {
    _riskone = value;
  }

  String _risktwo = '';
  String get risktwo => _risktwo;
  set risktwo(String value) {
    _risktwo = value;
  }

  String _riskthree = '';
  String get riskthree => _riskthree;
  set riskthree(String value) {
    _riskthree = value;
  }

  String _riskfore = '';
  String get riskfore => _riskfore;
  set riskfore(String value) {
    _riskfore = value;
  }

  String _riskfive = '';
  String get riskfive => _riskfive;
  set riskfive(String value) {
    _riskfive = value;
  }

  String _alcohol = '';
  String get alcohol => _alcohol;
  set alcohol(String value) {
    _alcohol = value;
  }

  bool _Alcohalhide = false;
  bool get Alcohalhide => _Alcohalhide;
  set Alcohalhide(bool value) {
    _Alcohalhide = value;
  }

  String _smoke = '';
  String get smoke => _smoke;
  set smoke(String value) {
    _smoke = value;
  }

  bool _smokehide = false;
  bool get smokehide => _smokehide;
  set smokehide(bool value) {
    _smokehide = value;
  }

  bool _nonsk = false;
  bool get nonsk => _nonsk;
  set nonsk(bool value) {
    _nonsk = value;
  }

  String _exer = '';
  String get exer => _exer;
  set exer(String value) {
    _exer = value;
  }

  String _persix = '';
  String get persix => _persix;
  set persix(String value) {
    _persix = value;
  }

  bool _choosehos = false;
  bool get choosehos => _choosehos;
  set choosehos(bool value) {
    _choosehos = value;
  }

  String _cshospi = '';
  String get cshospi => _cshospi;
  set cshospi(String value) {
    _cshospi = value;
  }

  bool _allgo = false;
  bool get allgo => _allgo;
  set allgo(bool value) {
    _allgo = value;
  }

  bool _sssk = false;
  bool get sssk => _sssk;
  set sssk(bool value) {
    _sssk = value;
  }

  bool _homes = false;
  bool get homes => _homes;
  set homes(bool value) {
    _homes = value;
  }

  bool _fam = false;
  bool get fam => _fam;
  set fam(bool value) {
    _fam = value;
  }

  bool _tem = false;
  bool get tem => _tem;
  set tem(bool value) {
    _tem = value;
  }

  bool _micro = false;
  bool get micro => _micro;
  set micro(bool value) {
    _micro = value;
  }

  bool _medi = false;
  bool get medi => _medi;
  set medi(bool value) {
    _medi = value;
  }

  bool _booop = false;
  bool get booop => _booop;
  set booop(bool value) {
    _booop = value;
  }

  bool _adi = false;
  bool get adi => _adi;
  set adi(bool value) {
    _adi = value;
  }

  bool _mongo = false;
  bool get mongo => _mongo;
  set mongo(bool value) {
    _mongo = value;
  }

  bool _postmam = false;
  bool get postmam => _postmam;
  set postmam(bool value) {
    _postmam = value;
  }

  bool _might = false;
  bool get might => _might;
  set might(bool value) {
    _might = value;
  }

  String _twoq1 = '';
  String get twoq1 => _twoq1;
  set twoq1(String value) {
    _twoq1 = value;
  }

  String _twoq2 = '';
  String get twoq2 => _twoq2;
  set twoq2(String value) {
    _twoq2 = value;
  }

  bool _gay = false;
  bool get gay => _gay;
  set gay(bool value) {
    _gay = value;
  }

  String _nineone = '';
  String get nineone => _nineone;
  set nineone(String value) {
    _nineone = value;
  }

  String _ninetwo = '';
  String get ninetwo => _ninetwo;
  set ninetwo(String value) {
    _ninetwo = value;
  }

  String _ninethree = '';
  String get ninethree => _ninethree;
  set ninethree(String value) {
    _ninethree = value;
  }

  String _ninefore = '';
  String get ninefore => _ninefore;
  set ninefore(String value) {
    _ninefore = value;
  }

  String _ninefive = '';
  String get ninefive => _ninefive;
  set ninefive(String value) {
    _ninefive = value;
  }

  String _ninesix = '';
  String get ninesix => _ninesix;
  set ninesix(String value) {
    _ninesix = value;
  }

  String _nineseven = '';
  String get nineseven => _nineseven;
  set nineseven(String value) {
    _nineseven = value;
  }

  String _nineeight = '';
  String get nineeight => _nineeight;
  set nineeight(String value) {
    _nineeight = value;
  }

  String _ninenine = '';
  String get ninenine => _ninenine;
  set ninenine(String value) {
    _ninenine = value;
  }

  String _ten = '';
  String get ten => _ten;
  set ten(String value) {
    _ten = value;
  }

  String _eleven = '';
  String get eleven => _eleven;
  set eleven(String value) {
    _eleven = value;
  }

  String _twelve = '';
  String get twelve => _twelve;
  set twelve(String value) {
    _twelve = value;
  }

  bool _bit = false;
  bool get bit => _bit;
  set bit(bool value) {
    _bit = value;
  }

  String _next = '';
  String get next => _next;
  set next(String value) {
    _next = value;
  }

  String _hol = '';
  String get hol => _hol;
  set hol(String value) {
    _hol = value;
  }

  int _menuvisit = 1;
  int get menuvisit => _menuvisit;
  set menuvisit(int value) {
    _menuvisit = value;
  }

  int _munity = 1;
  int get munity => _munity;
  set munity(int value) {
    _munity = value;
  }

  bool _searchplanvisit = false;
  bool get searchplanvisit => _searchplanvisit;
  set searchplanvisit(bool value) {
    _searchplanvisit = value;
  }

  bool _authen = false;
  bool get authen => _authen;
  set authen(bool value) {
    _authen = value;
  }

  bool _draft = false;
  bool get draft => _draft;
  set draft(bool value) {
    _draft = value;
  }

  int _parents = 1;
  int get parents => _parents;
  set parents(int value) {
    _parents = value;
  }

  bool _picture = false;
  bool get picture => _picture;
  set picture(bool value) {
    _picture = value;
  }

  bool _tm = false;
  bool get tm => _tm;
  set tm(bool value) {
    _tm = value;
  }
}
