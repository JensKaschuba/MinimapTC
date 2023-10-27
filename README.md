# MinimapTC

> MinimapTC is an Oracle APEX Template Component Wrapper for the Minimap Widget, which is delivered with APEX.

![Screenshot of MinimapTC used as Partial in an Interactive Report](https://raw.githubusercontent.com/JensKaschuba/MinimapTC/master/assets/mimimaptc_ir_screenshot.png)

## Type of Template Component
- Partial
- Multiple

## Know Issues
- The underlying library maplibre uses WebGL, which allows only a specific amount of rendered maps per page.
  It depends on on the web browser. Amounts below 10 work in every modern browser.
> [!NOTE]
> A good practise for the use of MinimapTC as PArtial for an Interactive Report Column is the set the Rows per Page to a value < 10  
