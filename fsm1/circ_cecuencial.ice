{
  "version": "1.2",
  "package": {
    "name": "Circ. Secuenc.",
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
          "id": "46efdbd5-d24a-40a4-818c-607230e4c36e",
          "type": "basic.input",
          "data": {
            "name": "estado_siguiente",
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
                "name": "",
                "value": "0"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 312,
            "y": 208
          }
        },
        {
          "id": "2c12ff50-1b80-449a-91aa-8cf87092a194",
          "type": "basic.output",
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
                "name": "",
                "value": "0"
              }
            ]
          },
          "position": {
            "x": 880,
            "y": 272
          }
        },
        {
          "id": "a7922d61-5dd9-4f7a-92da-d1ca80f021ef",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "virtual": true,
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "clock": true
          },
          "position": {
            "x": 312,
            "y": 288
          }
        },
        {
          "id": "38ace812-7218-4e51-b2f1-514a184ad69f",
          "type": "basic.code",
          "data": {
            "ports": {
              "in": [
                {
                  "name": "estado_siguiente",
                  "range": "[2:0]",
                  "size": 3
                },
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "estado_actual",
                  "range": "[2:0]",
                  "size": 3
                }
              ]
            },
            "params": [],
            "code": "//---------------------------------------------------------------------------\n//-- Bloque 2. Circuito secuencial.\n//---------------------------------------------------------------------------\n\n\nreg estado_actual = 1;\n\nalways @(posedge clk)\n    \n    estado_actual <= estado_siguiente;"
          },
          "position": {
            "x": 464,
            "y": 160
          },
          "size": {
            "width": 384,
            "height": 208
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "a7922d61-5dd9-4f7a-92da-d1ca80f021ef",
            "port": "out"
          },
          "target": {
            "block": "38ace812-7218-4e51-b2f1-514a184ad69f",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "46efdbd5-d24a-40a4-818c-607230e4c36e",
            "port": "out"
          },
          "target": {
            "block": "38ace812-7218-4e51-b2f1-514a184ad69f",
            "port": "estado_siguiente"
          },
          "size": 3
        },
        {
          "source": {
            "block": "38ace812-7218-4e51-b2f1-514a184ad69f",
            "port": "estado_actual"
          },
          "target": {
            "block": "2c12ff50-1b80-449a-91aa-8cf87092a194",
            "port": "in"
          },
          "size": 3
        }
      ]
    }
  },
  "dependencies": {}
}