sanctionedCountryCodes = ["AF", "CN", "DJ", "ET", "FR", "HK", "IR", "IQ", "KP", "PK", "RU", "SO", "TW", "TR", "GB"]

sanctionedCountryIds = [40, 34, 41, 38, 19, 31, 16, 17, 1, 10, 36, 37, 39, 20, 42]

countrySanctionsLengths = [2, 16, 1, 1, 1, 6, 4, 3, 64, 8, 124, 17, 3, 11, 0]


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
      url: ""
    },
    AF: {
      name: "Afghanistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    AL: {
      name: "Albania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    AM: {
      name: "Armenia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    AO: {
      name: "Angola",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    AR: {
      name: "Argentina",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    AT: {
      name: "Austria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    AU: {
      name: "Australia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    AZ: {
      name: "Azerbaidjan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BA: {
      name: "Bosnia-Herzegovina",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BD: {
      name: "Bangladesh",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BE: {
      name: "Belgium",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BF: {
      name: "Burkina Faso",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BG: {
      name: "Bulgaria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BH: {
      name: "Bahrain",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BI: {
      name: "Burundi",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BJ: {
      name: "Benin",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BN: {
      name: "Brunei Darussalam",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BO: {
      name: "Bolivia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BR: {
      name: "Brazil",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BS: {
      name: "Bahamas",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BT: {
      name: "Bhutan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BW: {
      name: "Botswana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BY: {
      name: "Belarus",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    BZ: {
      name: "Belize",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CA: {
      name: "Canada",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CD: {
      name: "Congo",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CF: {
      name: "Central African Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CG: {
      name: "Congo",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CH: {
      name: "Switzerland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CI: {
      name: "Ivory Coast",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CL: {
      name: "Chile",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CM: {
      name: "Cameroon",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CN: {
      name: "China",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CO: {
      name: "Colombia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CR: {
      name: "Costa Rica",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CU: {
      name: "Cuba",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CV: {
      name: "Cape Verde",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CY: {
      name: "Cyprus",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    CZ: {
      name: "Czech Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    DE: {
      name: "Germany",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    DJ: {
      name: "Djibouti",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    DK: {
      name: "Denmark",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    DO: {
      name: "Dominican Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    DZ: {
      name: "Algeria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    EC: {
      name: "Ecuador",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    EE: {
      name: "Estonia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    EG: {
      name: "Egypt",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    EH: {
      name: "Western Sahara",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ER: {
      name: "Eritrea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ES: {
      name: "Spain",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ET: {
      name: "Ethiopia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    FI: {
      name: "Finland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    FJ: {
      name: "Fiji",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    FK: {
      name: "Falkland Islands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    FR: {
      name: "France",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GA: {
      name: "Gabon",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GB: {
      name: "Great Britain",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GE: {
      name: "Georgia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GF: {
      name: "French Guyana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GH: {
      name: "Ghana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GL: {
      name: "Greenland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GM: {
      name: "Gambia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GN: {
      name: "Guinea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GQ: {
      name: "Equatorial Guinea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GR: {
      name: "Greece",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GS: {
      name: "S. Georgia & S. Sandwich Isls.",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GT: {
      name: "Guatemala",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GW: {
      name: "Guinea Bissau",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    GY: {
      name: "Guyana",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    HN: {
      name: "Honduras",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    HR: {
      name: "Croatia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    HT: {
      name: "Haiti",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    HU: {
      name: "Hungary",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IC: {
      name: "Canary Islands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ID: {
      name: "Indonesia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IE: {
      name: "Ireland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IL: {
      name: "Israel",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IN: {
      name: "India",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IQ: {
      name: "Iraq",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IR: {
      name: "Iran",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IS: {
      name: "Iceland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    IT: {
      name: "Italy",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    JM: {
      name: "Jamaica",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    JO: {
      name: "Jordan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    JP: {
      name: "Japan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    KE: {
      name: "Kenya",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    KG: {
      name: "Kyrgyzstan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    KH: {
      name: "Cambodia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    KP: {
      name: "North Korea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    KR: {
      name: "South Korea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    KW: {
      name: "Kuwait",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    KZ: {
      name: "Kazakhstan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LA: {
      name: "Laos",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LK: {
      name: "Sri Lanka",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LR: {
      name: "Liberia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LS: {
      name: "Lesotho",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LT: {
      name: "Lithuania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LU: {
      name: "Luxembourg",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LV: {
      name: "Latvia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    LY: {
      name: "Libya",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MA: {
      name: "Morocco",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MD: {
      name: "Moldavia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ME: {
      name: "Montenegro",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MG: {
      name: "Madagascar",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MK: {
      name: "Macedonia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ML: {
      name: "Mali",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MM: {
      name: "Myanmar",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MN: {
      name: "Mongolia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MR: {
      name: "Mauritania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MW: {
      name: "Malawi",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MX: {
      name: "Mexico",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MY: {
      name: "Malaysia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    MZ: {
      name: "Mozambique",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NA: {
      name: "Namibia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NC: {
      name: "New Caledonia (French)",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NE: {
      name: "Niger",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NG: {
      name: "Nigeria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NI: {
      name: "Nicaragua",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NL: {
      name: "Netherlands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NO: {
      name: "Norway",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NP: {
      name: "Nepal",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    NZ: {
      name: "New Zealand",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    OM: {
      name: "Oman",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PA: {
      name: "Panama",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PE: {
      name: "Peru",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PG: {
      name: "Papua New Guinea",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PH: {
      name: "Philippines",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PK: {
      name: "Pakistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PL: {
      name: "Poland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PR: {
      name: "Puerto Rico",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PS: {
      name: "Palestine",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PT: {
      name: "Portugal",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    PY: {
      name: "Paraguay",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    QA: {
      name: "Qatar",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    RO: {
      name: "Romania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    RS: {
      name: "Serbia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    RU: {
      name: "Russia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    RW: {
      name: "Rwanda",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SA: {
      name: "Saudi Arabia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SB: {
      name: "Solomon Islands",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SD: {
      name: "Sudan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SE: {
      name: "Sweden",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SI: {
      name: "Slovenia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SK: {
      name: "Slovak Republic",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SL: {
      name: "Sierra Leone",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SN: {
      name: "Senegal",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SO: {
      name: "Somalia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SR: {
      name: "Suriname",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SS: {
      name: "South Sudan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SV: {
      name: "El Salvador",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SY: {
      name: "Syria",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    SZ: {
      name: "Swaziland",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TD: {
      name: "Chad",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TG: {
      name: "Togo",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TH: {
      name: "Thailand",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TJ: {
      name: "Tadjikistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TL: {
      name: "East Timor",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TM: {
      name: "Turkmenistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TN: {
      name: "Tunisia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TR: {
      name: "Turkey",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TT: {
      name: "Trinidad and Tobago",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TW: {
      name: "Taiwan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    TZ: {
      name: "Tanzania",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    UA: {
      name: "Ukraine",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    UG: {
      name: "Uganda",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    US: {
      name: "United States",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: "",
      hide: "no"
    },
    UY: {
      name: "Uruguay",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    UZ: {
      name: "Uzbekistan",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    VE: {
      name: "Venezuela",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    VN: {
      name: "Vietnam",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    VU: {
      name: "Vanuatu",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    YE: {
      name: "Yemen",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ZA: {
      name: "South Africa",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ZM: {
      name: "Zambia",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
    },
    ZW: {
      name: "Zimbabwe",
      hide: "no",
      inactive: "yes",
      color: "#88A4BC",
      hover_color: "#3B729F",
      url: ""
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




    
  










    
  
  
  
 

  










