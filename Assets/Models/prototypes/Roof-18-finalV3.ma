//Maya ASCII 2015 scene
//Name: Roof-18-finalV3.ma
//Last modified: Sun, May 10, 2015 06:33:27 PM
//Codeset: UTF-8
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -nodeType "mia_physicalsun" -nodeType "mia_physicalsky"
		 -nodeType "mia_exposure_simple" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.3";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 38.643457588501406 30.699190150993672 -41.548241854209401 ;
	setAttr ".r" -type "double3" 693.26140400485065 -3464.6005479699243 359.99965355387491 ;
	setAttr ".rp" -type "double3" 0 -3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr ".rpt" -type "double3" -2.1717415283047274e-16 2.028365931848321e-15 -8.3352598940269208e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 64.563152502211949;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.5000000000000009 3.047509179055691 -5.0721487465526547 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.7023970363527541 100.64753715661138 -3.4485250533115943 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.1579905973945706;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.31860234274009791 2.4443131374878249 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 35.375651363986144;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 102.28086022282372 3.2850123089303116 1.831909622383487 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.87845629554792;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "sunDirection";
	setAttr ".r" -type "double3" -75 0 0 ;
	setAttr ".hio" yes;
createNode directionalLight -n "sunShape" -p "sunDirection";
	setAttr -k off ".v";
	setAttr ".hio" yes;
	setAttr ".milt" yes;
createNode transform -n "ROOF";
createNode transform -n "roofbox" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofboxShape" -p "roofbox";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Roof" -p "ROOF";
	setAttr ".rp" -type "double3" 0 -0.50000000000000022 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
	setAttr ".spt" -type "double3" 0 -2.220446049250321e-16 0 ;
createNode mesh -n "RoofShape" -p "Roof";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Antenna" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "AntennaShape" -p "Antenna";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Antenna";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "roofbox1" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofbox1Shape" -p "roofbox1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "roofbox2" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofbox2Shape" -p "roofbox2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "roofbox3" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofbox3Shape" -p "roofbox3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "roofbox4" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofbox4Shape" -p "roofbox4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "roofbox6" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofbox6Shape" -p "roofbox6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "roofbox7" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofbox7Shape" -p "roofbox7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "roofbox8" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "roofbox8Shape" -p "roofbox8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Antenna1" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "Antenna1Shape" -p "Antenna1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Antenna1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Antenna2" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "Antenna2Shape" -p "Antenna2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Antenna2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Antenna3" -p "ROOF";
	setAttr ".rp" -type "double3" 8.3231428068736228e-15 -0.49999999999999994 0 ;
	setAttr ".sp" -type "double3" 3.219646771412954e-15 -0.19341532676539042 0 ;
	setAttr ".spt" -type "double3" 5.1034960354606689e-15 -0.30658467323460953 0 ;
createNode mesh -n "Antenna3Shape" -p "Antenna3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Antenna3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.17641932 0.5 0.5 -0.17641932 0.5
		 -0.5 0.17641932 0.5 0.5 0.17641932 0.5 -0.5 0.17641932 -0.5 0.5 0.17641932 -0.5 -0.5 -0.17641932 -0.5
		 0.5 -0.17641932 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 33 ".lnk";
	setAttr -s 33 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 2 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".mb" 2;
	setAttr ".fg" yes;
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 470 -max 588 -ast 0 -aet 700 ";
	setAttr ".st" 6;
createNode lambert -n "IBeamMat";
	setAttr ".c" -type "float3" 0.92799997 0.36674559 0 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode materialInfo -n "pasted__materialInfo1";
createNode shadingEngine -n "pasted__lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo1";
createNode shadingEngine -n "pasted__pasted__lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo2";
createNode shadingEngine -n "pasted__pasted__lambert2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo3";
createNode shadingEngine -n "pasted__pasted__lambert2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo4";
createNode shadingEngine -n "pasted__pasted__lambert2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__pasted__materialInfo5";
createNode shadingEngine -n "pasted__pasted__lambert2SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "Ground";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode lambert -n "FloorTileMat";
	setAttr ".c" -type "float3" 0.5 0.43173599 0.38 ;
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode lambert -n "FacadeBase";
	setAttr ".c" -type "float3" 0.86799997 0.71116215 0.49909997 ;
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode phong -n "FacadeGlass";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.66546398 0.82316446 0.86199999 ;
	setAttr ".it" -type "float3" 0.38461891 0.38461891 0.38461891 ;
	setAttr ".tc" 0.090909093618392944;
	setAttr ".sc" -type "float3" 0.71795225 0.71795225 0.71795225 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode phong -n "FacadeMetal";
	setAttr ".c" -type "float3" 0.5 0.43173599 0.38 ;
	setAttr ".rfl" 0.17171716690063477;
createNode shadingEngine -n "phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode shadingEngine -n "pasted__lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo4";
createNode lambert -n "pasted__FacadeBase";
	setAttr ".c" -type "float3" 0.86799997 0.71116215 0.49909997 ;
createNode shadingEngine -n "pasted__phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo5";
createNode phong -n "pasted__FacadeGlass";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.66546398 0.82316446 0.86199999 ;
	setAttr ".it" -type "float3" 0.38461891 0.38461891 0.38461891 ;
	setAttr ".tc" 0.090909093618392944;
	setAttr ".sc" -type "float3" 0.71795225 0.71795225 0.71795225 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "pasted__phong2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo6";
createNode phong -n "pasted__FacadeMetal";
	setAttr ".c" -type "float3" 0.5 0.43173599 0.38 ;
	setAttr ".rfl" 0.17171716690063477;
createNode mentalrayOptions -s -n "miContourPreset";
createNode mia_exposure_simple -n "mia_exposure_simple1";
	setAttr ".S01" 0.20000000298023224;
	setAttr ".S02" 0.75;
	setAttr ".S03" 3;
createNode mia_physicalsun -n "mia_physicalsun1";
createNode mia_physicalsky -n "mia_physicalsky1";
	addAttr -s false -ci true -h true -sn "miSkyExposure" -ln "miSkyExposure" -at "message";
	setAttr ".S18" yes;
createNode shadingEngine -n "pasted__lambert5SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo7";
createNode lambert -n "pasted__FacadeBase1";
	setAttr ".c" -type "float3" 0.86799997 0.71116215 0.49909997 ;
createNode shadingEngine -n "pasted__phong1SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo8";
createNode phong -n "pasted__FacadeGlass1";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.66546398 0.82316446 0.86199999 ;
	setAttr ".it" -type "float3" 0.38461891 0.38461891 0.38461891 ;
	setAttr ".tc" 0.090909093618392944;
	setAttr ".sc" -type "float3" 0.71795225 0.71795225 0.71795225 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "pasted__phong2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo9";
createNode phong -n "pasted__FacadeMetal1";
	setAttr ".c" -type "float3" 0.5 0.43173599 0.38 ;
	setAttr ".rfl" 0.17171716690063477;
createNode polyCube -n "polyCube9";
	setAttr ".h" 0.3528386211953547;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 4.110860826110728 2.3582916598622171e-16 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.6108608 0 ;
	setAttr ".rs" 1519456240;
	setAttr ".lt" -type "double3" 0 -6.9025329206838533e-31 -0.19396884825609551 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.8241114616394043 4.610860826110728 -4.8241114616394043 ;
	setAttr ".cbx" -type "double3" 4.8241114616394043 4.610860826110728 4.8241114616394043 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.17588852 0 -0.17588852 -0.17588852
		 0 -0.17588852 -0.17588852 0 0.17588852 0.17588852 0 0.17588852;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0 4.110860826110728 2.3582916598622171e-16 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.6108608 0 ;
	setAttr ".rs" 1651554134;
	setAttr ".ls" -type "double3" 1 1 0.57613083126138565 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5 4.610860826110728 -5 ;
	setAttr ".cbx" -type "double3" 5 4.610860826110728 5 ;
createNode polyCube -n "polyCube8";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-16 ;
	setAttr ".w" 10.3;
	setAttr ".d" 10.3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0 ;
	setAttr ".rs" 1265460044;
	setAttr ".lt" -type "double3" 0 -0.35361609795019544 7.851854676448232e-17 ;
	setAttr ".ls" -type "double3" 0.41473139330969433 0.54665633580434592 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49999999999999489 3.1413954340345134 -1 ;
	setAttr ".cbx" -type "double3" 0.50000000000000511 3.1413954340345134 1 ;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0.35361609 ;
	setAttr ".rs" 463871049;
	setAttr ".lt" -type "double3" 0 -6.2850586118386564e-18 0.2216946123777217 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.1413953744298686 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.1413953744298686 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.3630898 0.35361609 ;
	setAttr ".rs" 1461643952;
	setAttr ".lt" -type "double3" 0 -0.26706810231634054 5.9301031266909674e-17 ;
	setAttr ".ls" -type "double3" 0.20673820404697774 0.21221343995630948 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.3630898438817729 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.3630898438817729 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 3.3630898 0.62068415 ;
	setAttr ".rs" 246788376;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 2.1795952480925657e-17 3.5981602434712818 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 3.3630898438817729 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 3.3630898438817729 0.73669195175170898 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -1.41050482 0 0 -1.41050482
		 0 0 -1.41050482 0 0 -1.41050482 0;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 5.5507455 0.62068415 ;
	setAttr ".rs" 451992818;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 5.5507455312139262 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 5.5507455312139262 0.73669195175170898 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.015311444 -2.3841858e-07
		 -0.014989953 -0.015311444 -2.3841858e-07 -0.014989953 -0.015311444 -2.3841858e-07
		 0.039583851 0.015311444 -2.3841858e-07 0.039583851;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1035565e-15 5.5507455 0.6452781 ;
	setAttr ".rs" 438718084;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 7.6335157898412483e-17 3.3437829886665584 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.027558965608472489 5.5507452927953471 0.58384406566619873 ;
	setAttr ".cbx" -type "double3" 0.027558965608482696 5.5507452927953471 0.70671206712722778 ;
createNode phong -n "RoofMetal";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.64099997 0.64099997 0.64099997 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 76.242424011230469;
createNode shadingEngine -n "phong3SG";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode animCurveTL -n "Antenna_translateX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTL -n "Antenna_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -1.0759038089699611 444 2.4554271152273852
		 449 2.4554271152273852 469 3.2715607895468022;
createNode animCurveTL -n "Antenna_translateZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 -1 469 -1;
createNode animCurveTU -n "Antenna_visibility";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  444 1 469 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Antenna_rotateX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTA -n "Antenna_rotateY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTA -n "Antenna_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTU -n "Antenna_scaleX";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 0.87311692726018353 444 1 469 1;
createNode animCurveTU -n "Antenna_scaleY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 0.11379759831103763 444 0.13033488958704678
		 449 0.13033488958704678 469 1;
createNode animCurveTU -n "Antenna_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 1.7462338545203671 444 2 469 2;
createNode animCurveTL -n "Antenna_translateX1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTL -n "Antenna_translateY1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -1.0759038089699611 444 2.4554271152273852
		 449 2.4554271152273852 469 3.2715607895468022;
createNode animCurveTL -n "Antenna_translateZ1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 2 469 2;
createNode animCurveTU -n "Antenna_visibility1";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  444 1 469 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Antenna_rotateX1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTA -n "Antenna_rotateY1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 180 469 180;
createNode animCurveTA -n "Antenna_rotateZ1";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTU -n "Antenna_scaleX1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 0.87311692726018353 444 1 469 1;
createNode animCurveTU -n "Antenna_scaleY1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 0.11379759831103763 444 0.13033488958704678
		 449 0.13033488958704678 469 1;
createNode animCurveTU -n "Antenna_scaleZ1";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 1.7462338545203671 444 2 469 2;
createNode polyExtrudeFace -n "polyExtrudeFace186";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1035565e-15 5.5507455 0.6452781 ;
	setAttr ".rs" 438718084;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 7.6335157898412483e-17 3.3437829886665584 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.027558965608472489 5.5507452927953471 0.58384406566619873 ;
	setAttr ".cbx" -type "double3" 0.027558965608482696 5.5507452927953471 0.70671206712722778 ;
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.015311444 -2.3841858e-07
		 -0.014989953 -0.015311444 -2.3841858e-07 -0.014989953 -0.015311444 -2.3841858e-07
		 0.039583851 0.015311444 -2.3841858e-07 0.039583851;
createNode polyExtrudeFace -n "polyExtrudeFace187";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 5.5507455 0.62068415 ;
	setAttr ".rs" 451992818;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 5.5507455312139262 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 5.5507455312139262 0.73669195175170898 ;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -1.41050482 0 0 -1.41050482
		 0 0 -1.41050482 0 0 -1.41050482 0;
createNode polyExtrudeFace -n "polyExtrudeFace188";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 3.3630898 0.62068415 ;
	setAttr ".rs" 246788376;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 2.1795952480925657e-17 3.5981602434712818 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 3.3630898438817729 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 3.3630898438817729 0.73669195175170898 ;
createNode polyExtrudeFace -n "polyExtrudeFace189";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.3630898 0.35361609 ;
	setAttr ".rs" 1461643952;
	setAttr ".lt" -type "double3" 0 -0.26706810231634054 5.9301031266909674e-17 ;
	setAttr ".ls" -type "double3" 0.20673820404697774 0.21221343995630948 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.3630898438817729 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.3630898438817729 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace190";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0.35361609 ;
	setAttr ".rs" 463871049;
	setAttr ".lt" -type "double3" 0 -6.2850586118386564e-18 0.2216946123777217 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.1413953744298686 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.1413953744298686 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace191";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0 ;
	setAttr ".rs" 1265460044;
	setAttr ".lt" -type "double3" 0 -0.35361609795019544 7.851854676448232e-17 ;
	setAttr ".ls" -type "double3" 0.41473139330969433 0.54665633580434592 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49999999999999489 3.1413954340345134 -1 ;
	setAttr ".cbx" -type "double3" 0.50000000000000511 3.1413954340345134 1 ;
createNode animCurveTL -n "Antenna_translateX2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 1.4999999999999918 469 1.4999999999999918;
createNode animCurveTL -n "Antenna_translateY2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -1.0759038089699611 444 2.4554271152273852
		 449 2.4554271152273852 469 3.2715607895468022;
createNode animCurveTL -n "Antenna_translateZ2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0.5 469 0.5;
createNode animCurveTU -n "Antenna_visibility2";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  444 1 469 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Antenna_rotateX2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTA -n "Antenna_rotateY2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 270 469 270;
createNode animCurveTA -n "Antenna_rotateZ2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTU -n "Antenna_scaleX2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 0.87311692726018353 444 1 469 1;
createNode animCurveTU -n "Antenna_scaleY2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 0.11379759831103763 444 0.13033488958704678
		 449 0.13033488958704678 469 1;
createNode animCurveTU -n "Antenna_scaleZ2";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 1.7462338545203671 444 2 469 2;
createNode polyExtrudeFace -n "polyExtrudeFace192";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1035565e-15 5.5507455 0.6452781 ;
	setAttr ".rs" 438718084;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 7.6335157898412483e-17 3.3437829886665584 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.027558965608472489 5.5507452927953471 0.58384406566619873 ;
	setAttr ".cbx" -type "double3" 0.027558965608482696 5.5507452927953471 0.70671206712722778 ;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.015311444 -2.3841858e-07
		 -0.014989953 -0.015311444 -2.3841858e-07 -0.014989953 -0.015311444 -2.3841858e-07
		 0.039583851 0.015311444 -2.3841858e-07 0.039583851;
createNode polyExtrudeFace -n "polyExtrudeFace193";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 5.5507455 0.62068415 ;
	setAttr ".rs" 451992818;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 5.5507455312139262 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 5.5507455312139262 0.73669195175170898 ;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -1.41050482 0 0 -1.41050482
		 0 0 -1.41050482 0 0 -1.41050482 0;
createNode polyExtrudeFace -n "polyExtrudeFace194";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 3.3630898 0.62068415 ;
	setAttr ".rs" 246788376;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 2.1795952480925657e-17 3.5981602434712818 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 3.3630898438817729 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 3.3630898438817729 0.73669195175170898 ;
createNode polyExtrudeFace -n "polyExtrudeFace195";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.3630898 0.35361609 ;
	setAttr ".rs" 1461643952;
	setAttr ".lt" -type "double3" 0 -0.26706810231634054 5.9301031266909674e-17 ;
	setAttr ".ls" -type "double3" 0.20673820404697774 0.21221343995630948 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.3630898438817729 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.3630898438817729 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace196";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0.35361609 ;
	setAttr ".rs" 463871049;
	setAttr ".lt" -type "double3" 0 -6.2850586118386564e-18 0.2216946123777217 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.1413953744298686 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.1413953744298686 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace197";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0 ;
	setAttr ".rs" 1265460044;
	setAttr ".lt" -type "double3" 0 -0.35361609795019544 7.851854676448232e-17 ;
	setAttr ".ls" -type "double3" 0.41473139330969433 0.54665633580434592 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49999999999999489 3.1413954340345134 -1 ;
	setAttr ".cbx" -type "double3" 0.50000000000000511 3.1413954340345134 1 ;
createNode animCurveTL -n "Antenna_translateX3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 -1.5000000000000082 469 -1.5000000000000082;
createNode animCurveTL -n "Antenna_translateY3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -1.0759038089699611 444 2.4554271152273852
		 449 2.4554271152273852 469 3.2715607895468022;
createNode animCurveTL -n "Antenna_translateZ3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0.5 469 0.5;
createNode animCurveTU -n "Antenna_visibility3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  444 1 469 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Antenna_rotateX3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTA -n "Antenna_rotateY3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 90 469 90;
createNode animCurveTA -n "Antenna_rotateZ3";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  444 0 469 0;
createNode animCurveTU -n "Antenna_scaleX3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 0.87311692726018353 444 1 469 1;
createNode animCurveTU -n "Antenna_scaleY3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 0.11379759831103763 444 0.13033488958704678
		 449 0.13033488958704678 469 1;
createNode animCurveTU -n "Antenna_scaleZ3";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  434 1.7462338545203671 444 2 469 2;
createNode polyExtrudeFace -n "polyExtrudeFace198";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1035565e-15 5.5507455 0.6452781 ;
	setAttr ".rs" 438718084;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 7.6335157898412483e-17 3.3437829886665584 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.027558965608472489 5.5507452927953471 0.58384406566619873 ;
	setAttr ".cbx" -type "double3" 0.027558965608482696 5.5507452927953471 0.70671206712722778 ;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.015311444 -2.3841858e-07
		 -0.014989953 -0.015311444 -2.3841858e-07 -0.014989953 -0.015311444 -2.3841858e-07
		 0.039583851 0.015311444 -2.3841858e-07 0.039583851;
createNode polyExtrudeFace -n "polyExtrudeFace199";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 5.5507455 0.62068415 ;
	setAttr ".rs" 451992818;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 5.5507455312139262 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 5.5507455312139262 0.73669195175170898 ;
createNode polyTweak -n "polyTweak63";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[20:23]" -type "float3"  0 -1.41050482 0 0 -1.41050482
		 0 0 -1.41050482 0 0 -1.41050482 0;
createNode polyExtrudeFace -n "polyExtrudeFace200";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.100087e-15 3.3630898 0.62068415 ;
	setAttr ".rs" 246788376;
	setAttr ".lt" -type "double3" 7.8886090522101181e-31 2.1795952480925657e-17 3.5981602434712818 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.042870409786696102 3.3630898438817729 0.50467634201049805 ;
	setAttr ".cbx" -type "double3" 0.042870409786706302 3.3630898438817729 0.73669195175170898 ;
createNode polyExtrudeFace -n "polyExtrudeFace201";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.3630898 0.35361609 ;
	setAttr ".rs" 1461643952;
	setAttr ".lt" -type "double3" 0 -0.26706810231634054 5.9301031266909674e-17 ;
	setAttr ".ls" -type "double3" 0.20673820404697774 0.21221343995630948 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.3630898438817729 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.3630898438817729 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace202";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0.35361609 ;
	setAttr ".rs" 463871049;
	setAttr ".lt" -type "double3" 0 -6.2850586118386564e-18 0.2216946123777217 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20736569166182961 3.1413953744298686 -0.1930401623249054 ;
	setAttr ".cbx" -type "double3" 0.20736569166183982 3.1413953744298686 0.90027236938476562 ;
createNode polyExtrudeFace -n "polyExtrudeFace203";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 2 0 5.1034960354606689e-15 2.9649761163121928 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.1070259e-15 3.1413953 0 ;
	setAttr ".rs" 1265460044;
	setAttr ".lt" -type "double3" 0 -0.35361609795019544 7.851854676448232e-17 ;
	setAttr ".ls" -type "double3" 0.41473139330969433 0.54665633580434592 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49999999999999489 3.1413954340345134 -1 ;
	setAttr ".cbx" -type "double3" 0.50000000000000511 3.1413954340345134 1 ;
createNode animCurveTL -n "roofbox6_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127511 444 2.9056018660060712
		 469 2.9056018660060712 479 3.2715607895468057;
createNode animCurveTL -n "roofbox3_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127511 444 2.9056018660060712
		 469 2.9056018660060712 479 3.2715607895468057;
createNode animCurveTL -n "roofbox_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127866 444 2.9056018660060676
		 469 2.9056018660060676 479 3.2715607895468022;
createNode animCurveTL -n "roofbox8_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127511 444 2.9056018660060712
		 469 2.9056018660060712 479 3.2715607895468057;
createNode animCurveTL -n "roofbox7_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127511 444 2.9056018660060712
		 469 2.9056018660060712 479 3.2715607895468057;
createNode animCurveTL -n "roofbox2_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127511 444 2.9056018660060712
		 469 2.9056018660060712 479 3.2715607895468057;
createNode animCurveTL -n "roofbox4_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127511 444 2.9056018660060712
		 469 2.9056018660060712 479 3.2715607895468057;
createNode animCurveTL -n "roofbox1_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  434 -0.62572905819127511 444 2.9056018660060712
		 469 2.9056018660060712 479 3.2715607895468057;
createNode animCurveTL -n "Roof_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTL -n "Roof_translateY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 -1.0313309241973463 444 2.5;
createNode animCurveTL -n "Roof_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTL -n "roofbox_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 3.4999999999999916;
createNode animCurveTL -n "roofbox_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -3.0294377214036712;
createNode animCurveTL -n "roofbox1_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 1.999999999999992;
createNode animCurveTL -n "roofbox1_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -3;
createNode animCurveTL -n "roofbox2_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -3.5000000000000084;
createNode animCurveTL -n "roofbox2_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -3;
createNode animCurveTL -n "roofbox3_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -4.0000000000000089;
createNode animCurveTL -n "roofbox3_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 3.5;
createNode animCurveTL -n "roofbox4_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -2.000000000000008;
createNode animCurveTL -n "roofbox4_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -3;
createNode animCurveTL -n "roofbox6_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 -2.5000000000000084;
createNode animCurveTL -n "roofbox6_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 3.5;
createNode animCurveTL -n "roofbox7_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 3.4999999999999916;
createNode animCurveTL -n "roofbox7_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 3.5;
createNode animCurveTL -n "roofbox8_translateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 1.999999999999992;
createNode animCurveTL -n "roofbox8_translateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 3.5;
createNode animCurveTU -n "roofbox_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTU -n "Roof_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Roof_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "Roof_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "Roof_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "Roof_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "Roof_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018464 444 1.0000000000000004;
createNode animCurveTU -n "Roof_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox1_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox1_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox1_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox1_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox1_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox1_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTU -n "roofbox2_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox2_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox2_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox2_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox2_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox2_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTU -n "roofbox3_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox3_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox3_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox3_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox3_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox3_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTU -n "roofbox4_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox4_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox4_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox4_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox4_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox4_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox4_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTU -n "roofbox6_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox6_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox6_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox6_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox6_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox6_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox6_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTU -n "roofbox7_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox7_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox7_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox7_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox7_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox7_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox7_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTU -n "roofbox8_visibility";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  444 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "roofbox8_rotateX";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox8_rotateY";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTA -n "roofbox8_rotateZ";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  444 0;
createNode animCurveTU -n "roofbox8_scaleX";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox8_scaleY";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 0.87311692726018353 444 1;
createNode animCurveTU -n "roofbox8_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  434 1.7462338545203671 444 2;
createNode animCurveTL -n "Roof_translateX1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  485 0;
createNode animCurveTL -n "Roof_translateY1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  485 0 520 1.2502751403631156 540 1.2420092205399271
		 560 2.0330624423244705;
createNode animCurveTL -n "Roof_translateZ1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  485 0 520 0.40849568249261181 540 0.408
		 560 0;
createNode animCurveTA -n "Roof_rotateX1";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  485 0 520 -13.113795952698382 540 -9.4761540654331551
		 560 0;
createNode animCurveTA -n "Roof_rotateY1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  485 0;
createNode animCurveTA -n "Roof_rotateZ1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  485 0;
createNode animCurveTU -n "Roof_scaleX1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  485 1;
createNode animCurveTU -n "Roof_scaleY1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  485 1;
createNode animCurveTU -n "Roof_scaleZ1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  485 1;
createNode materialInfo -n "pasted__materialInfo10";
createNode shadingEngine -n "pasted__lambert2SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__IBeamMat";
	setAttr ".c" -type "float3" 0.92799997 0.36674559 0 ;
createNode materialInfo -n "pasted__materialInfo11";
createNode shadingEngine -n "pasted__lambert2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__IBeamMat1";
	setAttr ".c" -type "float3" 0.92799997 0.36674559 0 ;
createNode materialInfo -n "pasted__materialInfo12";
createNode shadingEngine -n "pasted__lambert2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__IBeamMat2";
	setAttr ".c" -type "float3" 0.92799997 0.36674559 0 ;
createNode phong -n "phong4";
createNode shadingEngine -n "phong4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr ".mico" 1;
createNode materialInfo -n "materialInfo8";
createNode lambert -n "lambert6";
	setAttr ".it" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode materialInfo -n "pasted__materialInfo13";
createNode shadingEngine -n "pasted__lambert2SG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "pasted__IBeamMat3";
	setAttr ".c" -type "float3" 0.92799997 0.36674559 0 ;
createNode shadingEngine -n "pasted__lambert5SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo14";
createNode lambert -n "pasted__FacadeBase2";
	setAttr ".c" -type "float3" 0.86799997 0.71116215 0.49909997 ;
createNode shadingEngine -n "pasted__phong1SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo15";
createNode phong -n "pasted__FacadeGlass2";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.66546398 0.82316446 0.86199999 ;
	setAttr ".it" -type "float3" 0.38461891 0.38461891 0.38461891 ;
	setAttr ".tc" 0.090909093618392944;
	setAttr ".sc" -type "float3" 0.71795225 0.71795225 0.71795225 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "pasted__phong2SG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo16";
createNode phong -n "pasted__FacadeMetal2";
	setAttr ".c" -type "float3" 0.5 0.43173599 0.38 ;
	setAttr ".rfl" 0.17171716690063477;
createNode mia_physicalsun -n "pasted__mia_physicalsun1";
createNode mia_physicalsky -n "pasted__mia_physicalsky1";
	addAttr -s false -ci true -h true -sn "miSkyExposure" -ln "miSkyExposure" -at "message";
	setAttr ".S18" yes;
createNode mia_exposure_simple -n "pasted__mia_exposure_simple1";
	setAttr ".S01" 0.20000000298023224;
	setAttr ".S02" 0.75;
	setAttr ".S03" 3;
createNode shadingEngine -n "pasted__lambert5SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo17";
createNode lambert -n "pasted__FacadeBase3";
	setAttr ".c" -type "float3" 0.86799997 0.71116215 0.49909997 ;
createNode shadingEngine -n "pasted__phong1SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo18";
createNode phong -n "pasted__FacadeGlass3";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.66546398 0.82316446 0.86199999 ;
	setAttr ".it" -type "float3" 0.38461891 0.38461891 0.38461891 ;
	setAttr ".tc" 0.090909093618392944;
	setAttr ".sc" -type "float3" 0.71795225 0.71795225 0.71795225 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "pasted__phong2SG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "pasted__materialInfo19";
createNode phong -n "pasted__FacadeMetal3";
	setAttr ".c" -type "float3" 0.5 0.43173599 0.38 ;
	setAttr ".rfl" 0.17171716690063477;
createNode mia_physicalsun -n "pasted__mia_physicalsun2";
createNode mia_physicalsky -n "pasted__mia_physicalsky2";
	addAttr -s false -ci true -h true -sn "miSkyExposure" -ln "miSkyExposure" -at "message";
	setAttr ".S18" yes;
createNode mia_exposure_simple -n "pasted__mia_exposure_simple2";
	setAttr ".S01" 0.20000000298023224;
	setAttr ".S02" 0.75;
	setAttr ".S03" 3;
select -ne :time1;
	setAttr ".o" 486;
	setAttr ".unw" 486;
select -ne :renderPartition;
	setAttr -s 33 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 27 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware2";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "mia_exposure_simple1.msg" ":perspShape.mils";
connectAttr "mia_physicalsky1.msg" ":perspShape.mies";
connectAttr "mia_physicalsun1.msg" "sunShape.mils";
connectAttr "mia_physicalsun1.msg" "sunShape.mipe";
connectAttr "Roof_translateX1.o" "ROOF.tx";
connectAttr "Roof_translateY1.o" "ROOF.ty";
connectAttr "Roof_translateZ1.o" "ROOF.tz";
connectAttr "Roof_rotateX1.o" "ROOF.rx";
connectAttr "Roof_rotateY1.o" "ROOF.ry";
connectAttr "Roof_rotateZ1.o" "ROOF.rz";
connectAttr "Roof_scaleX1.o" "ROOF.sx";
connectAttr "Roof_scaleY1.o" "ROOF.sy";
connectAttr "Roof_scaleZ1.o" "ROOF.sz";
connectAttr "roofbox_translateY.o" "roofbox.ty";
connectAttr "roofbox_translateX.o" "roofbox.tx";
connectAttr "roofbox_translateZ.o" "roofbox.tz";
connectAttr "roofbox_visibility.o" "roofbox.v";
connectAttr "roofbox_rotateX.o" "roofbox.rx";
connectAttr "roofbox_rotateY.o" "roofbox.ry";
connectAttr "roofbox_rotateZ.o" "roofbox.rz";
connectAttr "roofbox_scaleX.o" "roofbox.sx";
connectAttr "roofbox_scaleY.o" "roofbox.sy";
connectAttr "roofbox_scaleZ.o" "roofbox.sz";
connectAttr "polyCube9.out" "roofboxShape.i";
connectAttr "Roof_visibility.o" "Roof.v";
connectAttr "Roof_translateX.o" "Roof.tx";
connectAttr "Roof_translateY.o" "Roof.ty";
connectAttr "Roof_translateZ.o" "Roof.tz";
connectAttr "Roof_rotateX.o" "Roof.rx";
connectAttr "Roof_rotateY.o" "Roof.ry";
connectAttr "Roof_rotateZ.o" "Roof.rz";
connectAttr "Roof_scaleX.o" "Roof.sx";
connectAttr "Roof_scaleY.o" "Roof.sy";
connectAttr "Roof_scaleZ.o" "Roof.sz";
connectAttr "polyExtrudeFace20.out" "RoofShape.i";
connectAttr "Antenna_translateX.o" "Antenna.tx";
connectAttr "Antenna_translateY.o" "Antenna.ty";
connectAttr "Antenna_translateZ.o" "Antenna.tz";
connectAttr "Antenna_visibility.o" "Antenna.v";
connectAttr "Antenna_rotateX.o" "Antenna.rx";
connectAttr "Antenna_rotateY.o" "Antenna.ry";
connectAttr "Antenna_rotateZ.o" "Antenna.rz";
connectAttr "Antenna_scaleX.o" "Antenna.sx";
connectAttr "Antenna_scaleY.o" "Antenna.sy";
connectAttr "Antenna_scaleZ.o" "Antenna.sz";
connectAttr "polyExtrudeFace26.out" "AntennaShape.i";
connectAttr "roofbox1_translateY.o" "roofbox1.ty";
connectAttr "roofbox1_translateX.o" "roofbox1.tx";
connectAttr "roofbox1_translateZ.o" "roofbox1.tz";
connectAttr "roofbox1_visibility.o" "roofbox1.v";
connectAttr "roofbox1_rotateX.o" "roofbox1.rx";
connectAttr "roofbox1_rotateY.o" "roofbox1.ry";
connectAttr "roofbox1_rotateZ.o" "roofbox1.rz";
connectAttr "roofbox1_scaleX.o" "roofbox1.sx";
connectAttr "roofbox1_scaleY.o" "roofbox1.sy";
connectAttr "roofbox1_scaleZ.o" "roofbox1.sz";
connectAttr "roofbox2_translateY.o" "roofbox2.ty";
connectAttr "roofbox2_translateX.o" "roofbox2.tx";
connectAttr "roofbox2_translateZ.o" "roofbox2.tz";
connectAttr "roofbox2_visibility.o" "roofbox2.v";
connectAttr "roofbox2_rotateX.o" "roofbox2.rx";
connectAttr "roofbox2_rotateY.o" "roofbox2.ry";
connectAttr "roofbox2_rotateZ.o" "roofbox2.rz";
connectAttr "roofbox2_scaleX.o" "roofbox2.sx";
connectAttr "roofbox2_scaleY.o" "roofbox2.sy";
connectAttr "roofbox2_scaleZ.o" "roofbox2.sz";
connectAttr "roofbox3_translateY.o" "roofbox3.ty";
connectAttr "roofbox3_translateX.o" "roofbox3.tx";
connectAttr "roofbox3_translateZ.o" "roofbox3.tz";
connectAttr "roofbox3_visibility.o" "roofbox3.v";
connectAttr "roofbox3_rotateX.o" "roofbox3.rx";
connectAttr "roofbox3_rotateY.o" "roofbox3.ry";
connectAttr "roofbox3_rotateZ.o" "roofbox3.rz";
connectAttr "roofbox3_scaleX.o" "roofbox3.sx";
connectAttr "roofbox3_scaleY.o" "roofbox3.sy";
connectAttr "roofbox3_scaleZ.o" "roofbox3.sz";
connectAttr "roofbox4_translateY.o" "roofbox4.ty";
connectAttr "roofbox4_translateX.o" "roofbox4.tx";
connectAttr "roofbox4_translateZ.o" "roofbox4.tz";
connectAttr "roofbox4_visibility.o" "roofbox4.v";
connectAttr "roofbox4_rotateX.o" "roofbox4.rx";
connectAttr "roofbox4_rotateY.o" "roofbox4.ry";
connectAttr "roofbox4_rotateZ.o" "roofbox4.rz";
connectAttr "roofbox4_scaleX.o" "roofbox4.sx";
connectAttr "roofbox4_scaleY.o" "roofbox4.sy";
connectAttr "roofbox4_scaleZ.o" "roofbox4.sz";
connectAttr "roofbox6_translateY.o" "roofbox6.ty";
connectAttr "roofbox6_translateX.o" "roofbox6.tx";
connectAttr "roofbox6_translateZ.o" "roofbox6.tz";
connectAttr "roofbox6_visibility.o" "roofbox6.v";
connectAttr "roofbox6_rotateX.o" "roofbox6.rx";
connectAttr "roofbox6_rotateY.o" "roofbox6.ry";
connectAttr "roofbox6_rotateZ.o" "roofbox6.rz";
connectAttr "roofbox6_scaleX.o" "roofbox6.sx";
connectAttr "roofbox6_scaleY.o" "roofbox6.sy";
connectAttr "roofbox6_scaleZ.o" "roofbox6.sz";
connectAttr "roofbox7_translateY.o" "roofbox7.ty";
connectAttr "roofbox7_translateX.o" "roofbox7.tx";
connectAttr "roofbox7_translateZ.o" "roofbox7.tz";
connectAttr "roofbox7_visibility.o" "roofbox7.v";
connectAttr "roofbox7_rotateX.o" "roofbox7.rx";
connectAttr "roofbox7_rotateY.o" "roofbox7.ry";
connectAttr "roofbox7_rotateZ.o" "roofbox7.rz";
connectAttr "roofbox7_scaleX.o" "roofbox7.sx";
connectAttr "roofbox7_scaleY.o" "roofbox7.sy";
connectAttr "roofbox7_scaleZ.o" "roofbox7.sz";
connectAttr "roofbox8_translateY.o" "roofbox8.ty";
connectAttr "roofbox8_translateX.o" "roofbox8.tx";
connectAttr "roofbox8_translateZ.o" "roofbox8.tz";
connectAttr "roofbox8_visibility.o" "roofbox8.v";
connectAttr "roofbox8_rotateX.o" "roofbox8.rx";
connectAttr "roofbox8_rotateY.o" "roofbox8.ry";
connectAttr "roofbox8_rotateZ.o" "roofbox8.rz";
connectAttr "roofbox8_scaleX.o" "roofbox8.sx";
connectAttr "roofbox8_scaleY.o" "roofbox8.sy";
connectAttr "roofbox8_scaleZ.o" "roofbox8.sz";
connectAttr "Antenna_translateX1.o" "Antenna1.tx";
connectAttr "Antenna_translateY1.o" "Antenna1.ty";
connectAttr "Antenna_translateZ1.o" "Antenna1.tz";
connectAttr "Antenna_visibility1.o" "Antenna1.v";
connectAttr "Antenna_rotateX1.o" "Antenna1.rx";
connectAttr "Antenna_rotateY1.o" "Antenna1.ry";
connectAttr "Antenna_rotateZ1.o" "Antenna1.rz";
connectAttr "Antenna_scaleX1.o" "Antenna1.sx";
connectAttr "Antenna_scaleY1.o" "Antenna1.sy";
connectAttr "Antenna_scaleZ1.o" "Antenna1.sz";
connectAttr "polyExtrudeFace186.out" "Antenna1Shape.i";
connectAttr "Antenna_translateX2.o" "Antenna2.tx";
connectAttr "Antenna_translateY2.o" "Antenna2.ty";
connectAttr "Antenna_translateZ2.o" "Antenna2.tz";
connectAttr "Antenna_visibility2.o" "Antenna2.v";
connectAttr "Antenna_rotateX2.o" "Antenna2.rx";
connectAttr "Antenna_rotateY2.o" "Antenna2.ry";
connectAttr "Antenna_rotateZ2.o" "Antenna2.rz";
connectAttr "Antenna_scaleX2.o" "Antenna2.sx";
connectAttr "Antenna_scaleY2.o" "Antenna2.sy";
connectAttr "Antenna_scaleZ2.o" "Antenna2.sz";
connectAttr "polyExtrudeFace192.out" "Antenna2Shape.i";
connectAttr "Antenna_translateX3.o" "Antenna3.tx";
connectAttr "Antenna_translateY3.o" "Antenna3.ty";
connectAttr "Antenna_translateZ3.o" "Antenna3.tz";
connectAttr "Antenna_visibility3.o" "Antenna3.v";
connectAttr "Antenna_rotateX3.o" "Antenna3.rx";
connectAttr "Antenna_rotateY3.o" "Antenna3.ry";
connectAttr "Antenna_rotateZ3.o" "Antenna3.rz";
connectAttr "Antenna_scaleX3.o" "Antenna3.sx";
connectAttr "Antenna_scaleY3.o" "Antenna3.sy";
connectAttr "Antenna_scaleZ3.o" "Antenna3.sz";
connectAttr "polyExtrudeFace198.out" "Antenna3Shape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert5SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert5SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong1SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__lambert5SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__phong2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert5SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert2SG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert5SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong1SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__lambert5SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong1SG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__phong2SG3.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "mia_physicalsky1.msg" ":mentalrayGlobals.sunAndSkyShader";
connectAttr "IBeamMat.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "IBeamMat.msg" "materialInfo1.m";
connectAttr "pasted__lambert2SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__pasted__lambert2SG.msg" "pasted__pasted__materialInfo1.sg";
connectAttr "pasted__pasted__lambert2SG1.msg" "pasted__pasted__materialInfo2.sg"
		;
connectAttr "pasted__pasted__lambert2SG2.msg" "pasted__pasted__materialInfo3.sg"
		;
connectAttr "pasted__pasted__lambert2SG3.msg" "pasted__pasted__materialInfo4.sg"
		;
connectAttr "pasted__pasted__lambert2SG4.msg" "pasted__pasted__materialInfo5.sg"
		;
connectAttr "Ground.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Ground.msg" "materialInfo2.m";
connectAttr "FloorTileMat.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "FloorTileMat.msg" "materialInfo3.m";
connectAttr "FacadeBase.oc" "lambert5SG.ss";
connectAttr "RoofShape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "FacadeBase.msg" "materialInfo4.m";
connectAttr "FacadeGlass.oc" "phong1SG.ss";
connectAttr "phong1SG.msg" "materialInfo5.sg";
connectAttr "FacadeGlass.msg" "materialInfo5.m";
connectAttr "FacadeMetal.oc" "phong2SG.ss";
connectAttr "phong2SG.msg" "materialInfo6.sg";
connectAttr "FacadeMetal.msg" "materialInfo6.m";
connectAttr "pasted__FacadeBase.oc" "pasted__lambert5SG.ss";
connectAttr "pasted__lambert5SG.msg" "pasted__materialInfo4.sg";
connectAttr "pasted__FacadeBase.msg" "pasted__materialInfo4.m";
connectAttr "pasted__FacadeGlass.oc" "pasted__phong1SG.ss";
connectAttr "pasted__phong1SG.msg" "pasted__materialInfo5.sg";
connectAttr "pasted__FacadeGlass.msg" "pasted__materialInfo5.m";
connectAttr "pasted__FacadeMetal.oc" "pasted__phong2SG.ss";
connectAttr "pasted__phong2SG.msg" "pasted__materialInfo6.sg";
connectAttr "pasted__FacadeMetal.msg" "pasted__materialInfo6.m";
connectAttr "mia_physicalsky1.S00" "mia_physicalsun1.S00";
connectAttr "mia_physicalsky1.S01" "mia_physicalsun1.S01";
connectAttr "mia_physicalsky1.S02" "mia_physicalsun1.S02";
connectAttr "mia_physicalsky1.S03" "mia_physicalsun1.S03";
connectAttr "mia_physicalsky1.S04" "mia_physicalsun1.S04";
connectAttr "mia_physicalsky1.S05" "mia_physicalsun1.S05";
connectAttr "mia_physicalsky1.S06" "mia_physicalsun1.S06";
connectAttr "mia_physicalsky1.S18" "mia_physicalsun1.S12";
connectAttr "sunDirection.msg" "mia_physicalsky1.S11";
connectAttr "mia_exposure_simple1.msg" "mia_physicalsky1.miSkyExposure";
connectAttr "pasted__FacadeBase1.oc" "pasted__lambert5SG1.ss";
connectAttr "pasted__lambert5SG1.msg" "pasted__materialInfo7.sg";
connectAttr "pasted__FacadeBase1.msg" "pasted__materialInfo7.m";
connectAttr "pasted__FacadeGlass1.oc" "pasted__phong1SG1.ss";
connectAttr "pasted__phong1SG1.msg" "pasted__materialInfo8.sg";
connectAttr "pasted__FacadeGlass1.msg" "pasted__materialInfo8.m";
connectAttr "pasted__FacadeMetal1.oc" "pasted__phong2SG1.ss";
connectAttr "pasted__phong2SG1.msg" "pasted__materialInfo9.sg";
connectAttr "pasted__FacadeMetal1.msg" "pasted__materialInfo9.m";
connectAttr "polyTweak7.out" "polyExtrudeFace20.ip";
connectAttr "RoofShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak7.ip";
connectAttr "polyCube8.out" "polyExtrudeFace19.ip";
connectAttr "RoofShape.wm" "polyExtrudeFace19.mp";
connectAttr "|ROOF|Antenna|polySurfaceShape1.o" "polyExtrudeFace21.ip";
connectAttr "AntennaShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace21.out" "polyExtrudeFace22.ip";
connectAttr "AntennaShape.wm" "polyExtrudeFace22.mp";
connectAttr "polyExtrudeFace22.out" "polyExtrudeFace23.ip";
connectAttr "AntennaShape.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace23.out" "polyExtrudeFace24.ip";
connectAttr "AntennaShape.wm" "polyExtrudeFace24.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace25.ip";
connectAttr "AntennaShape.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace26.ip";
connectAttr "AntennaShape.wm" "polyExtrudeFace26.mp";
connectAttr "RoofMetal.oc" "phong3SG.ss";
connectAttr "roofbox8Shape.iog" "phong3SG.dsm" -na;
connectAttr "roofbox7Shape.iog" "phong3SG.dsm" -na;
connectAttr "roofbox6Shape.iog" "phong3SG.dsm" -na;
connectAttr "roofbox4Shape.iog" "phong3SG.dsm" -na;
connectAttr "roofbox3Shape.iog" "phong3SG.dsm" -na;
connectAttr "roofbox2Shape.iog" "phong3SG.dsm" -na;
connectAttr "roofbox1Shape.iog" "phong3SG.dsm" -na;
connectAttr "AntennaShape.iog" "phong3SG.dsm" -na;
connectAttr "roofboxShape.iog" "phong3SG.dsm" -na;
connectAttr "Antenna1Shape.iog" "phong3SG.dsm" -na;
connectAttr "Antenna2Shape.iog" "phong3SG.dsm" -na;
connectAttr "Antenna3Shape.iog" "phong3SG.dsm" -na;
connectAttr "phong3SG.msg" "materialInfo7.sg";
connectAttr "RoofMetal.msg" "materialInfo7.m";
connectAttr "polyTweak58.out" "polyExtrudeFace186.ip";
connectAttr "Antenna1Shape.wm" "polyExtrudeFace186.mp";
connectAttr "polyExtrudeFace187.out" "polyTweak58.ip";
connectAttr "polyTweak59.out" "polyExtrudeFace187.ip";
connectAttr "Antenna1Shape.wm" "polyExtrudeFace187.mp";
connectAttr "polyExtrudeFace188.out" "polyTweak59.ip";
connectAttr "polyExtrudeFace189.out" "polyExtrudeFace188.ip";
connectAttr "Antenna1Shape.wm" "polyExtrudeFace188.mp";
connectAttr "polyExtrudeFace190.out" "polyExtrudeFace189.ip";
connectAttr "Antenna1Shape.wm" "polyExtrudeFace189.mp";
connectAttr "polyExtrudeFace191.out" "polyExtrudeFace190.ip";
connectAttr "Antenna1Shape.wm" "polyExtrudeFace190.mp";
connectAttr "|ROOF|Antenna1|polySurfaceShape1.o" "polyExtrudeFace191.ip";
connectAttr "Antenna1Shape.wm" "polyExtrudeFace191.mp";
connectAttr "polyTweak60.out" "polyExtrudeFace192.ip";
connectAttr "Antenna2Shape.wm" "polyExtrudeFace192.mp";
connectAttr "polyExtrudeFace193.out" "polyTweak60.ip";
connectAttr "polyTweak61.out" "polyExtrudeFace193.ip";
connectAttr "Antenna2Shape.wm" "polyExtrudeFace193.mp";
connectAttr "polyExtrudeFace194.out" "polyTweak61.ip";
connectAttr "polyExtrudeFace195.out" "polyExtrudeFace194.ip";
connectAttr "Antenna2Shape.wm" "polyExtrudeFace194.mp";
connectAttr "polyExtrudeFace196.out" "polyExtrudeFace195.ip";
connectAttr "Antenna2Shape.wm" "polyExtrudeFace195.mp";
connectAttr "polyExtrudeFace197.out" "polyExtrudeFace196.ip";
connectAttr "Antenna2Shape.wm" "polyExtrudeFace196.mp";
connectAttr "|ROOF|Antenna2|polySurfaceShape1.o" "polyExtrudeFace197.ip";
connectAttr "Antenna2Shape.wm" "polyExtrudeFace197.mp";
connectAttr "polyTweak62.out" "polyExtrudeFace198.ip";
connectAttr "Antenna3Shape.wm" "polyExtrudeFace198.mp";
connectAttr "polyExtrudeFace199.out" "polyTweak62.ip";
connectAttr "polyTweak63.out" "polyExtrudeFace199.ip";
connectAttr "Antenna3Shape.wm" "polyExtrudeFace199.mp";
connectAttr "polyExtrudeFace200.out" "polyTweak63.ip";
connectAttr "polyExtrudeFace201.out" "polyExtrudeFace200.ip";
connectAttr "Antenna3Shape.wm" "polyExtrudeFace200.mp";
connectAttr "polyExtrudeFace202.out" "polyExtrudeFace201.ip";
connectAttr "Antenna3Shape.wm" "polyExtrudeFace201.mp";
connectAttr "polyExtrudeFace203.out" "polyExtrudeFace202.ip";
connectAttr "Antenna3Shape.wm" "polyExtrudeFace202.mp";
connectAttr "|ROOF|Antenna3|polySurfaceShape1.o" "polyExtrudeFace203.ip";
connectAttr "Antenna3Shape.wm" "polyExtrudeFace203.mp";
connectAttr "pasted__lambert2SG1.msg" "pasted__materialInfo10.sg";
connectAttr "pasted__IBeamMat.msg" "pasted__materialInfo10.m";
connectAttr "pasted__IBeamMat.oc" "pasted__lambert2SG1.ss";
connectAttr "pasted__lambert2SG2.msg" "pasted__materialInfo11.sg";
connectAttr "pasted__IBeamMat1.msg" "pasted__materialInfo11.m";
connectAttr "pasted__IBeamMat1.oc" "pasted__lambert2SG2.ss";
connectAttr "pasted__lambert2SG3.msg" "pasted__materialInfo12.sg";
connectAttr "pasted__IBeamMat2.msg" "pasted__materialInfo12.m";
connectAttr "pasted__IBeamMat2.oc" "pasted__lambert2SG3.ss";
connectAttr "phong4.oc" "phong4SG.ss";
connectAttr "phong4SG.msg" "materialInfo8.sg";
connectAttr "phong4.msg" "materialInfo8.m";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "lambert6SG.msg" "materialInfo9.sg";
connectAttr "lambert6.msg" "materialInfo9.m";
connectAttr "pasted__lambert2SG4.msg" "pasted__materialInfo13.sg";
connectAttr "pasted__IBeamMat3.msg" "pasted__materialInfo13.m";
connectAttr "pasted__IBeamMat3.oc" "pasted__lambert2SG4.ss";
connectAttr "pasted__FacadeBase2.oc" "pasted__lambert5SG2.ss";
connectAttr "pasted__lambert5SG2.msg" "pasted__materialInfo14.sg";
connectAttr "pasted__FacadeBase2.msg" "pasted__materialInfo14.m";
connectAttr "pasted__FacadeGlass2.oc" "pasted__phong1SG2.ss";
connectAttr "pasted__phong1SG2.msg" "pasted__materialInfo15.sg";
connectAttr "pasted__FacadeGlass2.msg" "pasted__materialInfo15.m";
connectAttr "pasted__FacadeMetal2.oc" "pasted__phong2SG2.ss";
connectAttr "pasted__phong2SG2.msg" "pasted__materialInfo16.sg";
connectAttr "pasted__FacadeMetal2.msg" "pasted__materialInfo16.m";
connectAttr "pasted__mia_physicalsky1.S00" "pasted__mia_physicalsun1.S00";
connectAttr "pasted__mia_physicalsky1.S01" "pasted__mia_physicalsun1.S01";
connectAttr "pasted__mia_physicalsky1.S02" "pasted__mia_physicalsun1.S02";
connectAttr "pasted__mia_physicalsky1.S03" "pasted__mia_physicalsun1.S03";
connectAttr "pasted__mia_physicalsky1.S04" "pasted__mia_physicalsun1.S04";
connectAttr "pasted__mia_physicalsky1.S05" "pasted__mia_physicalsun1.S05";
connectAttr "pasted__mia_physicalsky1.S06" "pasted__mia_physicalsun1.S06";
connectAttr "pasted__mia_physicalsky1.S18" "pasted__mia_physicalsun1.S12";
connectAttr "pasted__mia_exposure_simple1.msg" "pasted__mia_physicalsky1.miSkyExposure"
		;
connectAttr "pasted__FacadeBase3.oc" "pasted__lambert5SG3.ss";
connectAttr "pasted__lambert5SG3.msg" "pasted__materialInfo17.sg";
connectAttr "pasted__FacadeBase3.msg" "pasted__materialInfo17.m";
connectAttr "pasted__FacadeGlass3.oc" "pasted__phong1SG3.ss";
connectAttr "pasted__phong1SG3.msg" "pasted__materialInfo18.sg";
connectAttr "pasted__FacadeGlass3.msg" "pasted__materialInfo18.m";
connectAttr "pasted__FacadeMetal3.oc" "pasted__phong2SG3.ss";
connectAttr "pasted__phong2SG3.msg" "pasted__materialInfo19.sg";
connectAttr "pasted__FacadeMetal3.msg" "pasted__materialInfo19.m";
connectAttr "pasted__mia_physicalsky2.S00" "pasted__mia_physicalsun2.S00";
connectAttr "pasted__mia_physicalsky2.S01" "pasted__mia_physicalsun2.S01";
connectAttr "pasted__mia_physicalsky2.S02" "pasted__mia_physicalsun2.S02";
connectAttr "pasted__mia_physicalsky2.S03" "pasted__mia_physicalsun2.S03";
connectAttr "pasted__mia_physicalsky2.S04" "pasted__mia_physicalsun2.S04";
connectAttr "pasted__mia_physicalsky2.S05" "pasted__mia_physicalsun2.S05";
connectAttr "pasted__mia_physicalsky2.S06" "pasted__mia_physicalsun2.S06";
connectAttr "pasted__mia_physicalsky2.S18" "pasted__mia_physicalsun2.S12";
connectAttr "pasted__mia_exposure_simple2.msg" "pasted__mia_physicalsky2.miSkyExposure"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG3.pa" ":renderPartition.st" -na;
connectAttr "pasted__pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "phong2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert5SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong1SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG1.pa" ":renderPartition.st" -na;
connectAttr "phong3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG3.pa" ":renderPartition.st" -na;
connectAttr "phong4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert2SG4.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert5SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong1SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG2.pa" ":renderPartition.st" -na;
connectAttr "pasted__lambert5SG3.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong1SG3.pa" ":renderPartition.st" -na;
connectAttr "pasted__phong2SG3.pa" ":renderPartition.st" -na;
connectAttr "IBeamMat.msg" ":defaultShaderList1.s" -na;
connectAttr "Ground.msg" ":defaultShaderList1.s" -na;
connectAttr "FloorTileMat.msg" ":defaultShaderList1.s" -na;
connectAttr "FacadeBase.msg" ":defaultShaderList1.s" -na;
connectAttr "FacadeGlass.msg" ":defaultShaderList1.s" -na;
connectAttr "FacadeMetal.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeBase.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeGlass.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeMetal.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeBase1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeGlass1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeMetal1.msg" ":defaultShaderList1.s" -na;
connectAttr "RoofMetal.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__IBeamMat.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__IBeamMat1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__IBeamMat2.msg" ":defaultShaderList1.s" -na;
connectAttr "phong4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__IBeamMat3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeBase2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeGlass2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeMetal2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeBase3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeGlass3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__FacadeMetal3.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_exposure_simple1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mia_physicalsun1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "mia_physicalsky1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__mia_exposure_simple1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "pasted__mia_physicalsun1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__mia_physicalsky1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__mia_exposure_simple2.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "pasted__mia_physicalsun2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__mia_physicalsky2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "sunShape.ltd" ":lightList1.l" -na;
connectAttr "sunDirection.iog" ":defaultLightSet.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"|sunDirection|sunShape\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Roof-18-finalV3.ma
