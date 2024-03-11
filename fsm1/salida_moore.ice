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
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "22b5ad71-afb1-48c8-9dea-1dee3bd9f0f5",
          "type": "basic.output",
          "data": {
            "name": "A",
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
            "x": 592,
            "y": 152
          }
        },
        {
          "id": "2495468d-d95a-469d-893c-95fadebf159e",
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
            "x": 88,
            "y": 256
          }
        },
        {
          "id": "05bfb979-c034-4b6b-a5e0-316b74e08d5c",
          "type": "basic.output",
          "data": {
            "name": "C",
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
            "x": 592,
            "y": 304
          }
        },
        {
          "id": "152bca59-7218-4247-9ef4-9683ae7fe040",
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
                  "name": "A"
                },
                {
                  "name": "C"
                }
              ]
            },
            "params": [],
            "code": "//---------------------------------------------------------------------------\n//-- Bloque 3. Salida Moore.\n//---------------------------------------------------------------------------\n\nreg A=0; reg C=0;\n\nalways @(estado_actual) begin\n\n    case(estado_actual)\n    \n    1: {A,C}=0;\n    2: {A,C}=2;\n    3: {A,C}=0;\n    4: {A,C}=1;\n    \n    default: {A,C}=0;\n    endcase\n    \nend"
          },
          "position": {
            "x": 224,
            "y": 104
          },
          "size": {
            "width": 328,
            "height": 312
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "152bca59-7218-4247-9ef4-9683ae7fe040",
            "port": "A"
          },
          "target": {
            "block": "22b5ad71-afb1-48c8-9dea-1dee3bd9f0f5",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "152bca59-7218-4247-9ef4-9683ae7fe040",
            "port": "C"
          },
          "target": {
            "block": "05bfb979-c034-4b6b-a5e0-316b74e08d5c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2495468d-d95a-469d-893c-95fadebf159e",
            "port": "out"
          },
          "target": {
            "block": "152bca59-7218-4247-9ef4-9683ae7fe040",
            "port": "estado_actual"
          },
          "size": 3
        }
      ]
    }
  },
  "dependencies": {}
}