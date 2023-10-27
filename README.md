# MinimapTC

> MinimapTC is an Oracle APEX Template Component Wrapper for the Minimap Widget, which is delivered with APEX.

![Screenshot of MinimapTC used as Partial in an Interactive Report](https://raw.githubusercontent.com/JensKaschuba/MinimapTC/master/assets/mimimaptc_ir_screenshot.png)

## Type of Template Component
- Partial
- Multiple

## Installation
- Download the Template Component Installation file
## Usage
### Interactive Report (IR)
- Use a dummy NULL column in the SQL of the IR
- assign the Template Component to this column
- Set the attrbiuts according to the use case

## Attributes
All attributes including help texts are available directly in the plugin.

## Know Issues
- The underlying library maplibre uses WebGL, which allows only a specific amount of rendered maps per page.
  It depends on on the web browser. Amounts below 10 work in every modern browser.
> [!NOTE]
> A good practise for the use of MinimapTC as Partial for an Interactive Report Column is the set the Rows per Page to a value < 10  
