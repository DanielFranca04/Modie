// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsStruct extends BaseStruct {
  NotificationsStruct({
    bool? orderupdate,
    bool? promotionsales,
    bool? newbrand,
    bool? newprodguides,
    bool? approvalreview,
    bool? contentdownload,
    bool? preorderalert,
  })  : _orderupdate = orderupdate,
        _promotionsales = promotionsales,
        _newbrand = newbrand,
        _newprodguides = newprodguides,
        _approvalreview = approvalreview,
        _contentdownload = contentdownload,
        _preorderalert = preorderalert;

  // "orderupdate" field.
  bool? _orderupdate;
  bool get orderupdate => _orderupdate ?? true;
  set orderupdate(bool? val) => _orderupdate = val;

  bool hasOrderupdate() => _orderupdate != null;

  // "promotionsales" field.
  bool? _promotionsales;
  bool get promotionsales => _promotionsales ?? true;
  set promotionsales(bool? val) => _promotionsales = val;

  bool hasPromotionsales() => _promotionsales != null;

  // "newbrand" field.
  bool? _newbrand;
  bool get newbrand => _newbrand ?? true;
  set newbrand(bool? val) => _newbrand = val;

  bool hasNewbrand() => _newbrand != null;

  // "newprodguides" field.
  bool? _newprodguides;
  bool get newprodguides => _newprodguides ?? true;
  set newprodguides(bool? val) => _newprodguides = val;

  bool hasNewprodguides() => _newprodguides != null;

  // "approvalreview" field.
  bool? _approvalreview;
  bool get approvalreview => _approvalreview ?? true;
  set approvalreview(bool? val) => _approvalreview = val;

  bool hasApprovalreview() => _approvalreview != null;

  // "contentdownload" field.
  bool? _contentdownload;
  bool get contentdownload => _contentdownload ?? true;
  set contentdownload(bool? val) => _contentdownload = val;

  bool hasContentdownload() => _contentdownload != null;

  // "preorderalert" field.
  bool? _preorderalert;
  bool get preorderalert => _preorderalert ?? true;
  set preorderalert(bool? val) => _preorderalert = val;

  bool hasPreorderalert() => _preorderalert != null;

  static NotificationsStruct fromMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        orderupdate: data['orderupdate'] as bool?,
        promotionsales: data['promotionsales'] as bool?,
        newbrand: data['newbrand'] as bool?,
        newprodguides: data['newprodguides'] as bool?,
        approvalreview: data['approvalreview'] as bool?,
        contentdownload: data['contentdownload'] as bool?,
        preorderalert: data['preorderalert'] as bool?,
      );

  static NotificationsStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'orderupdate': _orderupdate,
        'promotionsales': _promotionsales,
        'newbrand': _newbrand,
        'newprodguides': _newprodguides,
        'approvalreview': _approvalreview,
        'contentdownload': _contentdownload,
        'preorderalert': _preorderalert,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'orderupdate': serializeParam(
          _orderupdate,
          ParamType.bool,
        ),
        'promotionsales': serializeParam(
          _promotionsales,
          ParamType.bool,
        ),
        'newbrand': serializeParam(
          _newbrand,
          ParamType.bool,
        ),
        'newprodguides': serializeParam(
          _newprodguides,
          ParamType.bool,
        ),
        'approvalreview': serializeParam(
          _approvalreview,
          ParamType.bool,
        ),
        'contentdownload': serializeParam(
          _contentdownload,
          ParamType.bool,
        ),
        'preorderalert': serializeParam(
          _preorderalert,
          ParamType.bool,
        ),
      }.withoutNulls;

  static NotificationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationsStruct(
        orderupdate: deserializeParam(
          data['orderupdate'],
          ParamType.bool,
          false,
        ),
        promotionsales: deserializeParam(
          data['promotionsales'],
          ParamType.bool,
          false,
        ),
        newbrand: deserializeParam(
          data['newbrand'],
          ParamType.bool,
          false,
        ),
        newprodguides: deserializeParam(
          data['newprodguides'],
          ParamType.bool,
          false,
        ),
        approvalreview: deserializeParam(
          data['approvalreview'],
          ParamType.bool,
          false,
        ),
        contentdownload: deserializeParam(
          data['contentdownload'],
          ParamType.bool,
          false,
        ),
        preorderalert: deserializeParam(
          data['preorderalert'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'NotificationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationsStruct &&
        orderupdate == other.orderupdate &&
        promotionsales == other.promotionsales &&
        newbrand == other.newbrand &&
        newprodguides == other.newprodguides &&
        approvalreview == other.approvalreview &&
        contentdownload == other.contentdownload &&
        preorderalert == other.preorderalert;
  }

  @override
  int get hashCode => const ListEquality().hash([
        orderupdate,
        promotionsales,
        newbrand,
        newprodguides,
        approvalreview,
        contentdownload,
        preorderalert
      ]);
}

NotificationsStruct createNotificationsStruct({
  bool? orderupdate,
  bool? promotionsales,
  bool? newbrand,
  bool? newprodguides,
  bool? approvalreview,
  bool? contentdownload,
  bool? preorderalert,
}) =>
    NotificationsStruct(
      orderupdate: orderupdate,
      promotionsales: promotionsales,
      newbrand: newbrand,
      newprodguides: newprodguides,
      approvalreview: approvalreview,
      contentdownload: contentdownload,
      preorderalert: preorderalert,
    );
