prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>13219820478208043
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'JK'
);
end;
/
 
prompt APPLICATION 102 - MinimapTC Demo
--
-- Application Export:
--   Application:     102
--   Name:            MinimapTC Demo
--   Date and Time:   22:22 Freitag Oktober 27, 2023
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 29803608886948093
--   Manifest End
--   Version:         23.1.5
--   Instance ID:     2600108574266392
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/de_kaschuba_minimaptc
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(29803608886948093)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'DE.KASCHUBA.MINIMAPTC'
,p_display_name=>'MiniMapTC'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.miniMap#MIN#.js',
'#PLUGIN_FILES#index#MIN#.js',
'',
'',
''))
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'    {if MY_SECOND_PLACEHOLDER%assigned/}<div></div>{endif/}',
'{else/}',
'    <minimap-tc lng="#LNG#" ',
'                lat="#LAT#"',
'                background="#BACKGROUND#"',
'                zoom="#ZOOM#"',
'                marker="{if MARKER/}true{else /}false{endif/}"',
'                markercolor="#MARKERCOLOR#"',
'                controls="{if CONTROLS/}true{else /}false{endif/}"',
'                interactive="{if INTERACTIVE/}true{else /}false{endif/}"',
'                tooltip="#TOOLTIP#"',
'                width="#WIDTH#"',
'                height="#HEIGHT#"',
'                showgeocoord="{if SHOWGEOCOORD/}true{else /}false{endif/}"',
'                googlemaps="{if GOOGLEMAPS/}true{else /}false{endif/}"',
'                googlemapslinktext="#GOOGLEMAPSLINKTEXT#"',
'                >',
'    </minimap-tc>',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<ul class="t-ContentRow #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-ContentRow-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>199
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31942615046648729)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LNG'
,p_prompt=>'Longitude'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'40.65236<br>',
'50.00563<br>',
'-15.168597<br>',
'<br>',
'To get the longitude out of a SDO_GEOMETRY column, you can use the following sample code.<br>',
'Hint: To avoid strang errors, use all the times table aliases when working with SDO_GEOMETRY columns.',
'<pre><code>',
'SELECT g.geometry.sdo_point.x lng',
'  FROM geo_table g',
'</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Longitude for the center (marker if enabled) of minimap.<br>',
'The format is <b>Decimal Degree (DD)</b>.<br>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31942948559651118)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'LAT'
,p_prompt=>'Latitude'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'40.65236<br>',
'48.00563<br>',
'-10.16855<br>',
'<br>',
'To get the latitude out of a SDO_GEOMETRY column, you can use the following sample code.<br>',
'Hint: To avoid strang errors, use all the times table aliases when working with SDO_GEOMETRY columns.',
'<pre><code>',
'SELECT g.geometry.sdo_point.y lat',
'  FROM geo_table g',
'</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Latitude for the center (marker if enabled) of minimap.<br>',
'The format is <b>Decimal Degree (DD)</b>.<br>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31952327950869886)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'BACKGROUND'
,p_prompt=>'Background'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'osm-bright'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Background for minimap.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31952670405873660)
,p_plugin_attribute_id=>wwv_flow_imp.id(31952327950869886)
,p_display_sequence=>10
,p_display_value=>'osm-bright'
,p_return_value=>'osm-bright'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31952995875875408)
,p_plugin_attribute_id=>wwv_flow_imp.id(31952327950869886)
,p_display_sequence=>20
,p_display_value=>'osm-positron'
,p_return_value=>'osm-positron'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31953452604877320)
,p_plugin_attribute_id=>wwv_flow_imp.id(31952327950869886)
,p_display_sequence=>30
,p_display_value=>'bi-world-map'
,p_return_value=>'bi-world-map'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31953829595878623)
,p_plugin_attribute_id=>wwv_flow_imp.id(31952327950869886)
,p_display_sequence=>40
,p_display_value=>'osm-dark-matter'
,p_return_value=>'osm-dark-matter'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31954281038879418)
,p_plugin_attribute_id=>wwv_flow_imp.id(31952327950869886)
,p_display_sequence=>50
,p_display_value=>'world-map'
,p_return_value=>'world-map'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31959291279016370)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ZOOM'
,p_prompt=>'Zoom Level'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The zoom level of the map.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31959658731018922)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>10
,p_display_value=>'0'
,p_return_value=>'0'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31960029697019334)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>20
,p_display_value=>'1'
,p_return_value=>'1'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31960445240019732)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>30
,p_display_value=>'2'
,p_return_value=>'2'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31960847051019960)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>40
,p_display_value=>'3'
,p_return_value=>'3'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31961197008020197)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>50
,p_display_value=>'4'
,p_return_value=>'4'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31961667999020394)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>60
,p_display_value=>'5'
,p_return_value=>'5'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31961994027020702)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>70
,p_display_value=>'6'
,p_return_value=>'6'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31962429516020899)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>80
,p_display_value=>'7'
,p_return_value=>'7'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31962799342021095)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>90
,p_display_value=>'8'
,p_return_value=>'8'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31963277520021316)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>100
,p_display_value=>'9'
,p_return_value=>'9'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31963680903021632)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>110
,p_display_value=>'10'
,p_return_value=>'10'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31964078709021857)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>120
,p_display_value=>'11'
,p_return_value=>'11'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31964457897022072)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>130
,p_display_value=>'12'
,p_return_value=>'12'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31964871215022274)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>140
,p_display_value=>'13'
,p_return_value=>'13'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31965258595022520)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>150
,p_display_value=>'14'
,p_return_value=>'14'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31965674977022738)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>160
,p_display_value=>'15'
,p_return_value=>'15'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31966073316024116)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>170
,p_display_value=>'16'
,p_return_value=>'16'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31966400492024375)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>180
,p_display_value=>'17'
,p_return_value=>'17'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(31966813391029594)
,p_plugin_attribute_id=>wwv_flow_imp.id(31959291279016370)
,p_display_sequence=>190
,p_display_value=>'18'
,p_return_value=>'18'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31968750545106551)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'MARKER'
,p_prompt=>'Marker'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Whether to show a marker or not.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31969013687110648)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'MARKERCOLOR'
,p_prompt=>'Marker Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'red<br>',
'blue<br>',
'#DDD<br>',
'#FAB035<br>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Color of the marker, if empty default color of maplibre is used<br>',
'You can use every HTML color notation format.'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31969378457112897)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'CONTROLS'
,p_prompt=>'Controls'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Whether to show controls or not.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31969607733116140)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'INTERACTIVE'
,p_prompt=>'Interactive'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'Whether to have an interactive map or not.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31969907031118915)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'TOOLTIP'
,p_prompt=>'Tooltip'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If supplied, shows a tooltip popup above a marker, which is visible when the marker was clicked.<br>',
'The tooltip also supports HTML markup and APEX template directives.'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31976920834958140)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'WIDTH'
,p_prompt=>'Width'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'300px'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'300px<br>',
'75%'))
,p_help_text=>'Width of Minimap.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(31977282865964328)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'HEIGHT'
,p_prompt=>'Height'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'200px'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'200px<br>',
'50%'))
,p_help_text=>'Height of Minimap.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(32114426743080509)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'SHOWGEOCOORD'
,p_prompt=>'Show Geocoordinates'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'If set to Yes, MinimapTC will print the Geocoordinates of the Marker in the DMS format (Degree, Minutes, Seconds) below the Minimap.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(32120776433523119)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'GOOGLEMAPS'
,p_prompt=>'Link to Google Maps'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_help_text=>'If set, a link to Google Maps is rendered below the Minimap.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(32121008797533863)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'GOOGLEMAPSLINKTEXT'
,p_prompt=>'Link text to Google Maps'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Open in Google Maps'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(32120776433523119)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Link text to Google Maps.',
'HTML markup is supported.'))
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E206C6F61644D696E694D617028297B2428222E6D696E696D6170746322292E6D696E694D617028297D636C617373204D696E696D6170544320657874656E64732048544D4C456C656D656E747B70617273654D69786564466F726D61';
wwv_flow_imp.g_varchar2_table(2) := '744E756D6265722874297B6C657420653D537472696E672874293B652E6C617374496E6465784F6628222C22293E652E6C617374496E6465784F6628222E22293F28653D652E7265706C616365282F5C2E2F672C2222292C653D652E7265706C61636528';
wwv_flow_imp.g_varchar2_table(3) := '2F2C2F672C222E2229293A653D652E7265706C616365282F2C2F672C2222293B636F6E737420693D7061727365466C6F61742865293B69662869734E614E286929297468726F77206E6577204572726F722822496E76616C6964206E756D657269632076';
wwv_flow_imp.g_varchar2_table(4) := '616C756522293B72657475726E20697D6C6E676C6174546F44656772656528742C65297B6C657420693B636F6E737420613D4D6174682E6162732874292C723D4D6174682E666C6F6F722861292C6E3D36302A28612D72292C6F3D4D6174682E666C6F6F';
wwv_flow_imp.g_varchar2_table(5) := '72286E292C733D4D6174682E726F756E642836302A286E2D6F29293B7377697463682865297B63617365226C6174223A693D743E3D303F224E223A2253223B627265616B3B63617365226C6E67223A693D743E3D303F2245223A2257223B627265616B3B';
wwv_flow_imp.g_varchar2_table(6) := '64656661756C743A7468726F77206E6577204572726F722822496E76616C6964206C6E676C617420706172616D6574657222297D72657475726E7B6465677265653A722C6D696E3A6F2C7365633A732C646972656374696F6E3A697D7D636F6E6E656374';
wwv_flow_imp.g_varchar2_table(7) := '656443616C6C6261636B28297B636F6E737420743D746869732E67657441747472696275746528226C6E6722297C7C22222C653D746869732E67657441747472696275746528226C617422297C7C22222C693D746869732E70617273654D69786564466F';
wwv_flow_imp.g_varchar2_table(8) := '726D61744E756D6265722874292C613D746869732E70617273654D69786564466F726D61744E756D6265722865292C723D746869732E67657441747472696275746528226261636B67726F756E6422297C7C226F736D2D627269676874222C6E3D746869';
wwv_flow_imp.g_varchar2_table(9) := '732E67657441747472696275746528227A6F6F6D22297C7C223136222C6F3D746869732E67657441747472696275746528226D61726B657222297C7C2274727565222C733D746869732E67657441747472696275746528226D61726B6572636F6C6F7222';
wwv_flow_imp.g_varchar2_table(10) := '297C7C22222C6C3D746869732E6765744174747269627574652822636F6E74726F6C7322297C7C2274727565222C673D746869732E6765744174747269627574652822696E74657261637469766522297C7C2274727565222C633D746869732E67657441';
wwv_flow_imp.g_varchar2_table(11) := '74747269627574652822746F6F6C74697022297C7C22222C643D746869732E6765744174747269627574652822776964746822297C7C223330307078222C6D3D746869732E676574417474726962757465282268656967687422297C7C22323030707822';
wwv_flow_imp.g_varchar2_table(12) := '2C683D2274727565223D3D3D28746869732E676574417474726962757465282273686F7767656F636F6F726422297C7C2266616C736522292C753D2274727565223D3D3D28746869732E6765744174747269627574652822676F6F676C656D6170732229';
wwv_flow_imp.g_varchar2_table(13) := '7C7C2266616C736522292C703D746869732E6765744174747269627574652822676F6F676C656D6170736C696E6B7465787422297C7C224F70656E20696E20476F6F676C65204D617073223B6C657420243D603C64697620636C6173733D226D696E696D';
wwv_flow_imp.g_varchar2_table(14) := '61707463225C6E2020202020202020202020202020202020202020202020202020202020202020646174612D63656E7465723D225B247B697D2C20247B617D5D225C6E202020202020202020202020202020202020202020202020202020202020202064';
wwv_flow_imp.g_varchar2_table(15) := '6174612D6261636B67726F756E643D22247B727D225C6E2020202020202020202020202020202020202020202020202020202020202020646174612D7A6F6F6D3D22247B6E7D225C6E202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(16) := '2020202020646174612D6D61726B65723D22247B6F7D225C6E2020202020202020202020202020202020202020202020202020202020202020646174612D6D61726B65722D636F6C6F723D22247B737D225C6E2020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(17) := '202020202020202020202020202020646174612D636F6E74726F6C733D22247B6C7D225C6E2020202020202020202020202020202020202020202020202020202020202020646174612D696E7465726163746976653D22247B677D225C6E202020202020';
wwv_flow_imp.g_varchar2_table(18) := '2020202020202020202020202020202020202020202020202020646174612D746F6F6C7469703D22247B637D225C6E20202020202020202020202020202020202020202020202020202020202020207374796C653D2277696474683A247B647D3B686569';
wwv_flow_imp.g_varchar2_table(19) := '6768743A247B6D7D223E20202020202020202020202020202020202020202020202020202020202020205C6E20202020202020202020202020202020202020202020202020203C2F6469763E5C6E20202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(20) := '2020603B69662868297B636F6E737420743D746869732E6C6E676C6174546F44656772656528692C226C6E6722292C653D746869732E6C6E676C6174546F44656772656528612C226C617422293B636F6E736F6C652E6C6F672860247B742E6465677265';
wwv_flow_imp.g_varchar2_table(21) := '657DC2B020247B742E6D696E7D2720247B742E7365637D2220247B742E646972656374696F6E7D60292C636F6E736F6C652E6C6F672860247B652E6465677265657DC2B020247B652E6D696E7D2720247B652E7365637D2220247B652E64697265637469';
wwv_flow_imp.g_varchar2_table(22) := '6F6E7D60292C242B3D603C6469763E247B652E6465677265657DC2B020247B652E6D696E7D2720247B652E7365637D2220247B652E646972656374696F6E7D266E6273703B247B742E6465677265657DC2B020247B742E6D696E7D2720247B742E736563';
wwv_flow_imp.g_varchar2_table(23) := '7D2220247B742E646972656374696F6E7D3C2F6469763E607D75262628242B3D603C6469763E3C6120687265663D2268747470733A2F2F7777772E676F6F676C652E636F6D2F6D6170733F713D247B617D2C247B697D22207461726765743D225F626C61';
wwv_flow_imp.g_varchar2_table(24) := '6E6B223E247B707D3C2F613E3C2F6469763E60292C636F6E736F6C652E6C6F672824292C746869732E696E6E657248544D4C3D242C617065782E6A517565727928617065782E6750616765436F6E7465787424292E6861734C6F61644C697374656E6572';
wwv_flow_imp.g_varchar2_table(25) := '7C7C28617065782E6A517565727928617065782E6750616765436F6E7465787424292E6F6E2822617065787265616479656E64222C6C6F61644D696E694D6170292C617065782E6A517565727928617065782E6750616765436F6E7465787424292E6861';
wwv_flow_imp.g_varchar2_table(26) := '734C6F61644C697374656E65723D2130297D7D637573746F6D456C656D656E74732E67657428226D696E696D61702D746322297C7C637573746F6D456C656D656E74732E646566696E6528226D696E696D61702D7463222C4D696E696D61705443293B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(16672403943214308)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_file_name=>'index.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E206C6F61644D696E694D61702829207B202020200D0A202020202428222E6D696E696D6170746322292E6D696E694D617028293B200D0A7D0D0A0D0A636C617373204D696E696D6170544320657874656E64732048544D4C456C656D';
wwv_flow_imp.g_varchar2_table(2) := '656E74207B0D0A0D0A2020202070617273654D69786564466F726D61744E756D6265722876616C756529207B0D0A0D0A20202020202020206C657420737472696E6756616C7565203D20537472696E672876616C7565293B0D0A0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(3) := '2F2F204C61737420736570617261746F7220636F6D6D613A205775726F7065616E20666F726D61740D0A202020202020202069662028737472696E6756616C75652E6C617374496E6465784F6628272C2729203E20737472696E6756616C75652E6C6173';
wwv_flow_imp.g_varchar2_table(4) := '74496E6465784F6628272E272929207B0D0A2020202020202020202020202F2F2052656D6F766520616C6C20706F696E747320616E64207265706C61636520636F6D6D61207769746820706F696E740D0A202020202020202020202020737472696E6756';
wwv_flow_imp.g_varchar2_table(5) := '616C7565203D20737472696E6756616C75652E7265706C616365282F5C2E2F672C202727293B0D0A202020202020202020202020737472696E6756616C7565203D20737472696E6756616C75652E7265706C616365282F2C2F672C20272E27293B0D0A20';
wwv_flow_imp.g_varchar2_table(6) := '202020202020207D20656C7365207B202F2F20416D65726963616E20666F726D6174206F72207374616E6461726420772F6F20736570617261746F72730D0A202020202020202020202020737472696E6756616C7565203D20737472696E6756616C7565';
wwv_flow_imp.g_varchar2_table(7) := '2E7265706C616365282F2C2F672C202727293B202F2F2052656D6F766520616C6C20636F6D6D61730D0A20202020202020207D0D0A0D0A2020202020202020636F6E7374206E756D6572696356616C7565203D207061727365466C6F617428737472696E';
wwv_flow_imp.g_varchar2_table(8) := '6756616C7565293B0D0A0D0A20202020202020206966202869734E614E286E756D6572696356616C75652929207B0D0A2020202020202020202020207468726F77206E6577204572726F722827496E76616C6964206E756D657269632076616C75652729';
wwv_flow_imp.g_varchar2_table(9) := '3B0D0A20202020202020207D0D0A0D0A202020202020202072657475726E206E756D6572696356616C75653B0D0A202020207D0D0A0D0A202020206C6E676C6174546F44656772656528646563696D616C2C206C6E676C617429207B0D0A202020202020';
wwv_flow_imp.g_varchar2_table(10) := '20200D0A20202020202020200D0A20202020202020206C657420646972656374696F6E3B0D0A2020202020202020202020202020202020202020202020200D0A2020202020202020636F6E737420616273646563696D616C203D204D6174682E61627328';
wwv_flow_imp.g_varchar2_table(11) := '646563696D616C293B0D0A2020202020202020636F6E737420646567726565203D204D6174682E666C6F6F7228616273646563696D616C293B0D0A2020202020202020636F6E7374206D696E466C6F6174203D2028616273646563696D616C202D206465';
wwv_flow_imp.g_varchar2_table(12) := '6772656529202A2036303B0D0A2020202020202020636F6E7374206D696E203D204D6174682E666C6F6F72286D696E466C6F6174293B0D0A2020202020202020636F6E737420736563203D204D6174682E726F756E6428286D696E466C6F6174202D206D';
wwv_flow_imp.g_varchar2_table(13) := '696E29202A203630293B0D0A0D0A202020202020202073776974636820286C6E676C617429207B200D0A202020202020202020206361736520276C6174273A0D0A202020202020202020202020646972656374696F6E203D20646563696D616C203E3D20';
wwv_flow_imp.g_varchar2_table(14) := '30203F20274E27203A202753273B0D0A202020202020202020202020627265616B3B0D0A202020202020202020206361736520276C6E67273A0D0A202020202020202020202020646972656374696F6E203D20646563696D616C203E3D2030203F202745';
wwv_flow_imp.g_varchar2_table(15) := '27203A202757273B0D0A202020202020202020202020627265616B3B0D0A2020202020202020202064656661756C743A0D0A2020202020202020202020207468726F77206E6577204572726F722827496E76616C6964206C6E676C617420706172616D65';
wwv_flow_imp.g_varchar2_table(16) := '74657227293B0D0A20202020202020207D0D0A20202020202020200D0A202020202020202072657475726E207B0D0A2020202020202020202020206465677265653A206465677265652C0D0A2020202020202020202020206D696E3A206D696E2C0D0A20';
wwv_flow_imp.g_varchar2_table(17) := '20202020202020202020207365633A207365632C0D0A202020202020202020202020646972656374696F6E3A20646972656374696F6E0D0A20202020202020207D3B0D0A202020207D0D0A0D0A20202020636F6E6E656374656443616C6C6261636B2829';
wwv_flow_imp.g_varchar2_table(18) := '207B0D0A0D0A2020202020202020636F6E737420704C6E67203D20746869732E67657441747472696275746528276C6E672729207C7C2027273B0D0A2020202020202020636F6E737420704C6174203D20746869732E6765744174747269627574652827';
wwv_flow_imp.g_varchar2_table(19) := '6C61742729207C7C2027273B0D0A2020202020202020636F6E7374206C6E67203D20746869732E70617273654D69786564466F726D61744E756D62657228704C6E67293B0D0A2020202020202020636F6E7374206C6174203D20746869732E7061727365';
wwv_flow_imp.g_varchar2_table(20) := '4D69786564466F726D61744E756D62657228704C6174293B0D0A0D0A2020202020202020636F6E7374206261636B67726F756E64203D20746869732E67657441747472696275746528276261636B67726F756E642729207C7C20276F736D2D6272696768';
wwv_flow_imp.g_varchar2_table(21) := '74273B0D0A2020202020202020636F6E7374207A6F6F6D203D20746869732E67657441747472696275746528277A6F6F6D2729207C7C20273136273B0D0A2020202020202020636F6E7374206D61726B6572203D20746869732E67657441747472696275';
wwv_flow_imp.g_varchar2_table(22) := '746528276D61726B65722729207C7C202774727565273B0D0A2020202020202020636F6E7374206D61726B6572636F6C6F72203D20746869732E67657441747472696275746528276D61726B6572636F6C6F722729207C7C2027273B0D0A202020202020';
wwv_flow_imp.g_varchar2_table(23) := '2020636F6E737420636F6E74726F6C73203D20746869732E6765744174747269627574652827636F6E74726F6C732729207C7C202774727565273B20202020202020200D0A2020202020202020636F6E737420696E746572616374697665203D20746869';
wwv_flow_imp.g_varchar2_table(24) := '732E6765744174747269627574652827696E7465726163746976652729207C7C202774727565273B200D0A2020202020202020636F6E737420746F6F6C746970203D20746869732E6765744174747269627574652827746F6F6C7469702729207C7C2027';
wwv_flow_imp.g_varchar2_table(25) := '273B0D0A2020202020202020636F6E7374207769647468203D20746869732E676574417474726962757465282777696474682729207C7C20273330307078273B0D0A2020202020202020636F6E737420686569676874203D20746869732E676574417474';
wwv_flow_imp.g_varchar2_table(26) := '72696275746528276865696768742729207C7C20273230307078273B0D0A2020202020202020636F6E73742073686F7747656F436F6F7264203D202828746869732E676574417474726962757465282773686F7767656F636F6F72642729207C7C202766';
wwv_flow_imp.g_varchar2_table(27) := '616C73652729203D3D3D2027747275652729203F2074727565203A2066616C73653B0D0A2020202020202020636F6E737420676F6F676C656D617073203D202828746869732E6765744174747269627574652827676F6F676C656D6170732729207C7C20';
wwv_flow_imp.g_varchar2_table(28) := '2766616C73652729203D3D3D2027747275652729203F2074727565203A2066616C73653B0D0A2020202020202020636F6E737420676F6F676C656D6170736C696E6B74657874203D20746869732E6765744174747269627574652827676F6F676C656D61';
wwv_flow_imp.g_varchar2_table(29) := '70736C696E6B746578742729207C7C20274F70656E20696E20476F6F676C65204D617073273B0D0A0D0A20202020202020206C6574206F7574707574203D20603C64697620636C6173733D226D696E696D61707463220D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(30) := '2020202020202020202020202020202020202020646174612D63656E7465723D225B247B6C6E677D2C20247B6C61747D5D220D0A2020202020202020202020202020202020202020202020202020202020202020646174612D6261636B67726F756E643D';
wwv_flow_imp.g_varchar2_table(31) := '22247B6261636B67726F756E647D220D0A2020202020202020202020202020202020202020202020202020202020202020646174612D7A6F6F6D3D22247B7A6F6F6D7D220D0A202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(32) := '2020646174612D6D61726B65723D22247B6D61726B65727D220D0A2020202020202020202020202020202020202020202020202020202020202020646174612D6D61726B65722D636F6C6F723D22247B6D61726B6572636F6C6F727D220D0A2020202020';
wwv_flow_imp.g_varchar2_table(33) := '202020202020202020202020202020202020202020202020202020646174612D636F6E74726F6C733D22247B636F6E74726F6C737D220D0A2020202020202020202020202020202020202020202020202020202020202020646174612D696E7465726163';
wwv_flow_imp.g_varchar2_table(34) := '746976653D22247B696E7465726163746976657D220D0A2020202020202020202020202020202020202020202020202020202020202020646174612D746F6F6C7469703D22247B746F6F6C7469707D220D0A202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(35) := '20202020202020202020202020207374796C653D2277696474683A247B77696474687D3B6865696768743A247B6865696768747D223E20202020202020202020202020202020202020202020202020202020202020200D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(36) := '20202020202020202020202020203C2F6469763E0D0A202020202020202020202020202020202020202020202020603B0D0A0D0A20202020202020206966202873686F7747656F436F6F726429207B0D0A202020202020202020202020636F6E7374206C';
wwv_flow_imp.g_varchar2_table(37) := '6E67446567726565203D20746869732E6C6E676C6174546F446567726565286C6E672C276C6E6727293B0D0A202020202020202020202020636F6E7374206C6174446567726565203D20746869732E6C6E676C6174546F446567726565286C61742C276C';
wwv_flow_imp.g_varchar2_table(38) := '617427293B0D0A202020202020202020202020636F6E736F6C652E6C6F672860247B6C6E674465677265652E6465677265657DC2B020247B6C6E674465677265652E6D696E7D2720247B6C6E674465677265652E7365637D2220247B6C6E674465677265';
wwv_flow_imp.g_varchar2_table(39) := '652E646972656374696F6E7D60293B0D0A202020202020202020202020636F6E736F6C652E6C6F672860247B6C61744465677265652E6465677265657DC2B020247B6C61744465677265652E6D696E7D2720247B6C61744465677265652E7365637D2220';
wwv_flow_imp.g_varchar2_table(40) := '247B6C61744465677265652E646972656374696F6E7D60293B0D0A2020202020202020202020200D0A2020202020202020202020206F7574707574202B3D20603C6469763E247B6C61744465677265652E6465677265657DC2B020247B6C617444656772';
wwv_flow_imp.g_varchar2_table(41) := '65652E6D696E7D2720247B6C61744465677265652E7365637D2220247B6C61744465677265652E646972656374696F6E7D266E6273703B247B6C6E674465677265652E6465677265657DC2B020247B6C6E674465677265652E6D696E7D2720247B6C6E67';
wwv_flow_imp.g_varchar2_table(42) := '4465677265652E7365637D2220247B6C6E674465677265652E646972656374696F6E7D3C2F6469763E603B2020202020202020202020200D0A20202020202020207D0D0A20202020202020200D0A202020202020202069662028676F6F676C656D617073';
wwv_flow_imp.g_varchar2_table(43) := '29207B0D0A20202020202020202020206F7574707574202B3D20603C6469763E3C6120687265663D2268747470733A2F2F7777772E676F6F676C652E636F6D2F6D6170733F713D247B6C61747D2C247B6C6E677D22207461726765743D225F626C616E6B';
wwv_flow_imp.g_varchar2_table(44) := '223E247B676F6F676C656D6170736C696E6B746578747D3C2F613E3C2F6469763E60200D0A20202020202020207D0D0A0D0A0D0A2020202020202020636F6E736F6C652E6C6F67286F7574707574293B0D0A0D0A2020202020202020746869732E696E6E';
wwv_flow_imp.g_varchar2_table(45) := '657248544D4C203D206F75747075743B2020202020202020200D0A0D0A20202020202020206966202821617065782E6A51756572792820617065782E6750616765436F6E746578742420292E6861734C6F61644C697374656E657229207B0D0A20202020';
wwv_flow_imp.g_varchar2_table(46) := '20202020202020617065782E6A51756572792820617065782E6750616765436F6E746578742420292E6F6E282022617065787265616479656E64222C206C6F61644D696E694D6170293B20202020200D0A2020202020202020202020617065782E6A5175';
wwv_flow_imp.g_varchar2_table(47) := '6572792820617065782E6750616765436F6E746578742420292E6861734C6F61644C697374656E6572203D20747275653B0D0A20202020202020207D3B0D0A202020200D0A202020207D0D0A7D0D0A0D0A6966202821637573746F6D456C656D656E7473';
wwv_flow_imp.g_varchar2_table(48) := '2E67657428276D696E696D61702D7463272929207B0D0A2020637573746F6D456C656D656E74732E646566696E6528276D696E696D61702D7463272C204D696E696D61705443293B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29813878670408995)
,p_plugin_id=>wwv_flow_imp.id(29803608886948093)
,p_file_name=>'index.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
