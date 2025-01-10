import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_adress_widget.dart' show AddAdressWidget;
import 'package:flutter/material.dart';

class AddAdressModel extends FlutterFlowModel<AddAdressWidget> {
  ///  Local state fields for this page.

  bool firstname = true;

  bool surname = true;

  bool dialing = true;

  bool phone = true;

  bool address = true;

  bool city = true;

  bool postcode = true;

  bool contry = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldFirstName widget.
  FocusNode? textFieldFirstNameFocusNode;
  TextEditingController? textFieldFirstNameTextController;
  String? Function(BuildContext, String?)?
      textFieldFirstNameTextControllerValidator;
  // State field(s) for TextFieldSurname widget.
  FocusNode? textFieldSurnameFocusNode;
  TextEditingController? textFieldSurnameTextController;
  String? Function(BuildContext, String?)?
      textFieldSurnameTextControllerValidator;
  // State field(s) for TextFieldDialingCode widget.
  FocusNode? textFieldDialingCodeFocusNode;
  TextEditingController? textFieldDialingCodeTextController;
  String? Function(BuildContext, String?)?
      textFieldDialingCodeTextControllerValidator;
  // State field(s) for TextFieldPhone widget.
  FocusNode? textFieldPhoneFocusNode;
  TextEditingController? textFieldPhoneTextController;
  String? Function(BuildContext, String?)?
      textFieldPhoneTextControllerValidator;
  // Stores action output result for [Custom Action - getLat] action in btnLocation widget.
  String? lat;
  // Stores action output result for [Custom Action - getLng] action in btnLocation widget.
  String? lng;
  // Stores action output result for [Backend Call - API (GeoCode)] action in btnLocation widget.
  ApiCallResponse? apiResulthw;
  // State field(s) for AddressLine1 widget.
  FocusNode? addressLine1FocusNode;
  TextEditingController? addressLine1TextController;
  String? Function(BuildContext, String?)? addressLine1TextControllerValidator;
  // State field(s) for TextFieldAddress2 widget.
  FocusNode? textFieldAddress2FocusNode;
  TextEditingController? textFieldAddress2TextController;
  String? Function(BuildContext, String?)?
      textFieldAddress2TextControllerValidator;
  // State field(s) for TextFieldCity widget.
  FocusNode? textFieldCityFocusNode;
  TextEditingController? textFieldCityTextController;
  String? Function(BuildContext, String?)? textFieldCityTextControllerValidator;
  // State field(s) for TextFieldPostCode widget.
  FocusNode? textFieldPostCodeFocusNode;
  TextEditingController? textFieldPostCodeTextController;
  String? Function(BuildContext, String?)?
      textFieldPostCodeTextControllerValidator;
  // State field(s) for TextFieldCountry widget.
  FocusNode? textFieldCountryFocusNode;
  TextEditingController? textFieldCountryTextController;
  String? Function(BuildContext, String?)?
      textFieldCountryTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFirstNameFocusNode?.dispose();
    textFieldFirstNameTextController?.dispose();

    textFieldSurnameFocusNode?.dispose();
    textFieldSurnameTextController?.dispose();

    textFieldDialingCodeFocusNode?.dispose();
    textFieldDialingCodeTextController?.dispose();

    textFieldPhoneFocusNode?.dispose();
    textFieldPhoneTextController?.dispose();

    addressLine1FocusNode?.dispose();
    addressLine1TextController?.dispose();

    textFieldAddress2FocusNode?.dispose();
    textFieldAddress2TextController?.dispose();

    textFieldCityFocusNode?.dispose();
    textFieldCityTextController?.dispose();

    textFieldPostCodeFocusNode?.dispose();
    textFieldPostCodeTextController?.dispose();

    textFieldCountryFocusNode?.dispose();
    textFieldCountryTextController?.dispose();
  }
}
