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
  "brand": {
    "id": "Justia",
    "displayName": "Justia",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAABoVBMVEUGNXr////7/P0KOHwJN3wINnv+/v4AJ3EHNnv9/v4IN3sJOHz+/v8AKHEALHT8/P39/f4HNnr8/f4AKnMAL3YAKHIAK3MEMnhKbJ6ZrMn8/f0AK3T+//+YrMgBLnYCMXhIap13kLaOo8MJN3sEMXgFM3kGNHoIN3wjTYoAKXIAJnAALXWcr8r29/r6+/0AJW8AKnIBK3MBL3YAMHcEL3YDMHYCMXcEMHcEMXcDMngDM3gENHkGM3kFNHkFNXoHNXoGNnoLNnsNOHwOOHwNOX0MO34RPoASQIEYQoIYQoMYQ4QkTYpDZptCZpoYRIQbRYQcR4YfR4YgSogkToopUY0qUo0zWZI1W5M4XZU6XpU+Y5g/ZJlCY5hDZ5tFaJxGaJxGaZxNbqBRcqJUc6NefalnhK5tibFyjLNzjbSFnL6PpMOVqseXqseXq8iZrMiarcmbrsmdr8qjtc6mt9Cywda2xNi5xtq7x9rBzN7Ez9/H0uHP2ObQ2eba4evc4+zh5u/j6fDm6/Ln7PLs7/Xt8fXw8vfw8/f3+fv4+vz5+vz6+/yJ4WSoAAABrElEQVR4Xu2VVa/cMBQG+9lBhmW+zMzMZWZmZmZm+NV1lL0rVa20Th4rj5THGZ1Yts4WPgQCn26SzF/JqbbKsFW7M4kvp48OVO4VCoXK/Tu7alr8QHv2HBQwyiCH03KCQGkvfhHGUPB9d7LAnsYE/0FABERABERABM4mCGj+H4vFAsOKETA6uhpL0Oy9BK8e6OEMdFcPrueMeoCqrSBRYPDQuMbjm+kdHwYyC7QeKD1HEQwd77fN+Tzz59ZeAY9XU9203ZC29p1BRICXXH+gdU0/AXHx5rRjO/2jw0feQUcIQZtNm/u+nH0IAgRQnl09dTzf9hUKQqCjJSs1D8h9N0Mf8PTIU/RN/+3GfPMjMJwbcBFRJAo89kUQXLdNnnv3AD/xD1y8pos+xxEsTT7CkP6XH+DHSUfiusSdE7ehR4M3UAjcy70m5zNYHrnyGYrrKuW6XSQ6Pp5nPie+lNl/6xsswAsYFsoYvLszxXxuzBn1wLWnnzyEWF9etPZkOpgfA9mcUp3txy7kL+ZbTuyrqmNm7H2gUWO2PxXi1GTK9ARohiSZkmRo3EZyBILfSzxK15953BYAAAAASUVORK5CYII="
  },  
  "containerContexts": [
    "WEB"
  ],
  "categories": ["UTILITY"]
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


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


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


