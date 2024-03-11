{
  "version": "1.2",
  "package": {
    "name": "Salida Moore",
    "version": "",
    "description": "",
    "author": "Juan Manuel Yáñez Barge",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab",
          "type": "basic.output",
          "data": {
            "name": "V",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ]
          },
          "position": {
            "x": 760,
            "y": 192
          }
        },
        {
          "id": "8ef5d4d2-e7f7-4ee8-a0b6-f528156fc18e",
          "type": "basic.input",
          "data": {
            "name": "estado_actual",
            "virtual": true,
            "range": "[2:0]",
            "pins": [
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 40,
            "y": 288
          }
        },
        {
          "id": "1e510dca-66d6-42b8-b7a2-153dc51fa878",
          "type": "basic.output",
          "data": {
            "name": "R",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ]
          },
          "position": {
            "x": 760,
            "y": 384
          }
        },
        {
          "id": "e66525ba-340b-43a3-b83e-43e4a535f9cf",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "estado_actual",
                  "range": "[2:0]",
                  "size": 3
                }
              ],
              "out": [
                {
                  "name": "V"
                },
                {
                  "name": "R"
                }
              ]
            },
            "params": [],
            "code": "\nreg V=0; reg R=0;\n\nalways @(estado_actual) begin\n\n  case(estado_actual)\n\n    1:\t{V,R}=0;\n    2:\t{V,R}=0;\n    3:\t{V,R}=1;\n    4:\t{V,R}=0;\n    5:\t{V,R}=2;\n\n    default:{V,R}=0;\n  \tendcase\n\nend"
          },
          "position": {
            "x": 288,
            "y": 128
          },
          "size": {
            "width": 384,
            "height": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "8ef5d4d2-e7f7-4ee8-a0b6-f528156fc18e",
            "port": "out"
          },
          "target": {
            "block": "e66525ba-340b-43a3-b83e-43e4a535f9cf",
            "port": "estado_actual"
          },
          "size": 3
        },
        {
          "source": {
            "block": "e66525ba-340b-43a3-b83e-43e4a535f9cf",
            "port": "V"
          },
          "target": {
            "block": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e66525ba-340b-43a3-b83e-43e4a535f9cf",
            "port": "R"
          },
          "target": {
            "block": "1e510dca-66d6-42b8-b7a2-153dc51fa878",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}