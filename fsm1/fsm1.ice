{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "0a6e6535-fdfc-4738-badb-4ba8b6f705f2",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "BR10",
                "value": "44"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 120,
            "y": 136
          }
        },
        {
          "id": "e43a9cfc-3c31-442f-a107-cfa04eb2e956",
          "type": "basic.output",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "TR10",
                "value": "119"
              }
            ]
          },
          "position": {
            "x": 696,
            "y": 152
          }
        },
        {
          "id": "a3001d1a-f5c9-4cbc-8684-b4cb25d448f2",
          "type": "basic.input",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "BR9",
                "value": "45"
              }
            ],
            "clock": false
          },
          "position": {
            "x": 120,
            "y": 208
          }
        },
        {
          "id": "d79dde2f-fe19-42c2-ba48-ba8622660a88",
          "type": "basic.output",
          "data": {
            "name": "",
            "virtual": false,
            "pins": [
              {
                "index": "0",
                "name": "TR9",
                "value": "118"
              }
            ]
          },
          "position": {
            "x": 696,
            "y": 256
          }
        },
        {
          "id": "777af0a4-571e-42ba-a4f7-a1d9aa69603b",
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
            },
            "params": [],
            "code": "//@include fsm1.v\n\nfsm1 inst(\n\n.clk(clk),\n.S1(S1),\n.S2(S2),\n.A(A),\n.C(C)\n\n);"
          },
          "position": {
            "x": 272,
            "y": 128
          },
          "size": {
            "width": 384,
            "height": 216
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "777af0a4-571e-42ba-a4f7-a1d9aa69603b",
            "port": "C"
          },
          "target": {
            "block": "d79dde2f-fe19-42c2-ba48-ba8622660a88",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "777af0a4-571e-42ba-a4f7-a1d9aa69603b",
            "port": "A"
          },
          "target": {
            "block": "e43a9cfc-3c31-442f-a107-cfa04eb2e956",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "0a6e6535-fdfc-4738-badb-4ba8b6f705f2",
            "port": "out"
          },
          "target": {
            "block": "777af0a4-571e-42ba-a4f7-a1d9aa69603b",
            "port": "S1"
          }
        },
        {
          "source": {
            "block": "a3001d1a-f5c9-4cbc-8684-b4cb25d448f2",
            "port": "out"
          },
          "target": {
            "block": "777af0a4-571e-42ba-a4f7-a1d9aa69603b",
            "port": "S2"
          }
        }
      ]
    }
  },
  "dependencies": {}
}