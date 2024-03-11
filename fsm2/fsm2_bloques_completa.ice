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
          "id": "937e7f4c-10ec-4f78-b360-453bb3b85cf8",
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
            "x": 248,
            "y": 208
          }
        },
        {
          "id": "fdf88692-9bb9-4b99-ba73-907b14126a54",
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
            "x": 1032,
            "y": 232
          }
        },
        {
          "id": "6f948218-a57d-4551-ade6-9525be5f85d5",
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
            "x": 248,
            "y": 264
          }
        },
        {
          "id": "2ad3c227-9c8e-4205-a86f-b02850bd52be",
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
            "x": 1032,
            "y": 288
          }
        },
        {
          "id": "637efe88-6bc9-4e8c-92b6-34aed2ce4cd3",
          "type": "6468e7cb487b652af37ee72bc0831ca7457a4bdb",
          "position": {
            "x": 880,
            "y": 272
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b79eb680-1663-4b51-9797-c8980c297892",
          "type": "befc5b9778a0713a928e703e385e081ef98a744e",
          "position": {
            "x": 640,
            "y": 320
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "c797a211-93ae-4e6f-9556-ce1c0f80dc7a",
          "type": "b0f46e00ad9d557974cda2b0721a3d7ac1b9c54e",
          "position": {
            "x": 384,
            "y": 248
          },
          "size": {
            "width": 96,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "637efe88-6bc9-4e8c-92b6-34aed2ce4cd3",
            "port": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab"
          },
          "target": {
            "block": "fdf88692-9bb9-4b99-ba73-907b14126a54",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "637efe88-6bc9-4e8c-92b6-34aed2ce4cd3",
            "port": "1e510dca-66d6-42b8-b7a2-153dc51fa878"
          },
          "target": {
            "block": "2ad3c227-9c8e-4205-a86f-b02850bd52be",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "937e7f4c-10ec-4f78-b360-453bb3b85cf8",
            "port": "out"
          },
          "target": {
            "block": "c797a211-93ae-4e6f-9556-ce1c0f80dc7a",
            "port": "1c402ea4-9cfe-4dd0-8243-39230060b818"
          }
        },
        {
          "source": {
            "block": "6f948218-a57d-4551-ade6-9525be5f85d5",
            "port": "out"
          },
          "target": {
            "block": "c797a211-93ae-4e6f-9556-ce1c0f80dc7a",
            "port": "bc09df97-734e-4938-8474-f048f76f64e8"
          }
        },
        {
          "source": {
            "block": "c797a211-93ae-4e6f-9556-ce1c0f80dc7a",
            "port": "306c5399-692e-4c43-b389-9fe4df46bfc9"
          },
          "target": {
            "block": "b79eb680-1663-4b51-9797-c8980c297892",
            "port": "6b27d9de-2b29-4a14-8215-1bf7dbf3e5d7"
          },
          "size": 3
        },
        {
          "source": {
            "block": "b79eb680-1663-4b51-9797-c8980c297892",
            "port": "8563074c-7825-44a7-ace2-c4e4e51e2c94"
          },
          "target": {
            "block": "c797a211-93ae-4e6f-9556-ce1c0f80dc7a",
            "port": "562040a3-809d-48ef-afad-f907ca069094"
          },
          "vertices": [
            {
              "x": 568,
              "y": 480
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "b79eb680-1663-4b51-9797-c8980c297892",
            "port": "8563074c-7825-44a7-ace2-c4e4e51e2c94"
          },
          "target": {
            "block": "637efe88-6bc9-4e8c-92b6-34aed2ce4cd3",
            "port": "8ef5d4d2-e7f7-4ee8-a0b6-f528156fc18e"
          },
          "size": 3
        }
      ]
    }
  },
  "dependencies": {
    "6468e7cb487b652af37ee72bc0831ca7457a4bdb": {
      "package": {
        "name": "Salida Moore",
        "version": "",
        "description": "",
        "author": "Juan Manuel Yáñez Barge",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab",
              "type": "basic.output",
              "data": {
                "name": "A"
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
                "range": "[2:0]",
                "clock": false,
                "size": 3
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
                "name": "B"
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
      }
    },
    "befc5b9778a0713a928e703e385e081ef98a744e": {
      "package": {
        "name": "Circ. Secuenc.",
        "version": "",
        "description": "",
        "author": "Juan Manuel Yáñez Barge",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6b27d9de-2b29-4a14-8215-1bf7dbf3e5d7",
              "type": "basic.input",
              "data": {
                "name": "estado_siguiente",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": 232,
                "y": 144
              }
            },
            {
              "id": "8563074c-7825-44a7-ace2-c4e4e51e2c94",
              "type": "basic.output",
              "data": {
                "name": "estado_actual",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 1000,
                "y": 176
              }
            },
            {
              "id": "9aba7ec6-8cfc-43c6-b026-3861cd7a8dd8",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 200
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
                "code": "reg[2:0] estado_actual=1;\n\nalways @(posedge clk)\n    estado_actual <= estado_siguiente;"
              },
              "position": {
                "x": 472,
                "y": 144
              },
              "size": {
                "width": 400,
                "height": 120
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
      }
    },
    "b0f46e00ad9d557974cda2b0721a3d7ac1b9c54e": {
      "package": {
        "name": "Circ. Combin.",
        "version": "",
        "description": "",
        "author": "Juan Manuel Yáñez Barge",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1c402ea4-9cfe-4dd0-8243-39230060b818",
              "type": "basic.input",
              "data": {
                "name": "S1",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": -24
              }
            },
            {
              "id": "bc09df97-734e-4938-8474-f048f76f64e8",
              "type": "basic.input",
              "data": {
                "name": "S2",
                "clock": false
              },
              "position": {
                "x": 112,
                "y": 224
              }
            },
            {
              "id": "306c5399-692e-4c43-b389-9fe4df46bfc9",
              "type": "basic.output",
              "data": {
                "name": "estado_siguiente",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 880,
                "y": 224
              }
            },
            {
              "id": "562040a3-809d-48ef-afad-f907ca069094",
              "type": "basic.input",
              "data": {
                "name": "estado_actual",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": 112,
                "y": 472
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
                "code": "reg[2:0] estado_siguiente=0;\n\nalways @(S1 or S2 or estado_actual) begin\n\n\tcase(estado_actual)\n\n\t  1:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=1;\n\t\t\t\t2:estado_siguiente=2;\n\t\t\t\t1:estado_siguiente=5;\n\t\t\t\tdefault:estado_siguiente=1;\n\t\t\t\tendcase\n\n\t\t2:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=3;\n\t\t\t\t2:estado_siguiente=2;\n\t\t\t\tdefault:estado_siguiente=2;\n\t\t\t  endcase\n\n\t\t3:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=3;\n\t\t\t\t1:estado_siguiente=4;\n\t\t\t\tdefault:estado_siguiente=3;\n\t\t\t\tendcase\n\n\t\t4:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=1;\n\t\t\t\t1:estado_siguiente=4;\n\t\t\t\tdefault:estado_siguiente=4;\n\t\t\t\tendcase\n\n\t\t5:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=6;\n\t\t\t\t1:estado_siguiente=5;\n\t\t\t\tdefault:estado_siguiente=5;\n\t\t\t\tendcase\n\n\t\t6:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=6;\n\t\t\t\t2:estado_siguiente=7;\n\t\t\t\tdefault:estado_siguiente=6;\n\t\t\t\tendcase\n\n\t\t7:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=1;\n\t\t\t\t2:estado_siguiente=7;\n\t\t\t\tdefault:estado_siguiente=7;\n\t\t\t\tendcase\n\n\t\tdefault:estado_siguiente=1;\n\t\tendcase\n\nend\n"
              },
              "position": {
                "x": 336,
                "y": -120
              },
              "size": {
                "width": 400,
                "height": 744
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
      }
    }
  }
}