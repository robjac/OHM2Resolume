{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 286.0, 211.0, 277.0, 560.0 ],
		"bglocked" : 0,
		"defrect" : [ 286.0, 211.0, 277.0, 560.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "can limit data rate if desired, just to keep things sane on the midi bus :)",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 350.0, 133.0, 41.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This patch turns button data into sysex data to control the lights. This is MUCH better (efficient) than trying to do it with notes.",
					"linecount" : 4,
					"fontsize" : 12.0,
					"patching_rect" : [ 55.0, 470.0, 193.0, 61.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Georgia",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.933333, 0.94902, 0.843137, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "speedlim 30",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 350.0, 64.0, 18.0 ],
					"id" : "obj-23",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t zlclear dump",
					"fontsize" : 10.0,
					"patching_rect" : [ 5.0, 125.0, 73.0, 18.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "zlclear", "dump" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "changeany",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 330.0, 59.0, 18.0 ],
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send sysex to midiout",
					"fontsize" : 10.0,
					"patching_rect" : [ 100.0, 420.0, 150.0, 18.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t dump b b zlclear",
					"fontsize" : 10.0,
					"patching_rect" : [ 160.0, 55.0, 89.0, 18.0 ],
					"id" : "obj-30",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontname" : "Arial",
					"outlettype" : [ "dump", "bang", "bang", "zlclear" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 160.0, 25.0, 25.0, 25.0 ],
					"id" : "obj-29",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : "clear"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0",
					"fontsize" : 10.0,
					"patching_rect" : [ 180.0, 80.0, 32.5, 16.0 ],
					"id" : "obj-28",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 2 4 8 16 32 64",
					"fontsize" : 9.0,
					"patching_rect" : [ 140.0, 255.0, 76.0, 15.0 ],
					"id" : "obj-22",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl group 12",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 305.0, 60.0, 18.0 ],
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl sum",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 280.0, 39.0, 18.0 ],
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 10.0,
					"patching_rect" : [ 220.0, 255.0, 52.0, 18.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "vexpr $i1*$i2",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 255.0, 68.0, 18.0 ],
					"id" : "obj-5",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "break up list into Ohm64's concept of columns",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 135.0, 210.0, 102.0, 41.0 ],
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert btn ID to position in list that sets up the sysex",
					"linecount" : 3,
					"fontsize" : 10.0,
					"patching_rect" : [ 110.0, 165.0, 124.0, 41.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert list of 1/0 to 7bit integer",
					"fontsize" : 10.0,
					"patching_rect" : [ 115.0, 285.0, 159.0, 18.0 ],
					"id" : "obj-2",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Arial",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "== 0",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 185.0, 32.5, 18.0 ],
					"id" : "obj-64",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl group 84",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 205.0, 60.0, 18.0 ],
					"id" : "obj-62",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0",
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 100.0, 59.0, 18.0 ],
					"id" : "obj-58",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontsize" : 10.0,
					"patching_rect" : [ 80.0, 125.0, 59.5, 18.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"numoutlets" : 4,
					"fontname" : "Arial",
					"outlettype" : [ "", "", "", "" ],
					"coll_data" : 					{
						"count" : 75,
						"data" : [ 							{
								"key" : 0,
								"value" : [ 0 ]
							}
, 							{
								"key" : 1,
								"value" : [ 14 ]
							}
, 							{
								"key" : 2,
								"value" : [ 28 ]
							}
, 							{
								"key" : 3,
								"value" : [ 42 ]
							}
, 							{
								"key" : 4,
								"value" : [ 56 ]
							}
, 							{
								"key" : 5,
								"value" : [ 70 ]
							}
, 							{
								"key" : 6,
								"value" : [ 1 ]
							}
, 							{
								"key" : 7,
								"value" : [ 15 ]
							}
, 							{
								"key" : 8,
								"value" : [ 29 ]
							}
, 							{
								"key" : 9,
								"value" : [ 43 ]
							}
, 							{
								"key" : 10,
								"value" : [ 57 ]
							}
, 							{
								"key" : 11,
								"value" : [ 71 ]
							}
, 							{
								"key" : 12,
								"value" : [ 2 ]
							}
, 							{
								"key" : 13,
								"value" : [ 16 ]
							}
, 							{
								"key" : 14,
								"value" : [ 30 ]
							}
, 							{
								"key" : 15,
								"value" : [ 44 ]
							}
, 							{
								"key" : 16,
								"value" : [ 58 ]
							}
, 							{
								"key" : 17,
								"value" : [ 72 ]
							}
, 							{
								"key" : 18,
								"value" : [ 3 ]
							}
, 							{
								"key" : 19,
								"value" : [ 17 ]
							}
, 							{
								"key" : 20,
								"value" : [ 31 ]
							}
, 							{
								"key" : 21,
								"value" : [ 45 ]
							}
, 							{
								"key" : 22,
								"value" : [ 59 ]
							}
, 							{
								"key" : 23,
								"value" : [ 73 ]
							}
, 							{
								"key" : 24,
								"value" : [ 4 ]
							}
, 							{
								"key" : 25,
								"value" : [ 18 ]
							}
, 							{
								"key" : 26,
								"value" : [ 32 ]
							}
, 							{
								"key" : 27,
								"value" : [ 46 ]
							}
, 							{
								"key" : 28,
								"value" : [ 60 ]
							}
, 							{
								"key" : 29,
								"value" : [ 74 ]
							}
, 							{
								"key" : 30,
								"value" : [ 5 ]
							}
, 							{
								"key" : 31,
								"value" : [ 19 ]
							}
, 							{
								"key" : 32,
								"value" : [ 33 ]
							}
, 							{
								"key" : 33,
								"value" : [ 47 ]
							}
, 							{
								"key" : 34,
								"value" : [ 61 ]
							}
, 							{
								"key" : 35,
								"value" : [ 75 ]
							}
, 							{
								"key" : 36,
								"value" : [ 6 ]
							}
, 							{
								"key" : 37,
								"value" : [ 20 ]
							}
, 							{
								"key" : 38,
								"value" : [ 34 ]
							}
, 							{
								"key" : 39,
								"value" : [ 48 ]
							}
, 							{
								"key" : 40,
								"value" : [ 62 ]
							}
, 							{
								"key" : 41,
								"value" : [ 76 ]
							}
, 							{
								"key" : 42,
								"value" : [ 7 ]
							}
, 							{
								"key" : 43,
								"value" : [ 21 ]
							}
, 							{
								"key" : 44,
								"value" : [ 35 ]
							}
, 							{
								"key" : 45,
								"value" : [ 49 ]
							}
, 							{
								"key" : 46,
								"value" : [ 63 ]
							}
, 							{
								"key" : 47,
								"value" : [ 77 ]
							}
, 							{
								"key" : 48,
								"value" : [ 8 ]
							}
, 							{
								"key" : 49,
								"value" : [ 22 ]
							}
, 							{
								"key" : 50,
								"value" : [ 36 ]
							}
, 							{
								"key" : 51,
								"value" : [ 50 ]
							}
, 							{
								"key" : 52,
								"value" : [ 64 ]
							}
, 							{
								"key" : 53,
								"value" : [ 78 ]
							}
, 							{
								"key" : 54,
								"value" : [ 9 ]
							}
, 							{
								"key" : 55,
								"value" : [ 23 ]
							}
, 							{
								"key" : 56,
								"value" : [ 37 ]
							}
, 							{
								"key" : 57,
								"value" : [ 51 ]
							}
, 							{
								"key" : 58,
								"value" : [ 65 ]
							}
, 							{
								"key" : 59,
								"value" : [ 79 ]
							}
, 							{
								"key" : 60,
								"value" : [ 11 ]
							}
, 							{
								"key" : 61,
								"value" : [ 25 ]
							}
, 							{
								"key" : 62,
								"value" : [ 39 ]
							}
, 							{
								"key" : 63,
								"value" : [ 53 ]
							}
, 							{
								"key" : 64,
								"value" : [ 67 ]
							}
, 							{
								"key" : 65,
								"value" : [ 81 ]
							}
, 							{
								"key" : 66,
								"value" : [ 12 ]
							}
, 							{
								"key" : 67,
								"value" : [ 26 ]
							}
, 							{
								"key" : 68,
								"value" : [ 40 ]
							}
, 							{
								"key" : 69,
								"value" : [ 54 ]
							}
, 							{
								"key" : 70,
								"value" : [ 68 ]
							}
, 							{
								"key" : 71,
								"value" : [ 82 ]
							}
, 							{
								"key" : 72,
								"value" : [ 13 ]
							}
, 							{
								"key" : 73,
								"value" : [ 27 ]
							}
, 							{
								"key" : 80,
								"value" : [ 41 ]
							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "table",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 165.0, 32.5, 18.0 ],
					"id" : "obj-55",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "int", "bang" ],
					"showeditor" : 0,
					"editor_rect" : [ 100.0, 100.0, 300.0, 300.0 ],
					"saved_object_attributes" : 					{
						"size" : 84,
						"range" : 2,
						"showeditor" : 0,
						"name" : "",
						"embed" : 0,
						"notename" : 0,
						"signed" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "240 0 1 97 2 4",
					"fontsize" : 9.0,
					"patching_rect" : [ 93.0, 396.0, 79.0, 15.0 ],
					"id" : "obj-8",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 247 l b",
					"fontsize" : 9.0,
					"patching_rect" : [ 70.0, 374.0, 49.0, 17.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontname" : "Arial",
					"outlettype" : [ "int", "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"fontsize" : 9.0,
					"patching_rect" : [ 70.0, 414.0, 23.0, 17.0 ],
					"id" : "obj-35",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl iter 7",
					"fontsize" : 10.0,
					"patching_rect" : [ 70.0, 230.0, 43.0, 18.0 ],
					"id" : "obj-103",
					"numinlets" : 2,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"patching_rect" : [ 80.0, 30.0, 25.0, 25.0 ],
					"id" : "obj-67",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 70.0, 435.0, 25.0, 25.0 ],
					"id" : "obj-68",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"fontsize" : 10.0,
					"patching_rect" : [ 215.0, 80.0, 50.0, 16.0 ],
					"id" : "obj-25",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 1 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 224.5, 160.0, 79.5, 160.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 97.5, 89.5, 97.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 169.5, 161.0, 79.5, 161.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 2 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 3 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 3 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
