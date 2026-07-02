{#start_schema
{
  "description": {
    "en": "Gamma cleanup template for branch GAMMA."
  },
  "json_schema": {
    "type": "object",
    "title": "Gamma cleanup template [GAMMA]",
    "additionalProperties": false,
    "required": ["kwargs"],
    "properties": {
      "kwargs": {
        "type": "object",
        "additionalProperties": false,
        "required": ["pillar"],
        "properties": {
          "pillar": {
            "type": "object",
            "additionalProperties": false,
            "properties": {
              "marker": {
                "type": "string",
                "default": "gamma-cleanup"
              }
            }
          }
        }
      }
    }
  },
  "ui_schema": {
    "kwargs": {
      "ui:label": false,
      "pillar": {
        "ui:label": false,
        "marker": {
          "ui:title": "Branch marker"
        }
      }
    }
  }
}
end_schema#}

Show GAMMA marker:
  test.show_notification:
    - text: "Gamma branch cleanup template: {{ pillar.get('marker', 'gamma-cleanup') }}"