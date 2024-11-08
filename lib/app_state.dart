import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';

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

  bool _samePassword = true;
  bool get samePassword => _samePassword;
  set samePassword(bool value) {
    _samePassword = value;
  }

  bool _wasResended = false;
  bool get wasResended => _wasResended;
  set wasResended(bool value) {
    _wasResended = value;
  }

  bool _Invalidcredentials = false;
  bool get Invalidcredentials => _Invalidcredentials;
  set Invalidcredentials(bool value) {
    _Invalidcredentials = value;
  }

  bool _InvalidDate = false;
  bool get InvalidDate => _InvalidDate;
  set InvalidDate(bool value) {
    _InvalidDate = value;
  }

  bool _InvalidOTP = false;
  bool get InvalidOTP => _InvalidOTP;
  set InvalidOTP(bool value) {
    _InvalidOTP = value;
  }

  bool _isRegistered = false;
  bool get isRegistered => _isRegistered;
  set isRegistered(bool value) {
    _isRegistered = value;
  }

  bool _validUsername = true;
  bool get validUsername => _validUsername;
  set validUsername(bool value) {
    _validUsername = value;
  }

  bool _Imageset = false;
  bool get Imageset => _Imageset;
  set Imageset(bool value) {
    _Imageset = value;
  }

  bool _menu = false;
  bool get menu => _menu;
  set menu(bool value) {
    _menu = value;
  }

  bool _imageStatus = false;
  bool get imageStatus => _imageStatus;
  set imageStatus(bool value) {
    _imageStatus = value;
  }

  int _navbarstate = 1;
  int get navbarstate => _navbarstate;
  set navbarstate(int value) {
    _navbarstate = value;
  }

  int _guide = 7;
  int get guide => _guide;
  set guide(int value) {
    _guide = value;
  }

  bool _navbarguide = false;
  bool get navbarguide => _navbarguide;
  set navbarguide(bool value) {
    _navbarguide = value;
  }

  List<QuizoptionsStruct> _quiz = [];
  List<QuizoptionsStruct> get quiz => _quiz;
  set quiz(List<QuizoptionsStruct> value) {
    _quiz = value;
  }

  void addToQuiz(QuizoptionsStruct value) {
    quiz.add(value);
  }

  void removeFromQuiz(QuizoptionsStruct value) {
    quiz.remove(value);
  }

  void removeAtIndexFromQuiz(int index) {
    quiz.removeAt(index);
  }

  void updateQuizAtIndex(
    int index,
    QuizoptionsStruct Function(QuizoptionsStruct) updateFn,
  ) {
    quiz[index] = updateFn(_quiz[index]);
  }

  void insertAtIndexInQuiz(int index, QuizoptionsStruct value) {
    quiz.insert(index, value);
  }

  List<String> _quizids = [];
  List<String> get quizids => _quizids;
  set quizids(List<String> value) {
    _quizids = value;
  }

  void addToQuizids(String value) {
    quizids.add(value);
  }

  void removeFromQuizids(String value) {
    quizids.remove(value);
  }

  void removeAtIndexFromQuizids(int index) {
    quizids.removeAt(index);
  }

  void updateQuizidsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    quizids[index] = updateFn(_quizids[index]);
  }

  void insertAtIndexInQuizids(int index, String value) {
    quizids.insert(index, value);
  }

  int _i = 0;
  int get i => _i;
  set i(int value) {
    _i = value;
  }

  List<String> _tempquiz = [];
  List<String> get tempquiz => _tempquiz;
  set tempquiz(List<String> value) {
    _tempquiz = value;
  }

  void addToTempquiz(String value) {
    tempquiz.add(value);
  }

  void removeFromTempquiz(String value) {
    tempquiz.remove(value);
  }

  void removeAtIndexFromTempquiz(int index) {
    tempquiz.removeAt(index);
  }

  void updateTempquizAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tempquiz[index] = updateFn(_tempquiz[index]);
  }

  void insertAtIndexInTempquiz(int index, String value) {
    tempquiz.insert(index, value);
  }

  bool _isProfileChanged = false;
  bool get isProfileChanged => _isProfileChanged;
  set isProfileChanged(bool value) {
    _isProfileChanged = value;
  }

  bool _validDay = true;
  bool get validDay => _validDay;
  set validDay(bool value) {
    _validDay = value;
  }

  bool _validMonth = true;
  bool get validMonth => _validMonth;
  set validMonth(bool value) {
    _validMonth = value;
  }

  bool _validYear = true;
  bool get validYear => _validYear;
  set validYear(bool value) {
    _validYear = value;
  }

  int _imgsetprofile = 0;
  int get imgsetprofile => _imgsetprofile;
  set imgsetprofile(int value) {
    _imgsetprofile = value;
  }

  int _ops = 0;
  int get ops => _ops;
  set ops(int value) {
    _ops = value;
  }

  bool _optionsVal = true;
  bool get optionsVal => _optionsVal;
  set optionsVal(bool value) {
    _optionsVal = value;
  }

  String _location = '';
  String get location => _location;
  set location(String value) {
    _location = value;
  }

  bool _haveText = false;
  bool get haveText => _haveText;
  set haveText(bool value) {
    _haveText = value;
  }

  String _usernameWarn = '';
  String get usernameWarn => _usernameWarn;
  set usernameWarn(String value) {
    _usernameWarn = value;
  }

  String _Language = 'English';
  String get Language => _Language;
  set Language(String value) {
    _Language = value;
  }

  String _CodeVal = '';
  String get CodeVal => _CodeVal;
  set CodeVal(String value) {
    _CodeVal = value;
  }

  bool _valcode = true;
  bool get valcode => _valcode;
  set valcode(bool value) {
    _valcode = value;
  }

  String _homeimg = '';
  String get homeimg => _homeimg;
  set homeimg(String value) {
    _homeimg = value;
  }

  int _homeimgnum = 0;
  int get homeimgnum => _homeimgnum;
  set homeimgnum(int value) {
    _homeimgnum = value;
  }

  List<bool> _faqs = [];
  List<bool> get faqs => _faqs;
  set faqs(List<bool> value) {
    _faqs = value;
  }

  void addToFaqs(bool value) {
    faqs.add(value);
  }

  void removeFromFaqs(bool value) {
    faqs.remove(value);
  }

  void removeAtIndexFromFaqs(int index) {
    faqs.removeAt(index);
  }

  void updateFaqsAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    faqs[index] = updateFn(_faqs[index]);
  }

  void insertAtIndexInFaqs(int index, bool value) {
    faqs.insert(index, value);
  }

  final _faqsTypeManager = FutureRequestManager<List<FaqsRow>>();
  Future<List<FaqsRow>> faqsType({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<FaqsRow>> Function() requestFn,
  }) =>
      _faqsTypeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFaqsTypeCache() => _faqsTypeManager.clear();
  void clearFaqsTypeCacheKey(String? uniqueKey) =>
      _faqsTypeManager.clearRequest(uniqueKey);
}
