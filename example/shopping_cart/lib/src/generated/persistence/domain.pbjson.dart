///
//  Generated code. Do not modify.
//  source: persistence/domain.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const LineItem$json = const {
  '1': 'LineItem',
  '2': const [
    const {'1': 'productId', '3': 1, '4': 1, '5': 9, '10': 'productId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'quantity', '3': 3, '4': 1, '5': 5, '10': 'quantity'},
  ],
};

const ItemAdded$json = const {
  '1': 'ItemAdded',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.com.example.shoppingcart.persistence.LineItem', '10': 'item'},
  ],
};

const ItemRemoved$json = const {
  '1': 'ItemRemoved',
  '2': const [
    const {'1': 'productId', '3': 1, '4': 1, '5': 9, '10': 'productId'},
  ],
};

const Cart$json = const {
  '1': 'Cart',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.com.example.shoppingcart.persistence.LineItem', '10': 'items'},
  ],
};

