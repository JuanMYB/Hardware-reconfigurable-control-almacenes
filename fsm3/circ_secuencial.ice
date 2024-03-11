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
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "6b27d9de-2b29-4a14-8215-1bf7dbf3e5d7",
          "type": "basic.input",
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
            ],
            "clock": false
          },
          "position": {
            "x": 232,
            "y": 152
          }
        },
        {
          "id": "8563074c-7825-44a7-ace2-c4e4e51e2c94",
          "type": "basic.output",
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
            ]
          },
          "position": {
            "x": 976,
            "y": 200
          }
        },
        {
          "id": "9aba7ec6-8cfc-43c6-b026-3861cd7a8dd8",
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
            "x": 232,
            "y": 240
          }
        },
        {
          "id": "8c1c892d-15c2-4d5f-8cfa-2274230b548f",
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
            "code": "reg[2:0] estado_actual=1;\n\nalways @(posedge clk)\n\n    estado_actual <= estado_siguiente;\n"
          },
          "position": {
            "x": 480,
            "y": 144
          },
          "size": {
            "width": 344,
            "height": 168
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "6b27d9de-2b29-4a14-8215-1bf7dbf3e5d7",
            "port": "out"
          },
          "target": {
            "block": "8c1c892d-15c2-4d5f-8cfa-2274230b548f",
            "port": "estado_siguiente"
          },
          "size": 3
        },
        {
          "source": {
            "block": "8c1c892d-15c2-4d5f-8cfa-2274230b548f",
            "port": "estado_actual"
          },
          "target": {
            "block": "8563074c-7825-44a7-ace2-c4e4e51e2c94",
            "port": "in"
          },
          "size": 3
        },
        {
          "source": {
            "block": "9aba7ec6-8cfc-43c6-b026-3861cd7a8dd8",
            "port": "out"
          },
          "target": {
            "block": "8c1c892d-15c2-4d5f-8cfa-2274230b548f",
            "port": "clk"
          }
        }
      ]
    }
  },
  "dependencies": {}
}