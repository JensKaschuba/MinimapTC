# MinimapTC

> MinimapTC is an Oracle APEX Template Component Wrapper for the Minimap Widget, which is delivered with APEX.

![Screenshot of MinimapTC used as Partial in an Interactive Report](https://raw.githubusercontent.com/JensKaschuba/MinimapTC/master/assets/mimimaptc_ir_screenshot.png)

## Type of Template Component
- Partial
- Multiple

## Installation
- Download the Template Component Installation file
## Usage
### Interactive Report (IR) - Partial
- Use a dummy NULL column in the SQL of the IR
- assign the Template Component to this column
- Set the attributes according to the use case
### Region - Multiple(Report)
- Create a region and set the type to MinimapTC
- Set datasource 
- Set the attributes according to the use case

## Attributes
All attributes including help texts are available directly in the plugin.

## Behind the Scenes
The APEX minimap widget needs a javascript function call to initialize the map after the page has been loaded.
As the Template Components doesn't have the possibilty to define declarativly function calls after page load, MinimapTC uses WebComponents to set this needed call for the minimap widget.
In MinimapTC the WebComponent is also used to generate the GeoLocation in DMS format and for creation of the Google Maps link.

## Know Issues
- The underlying library maplibre uses WebGL, which allows only a specific amount of rendered maps per page.
  It depends on on the web browser. Amounts below 10 work in every modern browser.
> [!NOTE]
> A good practise for the use of MinimapTC as Partial for an Interactive Report Column is the set the Rows per Page to a value < 10  

## Special Thanks
- Philip Hartenfeller: [hartenfeller.dev](https://hartenfeller.dev)
- The APEX dev team: GREAT JOB!

