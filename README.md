# Google Tag Manager 'Nested Properties Object Getter' Variable Template

## Summary

that works similar to [lodash _.get function](https://lodash.com/docs/4.17.15#get), making it possible to obtain values from an object given a string (such as *foo[0].bar*).

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
      "bar": "GTM test 01"
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
      "bar":"GTM test 01"
    }
  ]
}
```
**Property Path:** `foo[1].bar`

**Returned Value**: `GTM test 02`


## Contributing
See our [contributing guidelines](CONTRIBUTING.md).
