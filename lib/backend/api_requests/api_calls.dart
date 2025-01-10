import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start StorefrontAPI Group Code

class StorefrontAPIGroup {
  static String getBaseUrl() => 'https://modie-store.myshopify.com/api';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'X-Shopify-Storefront-Access-Token': 'dcf6b6212f47acfbab41015679458fed',
  };
  static GetItemShopifyCall getItemShopifyCall = GetItemShopifyCall();
  static GetColorsItemCall getColorsItemCall = GetColorsItemCall();
  static GetItemCall getItemCall = GetItemCall();
  static SearchCall searchCall = SearchCall();
  static GetBlogCall getBlogCall = GetBlogCall();
  static GetMetaobjectsSizeCall getMetaobjectsSizeCall =
      GetMetaobjectsSizeCall();
  static GetMetaobjectsSizeJewelleryCall getMetaobjectsSizeJewelleryCall =
      GetMetaobjectsSizeJewelleryCall();
  static GetMetaobjectsColorCall getMetaobjectsColorCall =
      GetMetaobjectsColorCall();
  static GetMetaobjectMaterialsCall getMetaobjectMaterialsCall =
      GetMetaobjectMaterialsCall();
  static GetMetaobjectMaterialsJwCall getMetaobjectMaterialsJwCall =
      GetMetaobjectMaterialsJwCall();
  static GetMetaobjectGemstoneCall getMetaobjectGemstoneCall =
      GetMetaobjectGemstoneCall();
  static GetBlogFilterCall getBlogFilterCall = GetBlogFilterCall();
  static ShopFilterProductsCall shopFilterProductsCall =
      ShopFilterProductsCall();
}

class GetItemShopifyCall {
  Future<ApiCallResponse> call({
    String? idprod = '',
  }) async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "query": "{ product(id:\\"$idprod\\") { id title description totalInventory vendor priceRange { minVariantPrice { amount } } options(first: 40) { id name values } featuredImage { url } images(first: 40) { edges { node { url altText } } } metafields(identifiers: [{ namespace: \\"custom\\", key: \\"composition\\" }, { namespace: \\"custom\\", key: \\"care_instructions\\" }]) { namespace key value } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetItemShopify',
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

  String? price(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.priceRange.minVariantPrice.amount''',
      ));
  String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.featuredImage.url''',
      ));
  int? inventory(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.product.totalInventory''',
      ));
  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.title''',
      ));
  String? vendor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.vendor''',
      ));
  List? sizecolor(dynamic response) => getJsonField(
        response,
        r'''$.data.product.options[:].values''',
        true,
      ) as List?;
  List? options(dynamic response) => getJsonField(
        response,
        r'''$.data.product.options''',
        true,
      ) as List?;
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.description''',
      ));
  List<String>? sizes(dynamic response) => (getJsonField(
        response,
        r'''$.data.product.options[1].values''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? colors(dynamic response) => (getJsonField(
        response,
        r'''$.data.product.options[0].values''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? composition(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.metafields[0].value''',
      ));
  String? careInstruction(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.metafields[1].value''',
      ));
  List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data.product.images.edges[:].node.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetColorsItemCall {
  Future<ApiCallResponse> call({
    String? idprod = '',
  }) async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "query": "{ product(id:\\"$idprod\\") { options(first: 40) { id name values } featuredImage { url } images(first: 40) { edges { node { url altText } } }}}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetColorsItem',
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

  List<String>? colors(dynamic response) => (getJsonField(
        response,
        r'''$.data.product.options[0].values''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.data.product.images.edges[:].node''',
        true,
      ) as List?;
  List<String>? imageColor(dynamic response) => (getJsonField(
        response,
        r'''$.data.product.images.edges[:].node.altText''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetItemCall {
  Future<ApiCallResponse> call({
    String? idprod = '',
  }) async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "query": "{ product(id:\\"$idprod\\"){ title vendor  priceRange { minVariantPrice { amount}} featuredImage { url } images(first: 40) { edges { node { url altText } } }}}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetItem',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.title''',
      ));
  String? vendor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.vendor''',
      ));
  String? price(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.priceRange.minVariantPrice.amount''',
      ));
  String? imageurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product.featuredImage.url''',
      ));
  List<String>? imagesindx(dynamic response) => (getJsonField(
        response,
        r'''$.data.product.images.edges[:].node.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SearchCall {
  Future<ApiCallResponse> call({
    String? search = '',
  }) async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "query": "query { products(first: 50, query: \\"title:*${escapeStringForJson(search)}*\\") { edges { node { id } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Search',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  List<String>? productid(dynamic response) => (getJsonField(
        response,
        r'''$.data.products.edges[:].node.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? prodnumb(dynamic response) => getJsonField(
        response,
        r'''$.data.products.edges[:].node''',
        true,
      ) as List?;
}

class GetBlogCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "{ blogs(first: 10) { edges { node { id title handle articles(first: 5) { edges { node { id title handle image { url altText } publishedAt } } } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetBlog',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  dynamic blogs(dynamic response) => getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles''',
      );
  List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles.edges[:].node.image.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles.edges[:].node.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles.edges[:].node.title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetMetaobjectsSizeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "query { metaobjects(first: 10, type: \\"Size\\") { edges { node { id type fields { key value } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetMetaobjectsSize',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  List<String>? sizes(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetMetaobjectsSizeJewelleryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "query { metaobjects(first: 10, type: \\"ring_size\\") { edges { node { id type fields { key value } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetMetaobjectsSizeJewellery',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  List<String>? sizesRing(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetMetaobjectsColorCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "query { metaobjects(first: 10, type: \\"shopify--color-pattern\\") { edges { node { fields { key value } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetMetaobjectsColor',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  List? colors(dynamic response) => getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node''',
        true,
      ) as List?;
  List<String>? getColors(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[2].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? numberofcolors(dynamic response) => getJsonField(
        response,
        r'''$.data.metaobjects.edges''',
        true,
      ) as List?;
  List<String>? getCodeColor(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[0].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? number(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[2].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetMetaobjectMaterialsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "query { metaobjects(first: 10, type: \\"Materials\\") { edges { node { fields { key value } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetMetaobjectMaterials',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  List<String>? materials(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetMetaobjectMaterialsJwCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "query { metaobjects(first: 10, type: \\"materials_jewellery\\") { edges { node { fields { key value } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetMetaobjectMaterialsJw',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  List<String>? materials(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetMetaobjectGemstoneCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "query { metaobjects(first: 10, type: \\"Gemstone\\") { edges { node { fields { key value } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetMetaobjectGemstone',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  List<String>? materials(dynamic response) => (getJsonField(
        response,
        r'''$.data.metaobjects.edges[:].node.fields[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetBlogFilterCall {
  Future<ApiCallResponse> call({
    String? type = '',
  }) async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "query": "{ blogs(first: 10) { edges { node { id title handle articles(first: 5, query: \\"tag:${escapeStringForJson(type)}\\") { edges { node { id title handle image { url altText } publishedAt } } } } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetBlogFilter',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

  dynamic blogs(dynamic response) => getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles''',
      );
  List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles.edges[:].node.image.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles.edges[:].node.id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$.data.blogs.edges[:].node.articles.edges[:].node.title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ShopFilterProductsCall {
  Future<ApiCallResponse> call({
    String? json = '',
  }) async {
    final baseUrl = StorefrontAPIGroup.getBaseUrl();

    const ffApiRequestBody = '''
{
  "query": "query { products(first: 50, query: \\"variantOptions:value:Blue\\") { edges { node { id title description } } } }"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ShopFilterProducts',
      apiUrl: '$baseUrl/2024-10/graphql.json',
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

/// End StorefrontAPI Group Code

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

/// Start Edge Functions Group Code

class EdgeFunctionsGroup {
  static String getBaseUrl() =>
      'https://maxlytiwpgziyiekedql.supabase.co/functions/v1/';
  static Map<String, String> headers = {};
  static DeleteUserCall deleteUserCall = DeleteUserCall();
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = EdgeFunctionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteUser',
      apiUrl: '$baseUrl/delete-user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Edge Functions Group Code

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
