{
  "version": "1.2",
  "package": {
    "name": "Circ. Combin.",
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
          "id": "9d65c9bd-4b53-4b90-ac43-9009b544e150",
          "type": "basic.input",
          "data": {
            "name": "S1",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 416,
            "y": 208
          }
        },
        {
          "id": "0fc07f9c-45ad-4f87-abee-b726b17345e3",
          "type": "basic.input",
          "data": {
            "name": "S2",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 416,
            "y": 376
          }
        },
        {
          "id": "1b28700e-e98c-4a8a-bad6-5f5ad7830e20",
          "type": "basic.output",
          "data": {
            "name": "estado_siguiente",
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
            ]
          },
          "position": {
            "x": 1088,
            "y": 416
          }
        },
        {
          "id": "6945a419-264a-4605-aec1-b9d25b8e0ae9",
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
            "x": 416,
            "y": 568
          }
        },
        {
          "id": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "S1"
                },
                {
                  "name": "S2"
                },
                {
                  "name": "estado_actual",
                  "range": "[2:0]",
                  "size": 3
                }
              ],
              "out": [
                {
                  "name": "estado_siguiente",
                  "range": "[2:0]",
                  "size": 3
                }
              ]
            },
            "params": [],
            "code": "//---------------------------------------------------------------------------\n//-- Bloque 1. Circuito combinacional.\n//---------------------------------------------------------------------------\n\nreg estado_siguiente = 0;\n\nalways @(S1 or S2 or estado_actual) begin\n\n    case(estado_actual)\n    \n        1:  case({S2,S1})\n            1: estado_siguiente=2;\n            default: estado_siguiente=1;\n            endcase\n            \n        2:  case({S2,S1})\n            0: estado_siguiente=3;\n            default: estado_siguiente=2;\n            endcase\n            \n        3:  case({S2,S1})\n            2: estado_siguiente=4;\n            default: estado_siguiente=3;\n            endcase\n        \n        4:  case({S2,S1})\n            0: estado_siguiente=1;\n            default: estado_siguiente=4;\n            endcase\n            \n        default: estado_siguiente=1;\n        endcase\n        \nend"
          },
          "position": {
            "x": 560,
            "y": 152
          },
          "size": {
            "width": 496,
            "height": 504
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9d65c9bd-4b53-4b90-ac43-9009b544e150",
            "port": "out"
          },
          "target": {
            "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
            "port": "S1"
          }
        },
        {
          "source": {
            "block": "0fc07f9c-45ad-4f87-abee-b726b17345e3",
            "port": "out"
          },
          "target": {
            "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
            "port": "S2"
          }
        },
        {
          "source": {
            "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
            "port": "estado_siguiente"
          },
          "target": {
            "block": "1b28700e-e98c-4a8a-bad6-5f5ad7830e20",
            "port": "in"
          },
          "size": 3
        },
        {
          "source": {
            "block": "6945a419-264a-4605-aec1-b9d25b8e0ae9",
            "port": "out"
          },
          "target": {
            "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
            "port": "estado_actual"
          },
          "size": 3
        }
      ]
    }
  },
  "dependencies": {}
}