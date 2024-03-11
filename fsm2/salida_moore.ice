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
          "id": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab",
          "type": "basic.output",
          "data": {
            "name": "A",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ]
          },
          "position": {
            "x": 704,
            "y": 168
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
                "name": "NULL",
                "value": "NULL"
              },
              {
                "index": "1",
                "name": "NULL",
                "value": "NULL"
              },
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 56,
            "y": 232
          }
        },
        {
          "id": "1e510dca-66d6-42b8-b7a2-153dc51fa878",
          "type": "basic.output",
          "data": {
            "name": "B",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ]
          },
          "position": {
            "x": 704,
            "y": 304
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
                  "name": "A"
                },
                {
                  "name": "C"
                }
              ]
            },
            "params": [],
            "code": "reg A=0; reg C=0;\n\nalways @(estado_actual) begin\n\n\tcase(estado_actual)\n\n    1:\t{A,C}=0;\n    2:\t{A,C}=2;\n    3:\t{A,C}=0;\n    4:\t{A,C}=1;\n    5:\t{A,C}=2;\n    6:\t{A,C}=0;\n    7:\t{A,C}=1;\n\n    default: {A,C}=0;\n    endcase\n\nend"
          },
          "position": {
            "x": 288,
            "y": 128
          },
          "size": {
            "width": 384,
            "height": 272
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
            "port": "A"
          },
          "target": {
            "block": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e66525ba-340b-43a3-b83e-43e4a535f9cf",
            "port": "C"
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