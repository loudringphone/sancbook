sanctionedCountryCodes = ["AF", "CN", "DJ", "ET", "FR", "HK", "IR", "IQ", "KP", "PK", "RU", "SO", "TW", "TR", "GB", "US", ""]

sanctionedCountryIds = [40, 34, 41, 38, 19, 31, 16, 17, 1, 10, 36, 37, 39, 20, 42, 44, 43]

countrySanctionsLengths = [2, 16, 1, 1, 1, 6, 4, 3, 64, 8, 124, 17, 3, 11, 0, 5, 0]




// countryCodes = document.querySelector('.countryCodes')
// countryIds = document.querySelector('.countryIds')
// countrySanctions = document.querySelector('.countrySanctions')






var simplemaps_worldmap_mapdata={
  main_settings: {
   //General settings
    width: 'responsive', //'700' or 'responsive'
    background_color: "#FFFFFF",
    background_transparent: "yes",
    popups: "detect",
    
    //State defaults
    state_description: "",
    state_color: "#88A4BC",
    state_hover_color: "#3B729F",
    state_url: "",
    border_size: 0.3,
    border_color: "#ffffff",
    all_states_inactive: "no",
    all_states_zoomable: "no",
    
    // //Location defaults
    // location_description: "Regional Office",
    // location_color: "#de6667",
    // location_opacity: ".9",
    // location_hover_opacity: 1,
    // location_url: "",
    // location_size: 25,
    // location_type: "triangle",
    // location_border_color: "#FFFFFF",
    // location_border: 2,
    // location_hover_border: 2.5,
    // all_locations_inactive: "no",
    // all_locations_hidden: "no",
    
    //Label defaults
    label_color: "#ffffff",
    label_hover_color: "#ffffff",
    label_size: 22,
    label_font: "Arial",
    hide_labels: "no",
    hide_eastern_labels: false,
    manual_zoom: "no",
    back_image: "no",
    arrow_box: "no",
    navigation_size: "40",
    navigation_color: "#f7f7f7",
    navigation_border_color: "#636363",
    initial_back: "no",
    initial_zoom: -1,
    initial_zoom_solo: "no",
    region_opacity: 1,
    region_hover_opacity: 0.6,
    zoom_out_incrementally: "yes",
    zoom_percentage: 0.99,
    zoom_time: 0.5,
    
    //Popup settings
    popup_color: "white",
    popup_opacity: 0.9,
    popup_shadow: 1,
    popup_corners: 5,
    popup_font: "12px/1.5 Verdana, Arial, Helvetica, sans-serif",
    popup_nocss: "no",
    
    //Advanced settings
    div: "map",
    auto_load: "yes",
    rotate: "0",
    url_new_tab: "no",
    images_directory: "default",
    import_labels: "no",
    fade_time: 0.1,
    link_text: "",
    state_image_url: "",
    state_image_position: "",
    location_image_url: ""
  },
  state_specific: {
    AE: {
      name: "United Arab Emirates",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AF: {
      name: "Afghanistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AL: {
      name: "Albania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AM: {
      name: "Armenia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AO: {
      name: "Angola",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AR: {
      name: "Argentina",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AT: {
      name: "Austria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AU: {
      name: "Australia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    AZ: {
      name: "Azerbaidjan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BA: {
      name: "Bosnia-Herzegovina",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BD: {
      name: "Bangladesh",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BE: {
      name: "Belgium",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BF: {
      name: "Burkina Faso",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BG: {
      name: "Bulgaria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BH: {
      name: "Bahrain",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BI: {
      name: "Burundi",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BJ: {
      name: "Benin",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BN: {
      name: "Brunei Darussalam",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BO: {
      name: "Bolivia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BR: {
      name: "Brazil",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BS: {
      name: "Bahamas",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BT: {
      name: "Bhutan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BW: {
      name: "Botswana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BY: {
      name: "Belarus",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    BZ: {
      name: "Belize",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CA: {
      name: "Canada",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CD: {
      name: "Congo",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CF: {
      name: "Central African Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CG: {
      name: "Congo",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CH: {
      name: "Switzerland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CI: {
      name: "Ivory Coast",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CL: {
      name: "Chile",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CM: {
      name: "Cameroon",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CN: {
      name: "China",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: "",
    },
    CO: {
      name: "Colombia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CR: {
      name: "Costa Rica",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CU: {
      name: "Cuba",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CV: {
      name: "Cape Verde",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CY: {
      name: "Cyprus",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    CZ: {
      name: "Czech Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    DE: {
      name: "Germany",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    DJ: {
      name: "Djibouti",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    DK: {
      name: "Denmark",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    DO: {
      name: "Dominican Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    DZ: {
      name: "Algeria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    EC: {
      name: "Ecuador",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    EE: {
      name: "Estonia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    EG: {
      name: "Egypt",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    EH: {
      name: "Western Sahara",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ER: {
      name: "Eritrea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ES: {
      name: "Spain",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ET: {
      name: "Ethiopia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    FI: {
      name: "Finland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    FJ: {
      name: "Fiji",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    FK: {
      name: "Falkland Islands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    FR: {
      name: "France",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GA: {
      name: "Gabon",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GB: {
      name: "Great Britain",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GE: {
      name: "Georgia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GF: {
      name: "French Guyana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GH: {
      name: "Ghana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GL: {
      name: "Greenland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GM: {
      name: "Gambia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GN: {
      name: "Guinea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GQ: {
      name: "Equatorial Guinea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GR: {
      name: "Greece",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GS: {
      name: "S. Georgia & S. Sandwich Isls.",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GT: {
      name: "Guatemala",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GW: {
      name: "Guinea Bissau",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    GY: {
      name: "Guyana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    HN: {
      name: "Honduras",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    HR: {
      name: "Croatia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    HT: {
      name: "Haiti",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    HU: {
      name: "Hungary",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IC: {
      name: "Canary Islands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ID: {
      name: "Indonesia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IE: {
      name: "Ireland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IL: {
      name: "Israel",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IN: {
      name: "India",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IQ: {
      name: "Iraq",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IR: {
      name: "Iran",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IS: {
      name: "Iceland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    IT: {
      name: "Italy",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    JM: {
      name: "Jamaica",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    JO: {
      name: "Jordan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    JP: {
      name: "Japan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    KE: {
      name: "Kenya",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    KG: {
      name: "Kyrgyzstan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    KH: {
      name: "Cambodia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    KP: {
      name: "North Korea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    KR: {
      name: "South Korea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    KW: {
      name: "Kuwait",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    KZ: {
      name: "Kazakhstan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LA: {
      name: "Laos",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LK: {
      name: "Sri Lanka",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LR: {
      name: "Liberia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LS: {
      name: "Lesotho",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LT: {
      name: "Lithuania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LU: {
      name: "Luxembourg",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LV: {
      name: "Latvia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    LY: {
      name: "Libya",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MA: {
      name: "Morocco",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MD: {
      name: "Moldavia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ME: {
      name: "Montenegro",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MG: {
      name: "Madagascar",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MK: {
      name: "Macedonia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ML: {
      name: "Mali",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MM: {
      name: "Myanmar",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MN: {
      name: "Mongolia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MR: {
      name: "Mauritania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MW: {
      name: "Malawi",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MX: {
      name: "Mexico",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MY: {
      name: "Malaysia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    MZ: {
      name: "Mozambique",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NA: {
      name: "Namibia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NC: {
      name: "New Caledonia (French)",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NE: {
      name: "Niger",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NG: {
      name: "Nigeria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NI: {
      name: "Nicaragua",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NL: {
      name: "Netherlands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NO: {
      name: "Norway",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NP: {
      name: "Nepal",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    NZ: {
      name: "New Zealand",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    OM: {
      name: "Oman",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PA: {
      name: "Panama",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PE: {
      name: "Peru",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PG: {
      name: "Papua New Guinea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PH: {
      name: "Philippines",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PK: {
      name: "Pakistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PL: {
      name: "Poland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PR: {
      name: "Puerto Rico",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PS: {
      name: "Palestine",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PT: {
      name: "Portugal",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    PY: {
      name: "Paraguay",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    QA: {
      name: "Qatar",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    RO: {
      name: "Romania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    RS: {
      name: "Serbia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    RU: {
      name: "Russia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    RW: {
      name: "Rwanda",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SA: {
      name: "Saudi Arabia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SB: {
      name: "Solomon Islands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SD: {
      name: "Sudan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SE: {
      name: "Sweden",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SI: {
      name: "Slovenia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SK: {
      name: "Slovak Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SL: {
      name: "Sierra Leone",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SN: {
      name: "Senegal",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SO: {
      name: "Somalia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SR: {
      name: "Suriname",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SS: {
      name: "South Sudan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SV: {
      name: "El Salvador",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SY: {
      name: "Syria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    SZ: {
      name: "Swaziland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TD: {
      name: "Chad",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TG: {
      name: "Togo",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TH: {
      name: "Thailand",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TJ: {
      name: "Tadjikistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TL: {
      name: "East Timor",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TM: {
      name: "Turkmenistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TN: {
      name: "Tunisia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TR: {
      name: "Turkey",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TT: {
      name: "Trinidad and Tobago",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TW: {
      name: "Taiwan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    TZ: {
      name: "Tanzania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    UA: {
      name: "Ukraine",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    UG: {
      name: "Uganda",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    US: {
      name: "United States",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: "",
      hide: "no"
    },
    UY: {
      name: "Uruguay",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    UZ: {
      name: "Uzbekistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    VE: {
      name: "Venezuela",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    VN: {
      name: "Vietnam",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    VU: {
      name: "Vanuatu",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    YE: {
      name: "Yemen",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ZA: {
      name: "South Africa",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ZM: {
      name: "Zambia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    },
    ZW: {
      name: "Zimbabwe",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      description: ""
    }
  },
  locations: {},
  regions: {},
  labels: {},
  legend: {
    entries: []
  }
};



mapObj = simplemaps_worldmap_mapdata["state_specific"]
keys = Object.keys(mapObj)


for (let i = 0; i < keys.length; i++) {
  key = keys[i]
  for (let j = 0; j < sanctionedCountryCodes.length; j++) {
    if (key == sanctionedCountryCodes[j] && countrySanctionsLengths[j] > 0) {
      simplemaps_worldmap_mapdata["state_specific"][key].inactive = 'no'
      simplemaps_worldmap_mapdata["state_specific"][key].color = '#bc8888'
      simplemaps_worldmap_mapdata["state_specific"][key].hover_color = '#a30f0f'
      simplemaps_worldmap_mapdata["state_specific"][key].url = `countries/${sanctionedCountryIds[j]}`
      simplemaps_worldmap_mapdata["state_specific"][key].description   = `Sanctions: ${countrySanctionsLengths[j]}`
      continue
    }   
  }
}








// function mapColor(code) {
//   if (countryCodes == null || countryIds == null || countrySanctions == null){
//   }
//   else {
//     countryCodes = countryCodes.textContent.split(',')
//     countryIds = countryIds.textContent.split(',')
//     countrySanctions = countrySanctions.textContent.split(',')
//     for (let i = 0; i < countryCodes.length; i++){
//       if (code == countryCodes[i]) {
//         // alert(code)
//         return '#bc8888'
//       }
//     }
//   }
// }




    
  










    
  
  
  
 

  










