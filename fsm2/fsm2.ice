{
  "version": "1.2",
  "package": {
    "name": "FSM-1",
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
          "id": "288e3713-98ae-4d06-8f90-eec9732096c9",
          "type": "basic.input",
          "data": {
            "name": "S1",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "34"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 176,
            "y": 184
          }
        },
        {
          "id": "72338f1c-ff2f-4622-96c2-bd874992c9bc",
          "type": "basic.output",
          "data": {
            "name": "A",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "37"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 728,
            "y": 200
          }
        },
        {
          "id": "fe96f3a8-1aac-4bc2-8b3b-4a969bb54b9d",
          "type": "basic.input",
          "data": {
            "name": "S2",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "33"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 176,
            "y": 248
          }
        },
        {
          "id": "16f2c7b2-817e-41ca-9ecf-ec70737bbd1d",
          "type": "basic.output",
          "data": {
            "name": "C",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 728,
            "y": 296
          }
        },
        {
          "id": "ac47405a-218f-4e66-9d68-9e9f7b0a716e",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 176,
            "y": 312
          }
        },
        {
          "id": "44fe1726-1fca-4f3b-a3c9-cd84fc97c9b8",
          "type": "basic.code",
          "data": {
            "code": "//@include fsm1.v\n\nfsm1 inst(\n\n.clk(clk),\n.S1(S1),\n.S2(S2),\n.A(A),\n.C(C)\n\n);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "S1"
                },
                {
                  "name": "S2"
                },
                {
                  "name": "clk"
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
            }
          },
          "position": {
            "x": 360,
            "y": 184
          },
          "size": {
            "width": 272,
            "height": 192
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "44fe1726-1fca-4f3b-a3c9-cd84fc97c9b8",
            "port": "A"
          },
          "target": {
            "block": "72338f1c-ff2f-4622-96c2-bd874992c9bc",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "44fe1726-1fca-4f3b-a3c9-cd84fc97c9b8",
            "port": "C"
          },
          "target": {
            "block": "16f2c7b2-817e-41ca-9ecf-ec70737bbd1d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "288e3713-98ae-4d06-8f90-eec9732096c9",
            "port": "out"
          },
          "target": {
            "block": "44fe1726-1fca-4f3b-a3c9-cd84fc97c9b8",
            "port": "S1"
          }
        },
        {
          "source": {
            "block": "fe96f3a8-1aac-4bc2-8b3b-4a969bb54b9d",
            "port": "out"
          },
          "target": {
            "block": "44fe1726-1fca-4f3b-a3c9-cd84fc97c9b8",
            "port": "S2"
          }
        },
        {
          "source": {
            "block": "ac47405a-218f-4e66-9d68-9e9f7b0a716e",
            "port": "out"
          },
          "target": {
            "block": "44fe1726-1fca-4f3b-a3c9-cd84fc97c9b8",
            "port": "clk"
          }
        }
      ]
    }
  },
  "dependencies": {}
}