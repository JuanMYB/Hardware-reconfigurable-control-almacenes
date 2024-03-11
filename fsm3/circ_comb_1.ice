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
          "id": "1c402ea4-9cfe-4dd0-8243-39230060b818",
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
            "x": 112,
            "y": 24
          }
        },
        {
          "id": "bc09df97-734e-4938-8474-f048f76f64e8",
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
            "x": 112,
            "y": 272
          }
        },
        {
          "id": "306c5399-692e-4c43-b389-9fe4df46bfc9",
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
            "x": 1000,
            "y": 272
          }
        },
        {
          "id": "562040a3-809d-48ef-afad-f907ca069094",
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
            "x": 112,
            "y": 512
          }
        },
        {
          "id": "c39a7e04-6f09-4cde-91cd-f0d0e43fc971",
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
            "code": "\n\n\nreg[2:0] estado_siguiente=0;\n\nalways @(S1 or S2 or estado_actual) begin\n\n\tcase(estado_actual)\n\n\t   1:\tcase ({S2,S1})\n\t\t\t\t2:estado_siguiente=2;\n\t\t\t\t1:estado_siguiente=4;\n\t\t\t\tdefault:estado_siguiente=1;\n\t\t\t\tendcase\n\n\t\t2:\tcase ({S2,S1})\n\t\t\t\t3:estado_siguiente=3;\n\t\t\t\tdefault:estado_siguiente=2;\n\t\t\t\tendcase\n\n\t\t3:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=1;\n\t\t\t\tdefault:estado_siguiente=3;\n\t\t\t\tendcase\n\n\t\t4:\tcase ({S2,S1})\n\t\t\t\t3:estado_siguiente=5;\n\t\t\t\tdefault:estado_siguiente=4;\n\t\t\t\tendcase\n\n\t\t5:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=1;\n\t\t\t\tdefault:estado_siguiente=5;\n\t\t\t\tendcase\n\n\t\tdefault:estado_siguiente=1;\n\t\tendcase\n\nend\n"
          },
          "position": {
            "x": 336,
            "y": -64
          },
          "size": {
            "width": 504,
            "height": 728
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "562040a3-809d-48ef-afad-f907ca069094",
            "port": "out"
          },
          "target": {
            "block": "c39a7e04-6f09-4cde-91cd-f0d0e43fc971",
            "port": "estado_actual"
          },
          "size": 3
        },
        {
          "source": {
            "block": "1c402ea4-9cfe-4dd0-8243-39230060b818",
            "port": "out"
          },
          "target": {
            "block": "c39a7e04-6f09-4cde-91cd-f0d0e43fc971",
            "port": "S1"
          }
        },
        {
          "source": {
            "block": "bc09df97-734e-4938-8474-f048f76f64e8",
            "port": "out"
          },
          "target": {
            "block": "c39a7e04-6f09-4cde-91cd-f0d0e43fc971",
            "port": "S2"
          }
        },
        {
          "source": {
            "block": "c39a7e04-6f09-4cde-91cd-f0d0e43fc971",
            "port": "estado_siguiente"
          },
          "target": {
            "block": "306c5399-692e-4c43-b389-9fe4df46bfc9",
            "port": "in"
          },
          "size": 3
        }
      ]
    }
  },
  "dependencies": {}
}