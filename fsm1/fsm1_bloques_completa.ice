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
          "id": "56638080-73b9-4539-8e43-0b599c6056ff",
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
            "x": 352,
            "y": 128
          }
        },
        {
          "id": "f16134c3-58b7-4299-bdf7-1d83b78caa1c",
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
            "x": 1128,
            "y": 176
          }
        },
        {
          "id": "6eeb35f7-5632-49c5-8083-0174e6ff8eab",
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
            "x": 352,
            "y": 176
          }
        },
        {
          "id": "655a5c97-1dc0-4b96-a093-e8d8d4950694",
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
            "x": 1128,
            "y": 232
          }
        },
        {
          "id": "0971651b-e298-43b5-9719-8ac4470f3346",
          "type": "7db656ec20b8294c7d5153d297e5324972d2366f",
          "position": {
            "x": 504,
            "y": 160
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "325bbc21-a9f9-4964-97f9-66974fa542f8",
          "type": "233b94b15af5eb192f3dca0bf9e43ed8f89f4c82",
          "position": {
            "x": 760,
            "y": 280
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "702228e3-5f92-422d-9bbc-8dfa23aea035",
          "type": "4331635d7586f3c085ae083615b46c5133e99d1f",
          "position": {
            "x": 1000,
            "y": 192
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
            "block": "56638080-73b9-4539-8e43-0b599c6056ff",
            "port": "out"
          },
          "target": {
            "block": "0971651b-e298-43b5-9719-8ac4470f3346",
            "port": "9d65c9bd-4b53-4b90-ac43-9009b544e150"
          }
        },
        {
          "source": {
            "block": "6eeb35f7-5632-49c5-8083-0174e6ff8eab",
            "port": "out"
          },
          "target": {
            "block": "0971651b-e298-43b5-9719-8ac4470f3346",
            "port": "0fc07f9c-45ad-4f87-abee-b726b17345e3"
          }
        },
        {
          "source": {
            "block": "702228e3-5f92-422d-9bbc-8dfa23aea035",
            "port": "22b5ad71-afb1-48c8-9dea-1dee3bd9f0f5"
          },
          "target": {
            "block": "f16134c3-58b7-4299-bdf7-1d83b78caa1c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "702228e3-5f92-422d-9bbc-8dfa23aea035",
            "port": "05bfb979-c034-4b6b-a5e0-316b74e08d5c"
          },
          "target": {
            "block": "655a5c97-1dc0-4b96-a093-e8d8d4950694",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "0971651b-e298-43b5-9719-8ac4470f3346",
            "port": "1b28700e-e98c-4a8a-bad6-5f5ad7830e20"
          },
          "target": {
            "block": "325bbc21-a9f9-4964-97f9-66974fa542f8",
            "port": "46efdbd5-d24a-40a4-818c-607230e4c36e"
          },
          "size": 3
        },
        {
          "source": {
            "block": "325bbc21-a9f9-4964-97f9-66974fa542f8",
            "port": "2c12ff50-1b80-449a-91aa-8cf87092a194"
          },
          "target": {
            "block": "702228e3-5f92-422d-9bbc-8dfa23aea035",
            "port": "2495468d-d95a-469d-893c-95fadebf159e"
          },
          "size": 3
        },
        {
          "source": {
            "block": "325bbc21-a9f9-4964-97f9-66974fa542f8",
            "port": "2c12ff50-1b80-449a-91aa-8cf87092a194"
          },
          "target": {
            "block": "0971651b-e298-43b5-9719-8ac4470f3346",
            "port": "6945a419-264a-4605-aec1-b9d25b8e0ae9"
          },
          "vertices": [
            {
              "x": 696,
              "y": 400
            }
          ],
          "size": 3
        }
      ]
    }
  },
  "dependencies": {
    "7db656ec20b8294c7d5153d297e5324972d2366f": {
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
              "id": "9d65c9bd-4b53-4b90-ac43-9009b544e150",
              "type": "basic.input",
              "data": {
                "name": "S1",
                "clock": false
              },
              "position": {
                "x": 416,
                "y": 208
              }
            },
            {
              "id": "0fc07f9c-45ad-4f87-abee-b726b17345e3",
              "type": "basic.input",
              "data": {
                "name": "S2",
                "clock": false
              },
              "position": {
                "x": 416,
                "y": 376
              }
            },
            {
              "id": "1b28700e-e98c-4a8a-bad6-5f5ad7830e20",
              "type": "basic.output",
              "data": {
                "name": "estado_siguiente",
                "range": "[2:0]",
                "size": 3
              },
              "position": {
                "x": 1088,
                "y": 416
              }
            },
            {
              "id": "6945a419-264a-4605-aec1-b9d25b8e0ae9",
              "type": "basic.input",
              "data": {
                "name": "estado_actual",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": 416,
                "y": 568
              }
            },
            {
              "id": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
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
                "code": "//---------------------------------------------------------------------------\n//-- Bloque 1. Circuito combinacional.\n//---------------------------------------------------------------------------\n\nreg estado_siguiente = 0;\n\nalways @(S1 or S2 or estado_actual) begin\n\n    case(estado_actual)\n    \n        1:  case({S2,S1})\n            1: estado_siguiente=2;\n            default: estado_siguiente=1;\n            endcase\n            \n        2:  case({S2,S1})\n            0: estado_siguiente=3;\n            default: estado_siguiente=2;\n            endcase\n            \n        3:  case({S2,S1})\n            2: estado_siguiente=4;\n            default: estado_siguiente=3;\n            endcase\n        \n        4:  case({S2,S1})\n            0: estado_siguiente=1;\n            default: estado_siguiente=4;\n            endcase\n            \n        default: estado_siguiente=1;\n        endcase\n        \nend"
              },
              "position": {
                "x": 560,
                "y": 152
              },
              "size": {
                "width": 496,
                "height": 504
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9d65c9bd-4b53-4b90-ac43-9009b544e150",
                "port": "out"
              },
              "target": {
                "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
                "port": "S1"
              }
            },
            {
              "source": {
                "block": "0fc07f9c-45ad-4f87-abee-b726b17345e3",
                "port": "out"
              },
              "target": {
                "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
                "port": "S2"
              }
            },
            {
              "source": {
                "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
                "port": "estado_siguiente"
              },
              "target": {
                "block": "1b28700e-e98c-4a8a-bad6-5f5ad7830e20",
                "port": "in"
              },
              "size": 3
            },
            {
              "source": {
                "block": "6945a419-264a-4605-aec1-b9d25b8e0ae9",
                "port": "out"
              },
              "target": {
                "block": "200da0c3-aab7-4392-a96b-cecbf8a065aa",
                "port": "estado_actual"
              },
              "size": 3
            }
          ]
        }
      }
    },
    "233b94b15af5eb192f3dca0bf9e43ed8f89f4c82": {
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
              "id": "46efdbd5-d24a-40a4-818c-607230e4c36e",
              "type": "basic.input",
              "data": {
                "name": "estado_siguiente",
                "range": "[2:0]",
                "clock": false,
                "size": 3
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
                "range": "[2:0]",
                "size": 3
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
      }
    },
    "4331635d7586f3c085ae083615b46c5133e99d1f": {
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
              "id": "22b5ad71-afb1-48c8-9dea-1dee3bd9f0f5",
              "type": "basic.output",
              "data": {
                "name": "A"
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
                "range": "[2:0]",
                "clock": false,
                "size": 3
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
                "name": "C"
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
      }
    }
  }
}