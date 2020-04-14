///
//  Generated code. Do not modify.
//  source: shoppingcart.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AddLineItem$json = const {
  '1': 'AddLineItem',
  '2': const [
    const {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'userId'
    },
    const {'1': 'product_id', '3': 2, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'quantity', '3': 4, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

const RemoveLineItem$json = const {
  '1': 'RemoveLineItem',
  '2': const [
    const {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'userId'
    },
    const {'1': 'product_id', '3': 2, '4': 1, '5': 9, '10': 'productId'},
  ],
};

const GetShoppingCart$json = const {
  '1': 'GetShoppingCart',
  '2': const [
    const {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'userId'
    },
  ],
};

const LineItem$json = const {
  '1': 'LineItem',
  '2': const [
    const {'1': 'product_id', '3': 1, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

const Cart$json = const {
  '1': 'Cart',
  '2': const [
    const {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.com.example.shoppingcart.LineItem',
      '10': 'items'
    },
  ],
};
