import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shopping_cart/components/products_cart/products_cart_widget.dart';
import 'shopping_cart_widget.dart' show ShoppingCartWidget;
import 'package:flutter/material.dart';

class ShoppingCartModel extends FlutterFlowModel<ShoppingCartWidget> {
  ///  Local state fields for this page.

  bool optionstate = true;

  ///  State fields for stateful widgets in this page.

  // Model for ProductsCart component.
  late ProductsCartModel productsCartModel1;
  // Model for ProductsCart component.
  late ProductsCartModel productsCartModel2;
  // Model for ProductsCart component.
  late ProductsCartModel productsCartModel3;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    productsCartModel1 = createModel(context, () => ProductsCartModel());
    productsCartModel2 = createModel(context, () => ProductsCartModel());
    productsCartModel3 = createModel(context, () => ProductsCartModel());
  }

  @override
  void dispose() {
    productsCartModel1.dispose();
    productsCartModel2.dispose();
    productsCartModel3.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
