___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 Ecom Items - DLV Version 1",
  "description": "Returns GA4 Ecommerce Items \u0026 Standard Ecommerce Parameters (ex. payment_type) as Data Layer Variable Version 1. This ensures that GTM will only access the most recent Item push into the Data Layer.",
  "categories": [
    "ANALYTICS",
    "UTILITY",
    "TAG_MANAGEMENT"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "ecomParam",
    "displayName": "Standard Ecommerce Parameters",
    "selectItems": [
      {
        "value": "items",
        "displayValue": "items"
      },
      {
        "value": "item_list_id",
        "displayValue": "item_list_id"
      },
      {
        "value": "item_list_name",
        "displayValue": "item_list_name"
      },
      {
        "value": "creative_name",
        "displayValue": "creative_name"
      },
      {
        "value": "creative_slot",
        "displayValue": "creative_slot"
      },
      {
        "value": "promotion_id",
        "displayValue": "promotion_id"
      },
      {
        "value": "promotion_name",
        "displayValue": "promotion_name"
      },
      {
        "value": "location_id",
        "displayValue": "location_id"
      },
      {
        "value": "payment_type",
        "displayValue": "payment_type"
      },
      {
        "value": "shipping_tier",
        "displayValue": "shipping_tier"
      },
      {
        "value": "transaction_id",
        "displayValue": "transaction_id"
      },
      {
        "value": "affiliation",
        "displayValue": "affiliation"
      },
      {
        "value": "coupon",
        "displayValue": "coupon"
      },
      {
        "value": "value",
        "displayValue": "value"
      },
      {
        "value": "shipping",
        "displayValue": "shipping"
      },
      {
        "value": "tax",
        "displayValue": "tax"
      }
    ],
    "simpleValueType": true,
    "help": "Select Standard Ecommerce Parameter. If you select ex. \u003cstrong\u003eitems\u003c/strong\u003e parameter, \u003cstrong\u003eecommerce.items\u003c/strong\u003e will be returned as Data Layer Version 1.",
    "alwaysInSummary": true
  },
  {
    "type": "CHECKBOX",
    "name": "removeNullfromItems",
    "checkboxText": "Remove null Values from Items",
    "simpleValueType": true,
    "help": "If items has null values (ex. \u003cstrong\u003eitem_category2: null\u003c/strong\u003e), these values can be reported as a \"null\" string.\n\u003cbr /\u003e\u003cbr /\u003e\nBy ticking this box, \u003cstrong\u003enull\u003c/strong\u003e values will be replaced with \u003cstrong\u003eundefined\u003c/strong\u003e, and discarded from being sent from GTM to GA4.",
    "enablingConditions": [
      {
        "paramName": "ecomParam",
        "paramValue": "items",
        "type": "EQUALS"
      }
    ],
    "alwaysInSummary": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const dataLayer = require('copyFromDataLayer');
let ecom = dataLayer('ecommerce', 1);

if(ecom) {
  switch(data.ecomParam) {
    case 'item_list_id':
      ecom = ecom.item_list_id;
       break;
    case 'item_list_name':
      ecom = ecom.item_list_name;
    break;
    case 'creative_name':
      ecom = ecom.creative_name;
      break;
    case 'creative_slot':
      ecom = ecom.creative_slot;
      break;
    case 'promotion_id':
      ecom = ecom.promotion_id;
      break;
    case 'promotion_name':
      ecom = ecom.promotion_name;
      break;
    case 'location_id':
      ecom = ecom.location_id;
      break;
    case 'payment_type':
      ecom = ecom.payment_type;
      break;
    case 'shipping_tier':
      ecom = ecom.shipping_tier;
      break;
    case 'transaction_id':
      ecom = ecom.transaction_id;
      break;
    case 'affiliation':
      ecom = ecom.affiliation;
      break;
    case 'coupon':
      ecom = ecom.coupon;
      break;
    case 'value':
      ecom = ecom.value;
      break;
    case 'shipping':
      ecom = ecom.shipping;
      break;
    case 'tax':
      ecom = ecom.tax;
      break;
    default:
      ecom = ecom.items;
    }
      if(data.removeNullfromItems && ecom) {
        ecom.forEach(function(object){
          for(let key in object) {
            if(object[key] === null)
              object[key] = undefined;
            }
      });
  }
  return ecom;
}
return undefined;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce.*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 8/6/2021, 4:27:14 PM
