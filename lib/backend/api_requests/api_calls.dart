import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start StorefrontAPIzz Group Code

class StorefrontAPIzzGroup {
  static String getBaseUrl() => 'https://modie-store.myshopify.com/api';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'X-Shopify-Storefront-Access-Token': 'dcf6b6212f47acfbab41015679458fed',
  };
  static GetInventoryShopifyCall getInventoryShopifyCall =
      GetInventoryShopifyCall();
  static CheckoutShopifyCall checkoutShopifyCall = CheckoutShopifyCall();
}

class GetInventoryShopifyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIzzGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "{ products(first: 250) { edges { node { id availableForSale tags handle title createdAt options(first:10) { id name values } updatedAt featuredImage {url} productType description totalInventory vendor priceRange { minVariantPrice { amount currencyCode }  } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetInventoryShopify',
      apiUrl: '$baseUrl/2024-07/graphql.json',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Shopify-Storefront-Access-Token': 'dcf6b6212f47acfbab41015679458fed',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckoutShopifyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIzzGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "appliedGiftCards"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckoutShopify',
      apiUrl: '$baseUrl/2024-07/graphql.json',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Shopify-Storefront-Access-Token': 'dcf6b6212f47acfbab41015679458fed',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End StorefrontAPIzz Group Code

/// Start User Management Group Code

class UserManagementGroup {
  static String getBaseUrl() =>
      'https://maxlytiwpgziyiekedql.supabase.co/auth/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1heGx5dGl3cGd6aXlpZWtlZHFsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5NTAyOTEsImV4cCI6MjAzODUyNjI5MX0.OE6Gg-owzAqrnQz07LhVY1KbwNuZl_wAO6Xm-yEsWeA',
    'Content-Type': 'application/json',
  };
  static VerifyOTPCall verifyOTPCall = VerifyOTPCall();
  static LoginCall loginCall = LoginCall();
  static ResetPasswordCall resetPasswordCall = ResetPasswordCall();
  static ResendOTPCall resendOTPCall = ResendOTPCall();
}

class VerifyOTPCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? oTPValue = '',
  }) async {
    final baseUrl = UserManagementGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "email",
  "email": "$email",
  "token": "$oTPValue"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VerifyOTP',
      apiUrl: '$baseUrl/v1/verify',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1heGx5dGl3cGd6aXlpZWtlZHFsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5NTAyOTEsImV4cCI6MjAzODUyNjI5MX0.OE6Gg-owzAqrnQz07LhVY1KbwNuZl_wAO6Xm-yEsWeA',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = UserManagementGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1heGx5dGl3cGd6aXlpZWtlZHFsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5NTAyOTEsImV4cCI6MjAzODUyNjI5MX0.OE6Gg-owzAqrnQz07LhVY1KbwNuZl_wAO6Xm-yEsWeA',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errormsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.msg''',
      ));
}

class ResetPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = UserManagementGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ResetPassword',
      apiUrl: '$baseUrl/recover',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1heGx5dGl3cGd6aXlpZWtlZHFsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5NTAyOTEsImV4cCI6MjAzODUyNjI5MX0.OE6Gg-owzAqrnQz07LhVY1KbwNuZl_wAO6Xm-yEsWeA',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResendOTPCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = UserManagementGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ResendOTP',
      apiUrl: '$baseUrl/otp',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1heGx5dGl3cGd6aXlpZWtlZHFsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5NTAyOTEsImV4cCI6MjAzODUyNjI5MX0.OE6Gg-owzAqrnQz07LhVY1KbwNuZl_wAO6Xm-yEsWeA',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End User Management Group Code

class GeoCodeCall {
  static Future<ApiCallResponse> call({
    String? lat = '',
    String? lng = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GeoCode',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=AIzaSyCt0GrsCiOzXh7Tmo87gHUWL_0VwLcISw8',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'lat': lat,
        'lng': lng,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? postalCode(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].formatted_address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? cityCountry(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.plus_code.compound_code''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
