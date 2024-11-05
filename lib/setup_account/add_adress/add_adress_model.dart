import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_adress_widget.dart' show AddAdressWidget;
import 'package:flutter/material.dart';

class AddAdressModel extends FlutterFlowModel<AddAdressWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldFirstName widget.
  FocusNode? textFieldFirstNameFocusNode;
  TextEditingController? textFieldFirstNameTextController;
  String? Function(BuildContext, String?)?
      textFieldFirstNameTextControllerValidator;
  String? _textFieldFirstNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ga7utx82' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldSurname widget.
  FocusNode? textFieldSurnameFocusNode;
  TextEditingController? textFieldSurnameTextController;
  String? Function(BuildContext, String?)?
      textFieldSurnameTextControllerValidator;
  String? _textFieldSurnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0z0q44uu' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldDialingCode widget.
  FocusNode? textFieldDialingCodeFocusNode;
  TextEditingController? textFieldDialingCodeTextController;
  String? Function(BuildContext, String?)?
      textFieldDialingCodeTextControllerValidator;
  String? _textFieldDialingCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bzlmmjjt' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldPhone widget.
  FocusNode? textFieldPhoneFocusNode;
  TextEditingController? textFieldPhoneTextController;
  String? Function(BuildContext, String?)?
      textFieldPhoneTextControllerValidator;
  String? _textFieldPhoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '01ro4kw8' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - getLat] action in btnLocation widget.
  String? lat;
  // Stores action output result for [Custom Action - getLng] action in btnLocation widget.
  String? lng;
  // Stores action output result for [Backend Call - API (GeoCode)] action in btnLocation widget.
  ApiCallResponse? apiResulthw;
  // State field(s) for TextFieldAddres1 widget.
  FocusNode? textFieldAddres1FocusNode;
  TextEditingController? textFieldAddres1TextController;
  String? Function(BuildContext, String?)?
      textFieldAddres1TextControllerValidator;
  String? _textFieldAddres1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a2itiihl' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldAddress2 widget.
  FocusNode? textFieldAddress2FocusNode;
  TextEditingController? textFieldAddress2TextController;
  String? Function(BuildContext, String?)?
      textFieldAddress2TextControllerValidator;
  // State field(s) for TextFieldCity widget.
  FocusNode? textFieldCityFocusNode;
  TextEditingController? textFieldCityTextController;
  String? Function(BuildContext, String?)? textFieldCityTextControllerValidator;
  String? _textFieldCityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'brnfk8b5' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldPostCode widget.
  FocusNode? textFieldPostCodeFocusNode;
  TextEditingController? textFieldPostCodeTextController;
  String? Function(BuildContext, String?)?
      textFieldPostCodeTextControllerValidator;
  String? _textFieldPostCodeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'or2f46w3' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextFieldCountry widget.
  FocusNode? textFieldCountryFocusNode;
  TextEditingController? textFieldCountryTextController;
  String? Function(BuildContext, String?)?
      textFieldCountryTextControllerValidator;
  String? _textFieldCountryTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b82fzccp' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldFirstNameTextControllerValidator =
        _textFieldFirstNameTextControllerValidator;
    textFieldSurnameTextControllerValidator =
        _textFieldSurnameTextControllerValidator;
    textFieldDialingCodeTextControllerValidator =
        _textFieldDialingCodeTextControllerValidator;
    textFieldPhoneTextControllerValidator =
        _textFieldPhoneTextControllerValidator;
    textFieldAddres1TextControllerValidator =
        _textFieldAddres1TextControllerValidator;
    textFieldCityTextControllerValidator =
        _textFieldCityTextControllerValidator;
    textFieldPostCodeTextControllerValidator =
        _textFieldPostCodeTextControllerValidator;
    textFieldCountryTextControllerValidator =
        _textFieldCountryTextControllerValidator;
  }

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

    textFieldAddres1FocusNode?.dispose();
    textFieldAddres1TextController?.dispose();

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
