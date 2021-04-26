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
  "displayName": "Nested Properties Object Getter",
  "description": "This template works similar to \u003ca href\u003d\"https://lodash.com/docs/4.17.15#get\"\u003elodash _.get function\u003c/a\u003e, making it possible to obtain values from an object given a string (such as \u003cem\u003efoo[0].bar\u003c/em\u003e).",
  "containerContexts": [
    "WEB"
  ],
  "categories": [
    "UTILITY"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "sourceObject",
    "displayName": "Source Object",
    "simpleValueType": true,
    "help": "Input should be either an \u003cem\u003eobject\u003c/em\u003e or an \u003cem\u003earray\u003c/em\u003e. You can enter a variable name such as \u003cstrong\u003e{{ My Object }}\u003c/strong\u003e. If the resolved value is \u003cem\u003eundefined\u003c/em\u003e, the \u003cem\u003eDefault Value\u003c/em\u003e is returned in its place."
  },
  {
    "type": "TEXT",
    "name": "propertyPath",
    "displayName": "Property Path",
    "simpleValueType": true,
    "help": "The path of the property to get, for example for \u003cstrong\u003e\u003ccode\u003e{foo: [{bar: \"my test value\"}]}\u003c/code\u003e\u003c/strong\u003e, \u003cem\u003efoo.0.bar\u003c/em\u003e (or \u003cem\u003efoo[0].bar\u003c/em\u003e) will return \"my test value\". For more examples, \u003ca href\u003d\"https://github.com/justia/gtm-nested-properties-object-getter-variable\"\u003evisit our documentation\u003c/a\u003e.",
    "valueHint": "foo.0.bar"
  },
  {
    "type": "SELECT",
    "name": "defaultValueOption",
    "displayName": "Default Value",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "undefined_value",
        "displayValue": "Undefined"
      },
      {
        "value": "empty_string",
        "displayValue": "Empty String"
      },
      {
        "value": "custom_value",
        "displayValue": "Custom Value"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "undefined_value",
    "help": "The value returned for undefined resolved values."
  },
  {
    "type": "TEXT",
    "name": "customDefaultValue",
    "displayName": "Custom Default Value",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "defaultValueOption",
        "paramValue": "custom_value",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// APIs
const getType = require('getType');

// Inputs
const defaultValue = data.defaultValue || undefined;
const sourceObject = data.sourceObject || {};
const defaultValueOption = data.defaultValueOption;
const customValue = data.customDefaultValue;

  // convert indexes to properties
const propertyPath = (data.propertyPath || '').replace('[', '.').replace(']', '');

// Data Validation
if (getType(sourceObject) !== 'array' && getType(sourceObject) !== 'object') {
  return getUndefinedValue(defaultValueOption, customValue);
}

if (sourceObject === null) {
  return getUndefinedValue(defaultValueOption, customValue);
}

// Logic
let response = propertyPath.split('.').reduce(function(obj, key) {
  if (typeof obj === 'undefined') {
    return undefined;
  }
  
  if (obj.hasOwnProperty(key)) {
    return obj[key];
  }
  
  return undefined;
}, sourceObject);

if (getType(response) === 'undefined') {
  return getUndefinedValue(defaultValueOption, customValue);
}

return response;


// Functions
function getUndefinedValue(option, customValue) {
  if (option === 'undefined_value') {
    return undefined;
  }
  
  if (option === 'empty_string') {
    return '';
  }
  
  return customValue;
}


___TESTS___

scenarios:
- name: Test Valid String Nested Property
  code: |-
    mockData.propertyPath = 'b.name';

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('Name B');
- name: Test Valid Boolean Nested Property
  code: |-
    mockData.propertyPath = 'a.type';

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo(false);
- name: Test Integer Nested Property
  code: |-
    mockData.propertyPath = 'c.0.age';

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo(12);
- name: Test Nested Property with Brackets
  code: |-
    mockData.propertyPath = 'c[1].type.0.foo';

    // Call runCode to run the template's code.
    let result = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(result).isEqualTo('my nested property');
- name: Test Undefined Nested Property
  code: |-
    mockData.propertyPath = 'foo.0.bar';
    mockData.sourceObject = {foo: [{bar: "my test value"}]};

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isEqualTo("my test value");
- name: Test Default Value
  code: |-
    mockData.propertyPath = 'x.0.x';
    mockData.defaultValueOption = 'undefined_value';

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isEqualTo(undefined);
- name: Test Default Value Empty String
  code: |-
    mockData.propertyPath = 'x.0.x';
    mockData.defaultValueOption = 'empty_string';

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isEqualTo('');
- name: Test Default Custom Value
  code: |-
    mockData.propertyPath = 'x.0.x';
    mockData.defaultValueOption = 'custom_value';
    mockData.customDefaultValue = 'My Custom Value';

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isEqualTo('My Custom Value');
setup: |-
  const object = {
      a: {
        'name': 'Name A',
        'age': 32,
        'type': false
      },
      b: {
        'name': 'Name B',
        'age': 30.5,
        'type': true
      },
      c: [
        {
          'name': 'Name C',
          'age': 12,
          'type': true
        },
        {
          'name': 'Name D',
          'age': 10,
          'type': [
            {
              'foo': 'my nested property'
            }
          ]
        }
      ]
  };

  let mockData = {
    sourceObject: object
  };


___NOTES___

Created on 4/26/2021, 6:39:36 PM


