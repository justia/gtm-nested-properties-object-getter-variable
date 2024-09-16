# Google Tag Manager 'Nested Properties Object Getter' Variable Template

[![Template Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-published-green)](https://tagmanager.google.com/gallery/#/owners/justia/templates/gtm-nested-properties-object-getter-variable) ![Repo Size](https://img.shields.io/github/repo-size/justia/gtm-nested-properties-object-getter-variable) ![License](https://img.shields.io/github/license/justia/gtm-nested-properties-object-getter-variable)

---

## Summary

This repository contains a [Google Tag Manager Variable template](https://developers.google.com/tag-manager/templates) that makes it possible to obtain nested properties from an object using dot or bracket notation (for example, `foo[0].bar`). It works similar to [lodash _.get function](https://lodash.com/docs/4.17.15#get).

## Usage
- Open a **Google Tag Manager** web container and click into the **Templates** from the left sidebar menu.
- In the **Variables Templates** section, click on **Search Gallery** button.
- Click on the Search Icon then type "nested properties".
- Select the **Nested Properties Object Getter** template to your workspace.
- Use the new template as needed.

## Options

### Source Object
Input should be either an <em>object</em> or an <em>array</em>. You can enter a variable name such as <strong>{{ My Object }}</strong>. If the resolved value is <em>undefined</em>, the <em>Default Value</em> is returned in its place.

### Property Path
You can enter the path to retrieve using dots (`foo.0.bar`) or using brackets (`foo[0].bar`).

### Default Value
Can be either `undefined`, empty string or a custom value. If `custom value` is selected, you will be able to enter a custom string.

## Examples

### Example 1
**Source Object:** 
```json
{
  "foo": [
    {
      "bar": "GTM test 01"
    },
    {
      "bar": "GTM test 02"
    }
  ]
}
```
**Property Path:** `foo.0.bar`

**Returned Value**: `GTM test 01`


### Example 2
**Source Object:** 
```json
{
  "foo": [
    {
      "bar":"GTM test 01"
    },
    {
      "bar":"GTM test 02"
    }
  ]
}
```
**Property Path:** `foo[1].bar`

**Returned Value**: `GTM test 02`


## Contributing
See our [contributing guidelines](CONTRIBUTING.md).
