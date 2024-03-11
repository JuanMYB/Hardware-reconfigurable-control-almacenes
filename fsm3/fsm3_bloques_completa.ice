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
                "name": "BR8",
                "value": "47"
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
                "name": "TR8",
                "value": "117"
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
                "name": "BR7",
                "value": "48"
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
                "name": "TR7",
                "value": "116"
              }
            ]
          },
          "position": {
            "x": 1032,
            "y": 288
          }
        },
        {
          "id": "f70f287e-f878-4de6-b2a8-5b11d3546c61",
          "type": "86d808d1045b03e9dadb6fa79ee1ccea8cab274c",
          "position": {
            "x": 384,
            "y": 256
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "01c2755c-dde4-450b-a54c-4448982f1955",
          "type": "43c45a9a7a4eb1c9ac3b33fea196e70b3e347686",
          "position": {
            "x": 640,
            "y": 312
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "614ffbfb-ca3c-4c32-badd-a3777c5c855d",
          "type": "f90340609bd059f1dcfbcb69515ed761c05e4a9e",
          "position": {
            "x": 880,
            "y": 264
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "937e7f4c-10ec-4f78-b360-453bb3b85cf8",
            "port": "out"
          },
          "target": {
            "block": "f70f287e-f878-4de6-b2a8-5b11d3546c61",
            "port": "1c402ea4-9cfe-4dd0-8243-39230060b818"
          }
        },
        {
          "source": {
            "block": "6f948218-a57d-4551-ade6-9525be5f85d5",
            "port": "out"
          },
          "target": {
            "block": "f70f287e-f878-4de6-b2a8-5b11d3546c61",
            "port": "bc09df97-734e-4938-8474-f048f76f64e8"
          }
        },
        {
          "source": {
            "block": "f70f287e-f878-4de6-b2a8-5b11d3546c61",
            "port": "306c5399-692e-4c43-b389-9fe4df46bfc9"
          },
          "target": {
            "block": "01c2755c-dde4-450b-a54c-4448982f1955",
            "port": "6b27d9de-2b29-4a14-8215-1bf7dbf3e5d7"
          },
          "size": 3
        },
        {
          "source": {
            "block": "614ffbfb-ca3c-4c32-badd-a3777c5c855d",
            "port": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab"
          },
          "target": {
            "block": "fdf88692-9bb9-4b99-ba73-907b14126a54",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "614ffbfb-ca3c-4c32-badd-a3777c5c855d",
            "port": "1e510dca-66d6-42b8-b7a2-153dc51fa878"
          },
          "target": {
            "block": "2ad3c227-9c8e-4205-a86f-b02850bd52be",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "01c2755c-dde4-450b-a54c-4448982f1955",
            "port": "8563074c-7825-44a7-ace2-c4e4e51e2c94"
          },
          "target": {
            "block": "614ffbfb-ca3c-4c32-badd-a3777c5c855d",
            "port": "8ef5d4d2-e7f7-4ee8-a0b6-f528156fc18e"
          },
          "size": 3
        },
        {
          "source": {
            "block": "01c2755c-dde4-450b-a54c-4448982f1955",
            "port": "8563074c-7825-44a7-ace2-c4e4e51e2c94"
          },
          "target": {
            "block": "f70f287e-f878-4de6-b2a8-5b11d3546c61",
            "port": "562040a3-809d-48ef-afad-f907ca069094"
          },
          "vertices": [
            {
              "x": 592,
              "y": 464
            }
          ],
          "size": 3
        }
      ]
    }
  },
  "dependencies": {
    "86d808d1045b03e9dadb6fa79ee1ccea8cab274c": {
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
                "x": 1000,
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
                "code": "\n//-- Bloque 1. Circuito combinacional.\n\nreg[2:0] estado_siguiente=0;\n\nalways @(S1 or S2 or estado_actual) begin\n\n\tcase(estado_actual)\n\n\t   1:\tcase ({S2,S1})\n\t\t\t\t2:estado_siguiente=2;\n\t\t\t\t1:estado_siguiente=4;\n\t\t\t\tdefault:estado_siguiente=1;\n\t\t\t\tendcase\n\n\t\t2:\tcase ({S2,S1})\n\t\t\t\t3:estado_siguiente=3;\n\t\t\t\tdefault:estado_siguiente=2;\n\t\t\t\tendcase\n\n\t\t3:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=1;\n\t\t\t\tdefault:estado_siguiente=3;\n\t\t\t\tendcase\n\n\t\t4:\tcase ({S2,S1})\n\t\t\t\t3:estado_siguiente=5;\n\t\t\t\tdefault:estado_siguiente=4;\n\t\t\t\tendcase\n\n\t\t5:\tcase ({S2,S1})\n\t\t\t\t0:estado_siguiente=1;\n\t\t\t\tdefault:estado_siguiente=5;\n\t\t\t\tendcase\n\n\t\tdefault:estado_siguiente=1;\n\t\tendcase\n\nend\n"
              },
              "position": {
                "x": 336,
                "y": -120
              },
              "size": {
                "width": 504,
                "height": 752
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
    },
    "43c45a9a7a4eb1c9ac3b33fea196e70b3e347686": {
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
                "x": 224,
                "y": 200
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
                "x": 1008,
                "y": 288
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
                "x": 240,
                "y": 368
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
                "code": "\n//-- Bloque 2. Circuito secuencial.\n\n\nreg[2:0] estado_actual=1;\n\nalways @(posedge clk)\n\n    estado_actual <= estado_siguiente;\n"
              },
              "position": {
                "x": 472,
                "y": 144
              },
              "size": {
                "width": 392,
                "height": 344
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
    "f90340609bd059f1dcfbcb69515ed761c05e4a9e": {
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
                "name": "V"
              },
              "position": {
                "x": 760,
                "y": 192
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
                "x": 40,
                "y": 288
              }
            },
            {
              "id": "1e510dca-66d6-42b8-b7a2-153dc51fa878",
              "type": "basic.output",
              "data": {
                "name": "R"
              },
              "position": {
                "x": 760,
                "y": 384
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
                      "name": "V"
                    },
                    {
                      "name": "R"
                    }
                  ]
                },
                "params": [],
                "code": "\n//-- Bloque 3. Circuito combinacional.\n\n\nreg V=0; reg R=0;\n\nalways @(estado_actual) begin\n\n  case(estado_actual)\n\n    1:\t{V,R}=0;\n    2:\t{V,R}=0;\n    3:\t{V,R}=1;\n    4:\t{V,R}=0;\n    5:\t{V,R}=2;\n\n    default:{V,R}=0;\n  \tendcase\n\nend"
              },
              "position": {
                "x": 288,
                "y": 128
              },
              "size": {
                "width": 384,
                "height": 384
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
                "port": "V"
              },
              "target": {
                "block": "451fcd6c-8bf0-479b-8bcb-7e0cffc009ab",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e66525ba-340b-43a3-b83e-43e4a535f9cf",
                "port": "R"
              },
              "target": {
                "block": "1e510dca-66d6-42b8-b7a2-153dc51fa878",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}