{
  "version": "1.2",
  "package": {
    "name": "FSM-2",
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
          "id": "e8e04cd2-acdd-400c-ad01-8e75d61ff8c4",
          "type": "basic.input",
          "data": {
            "name": "S1",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -256,
            "y": -16
          }
        },
        {
          "id": "29886765-30ee-4692-a8ee-ceeb45ed7d1e",
          "type": "basic.output",
          "data": {
            "name": "V",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 312,
            "y": 0
          }
        },
        {
          "id": "93832fc4-d54f-4012-b1b3-e251159af863",
          "type": "basic.input",
          "data": {
            "name": "S2",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -256,
            "y": 48
          }
        },
        {
          "id": "d5e407e1-6830-4134-8c68-b6a5c929fafb",
          "type": "basic.output",
          "data": {
            "name": "R",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 312,
            "y": 96
          }
        },
        {
          "id": "aa0a543d-469a-46f8-91fc-3566e406cfe3",
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
            "x": -256,
            "y": 112
          }
        },
        {
          "id": "e8379ae8-1c43-4068-9a0b-46d928e29b69",
          "type": "basic.code",
          "data": {
            "code": "//@include fsm2.v\n\nfsm2 f2(\n\n.S1(S1),\n.S2(S2),\n.clk(clk),\n.V(V),\n.R(R)\n\n);",
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
                  "name": "V"
                },
                {
                  "name": "R"
                }
              ]
            }
          },
          "position": {
            "x": -88,
            "y": -16
          },
          "size": {
            "width": 344,
            "height": 192
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "93832fc4-d54f-4012-b1b3-e251159af863",
            "port": "out"
          },
          "target": {
            "block": "e8379ae8-1c43-4068-9a0b-46d928e29b69",
            "port": "S2"
          }
        },
        {
          "source": {
            "block": "e8e04cd2-acdd-400c-ad01-8e75d61ff8c4",
            "port": "out"
          },
          "target": {
            "block": "e8379ae8-1c43-4068-9a0b-46d928e29b69",
            "port": "S1"
          }
        },
        {
          "source": {
            "block": "aa0a543d-469a-46f8-91fc-3566e406cfe3",
            "port": "out"
          },
          "target": {
            "block": "e8379ae8-1c43-4068-9a0b-46d928e29b69",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "e8379ae8-1c43-4068-9a0b-46d928e29b69",
            "port": "R"
          },
          "target": {
            "block": "d5e407e1-6830-4134-8c68-b6a5c929fafb",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e8379ae8-1c43-4068-9a0b-46d928e29b69",
            "port": "V"
          },
          "target": {
            "block": "29886765-30ee-4692-a8ee-ceeb45ed7d1e",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}