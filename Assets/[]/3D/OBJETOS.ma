//Maya ASCII 2022 scene
//Name: OBJETOS.ma
//Last modified: Fri, Aug 08, 2025 01:12:18 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "4.2.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "2F65CF09-45BB-E5D8-F6E0-938537A3836E";
createNode transform -s -n "persp";
	rename -uid "50EEA8CF-4E8A-AF10-07B0-C6A0C1D9EE09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.256060477382336 5.9320447571189714 25.754004927332439 ;
	setAttr ".r" -type "double3" -8.7383527293717727 338.59999999924349 -2.135045656831484e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "65DC3224-4C3E-A086-C706-BDA8ED080D7B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 21.156890440568738;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.6979198455810547 2.5853260159492493 2.1587719593535928 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "B159DBA8-498A-0597-0212-1EA0EF16233B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0E62C10C-4EB4-F420-74DC-91A220189910";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2F7ECD27-4FA3-F5D4-0851-2F848BB2CDF9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A5281EBD-4793-8232-C56C-72BC306F699C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "911362DD-4DD8-72BD-4B4A-0FA5267D18C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "546F5112-4089-D17F-2C38-8D9A83ACB6C1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Skull";
	rename -uid "4E829F9C-4D85-475B-279D-7DB91E4C1238";
	setAttr ".t" -type "double3" 5.7653744604037627 0.099533911708840517 -2.3228913539650793 ;
	setAttr ".s" -type "double3" 1.0878412803982418 1.0878412803982418 1.0878412803982418 ;
	setAttr ".rp" -type "double3" 0.024821043014526367 1.3125007152557373 0.36563682556152344 ;
	setAttr ".sp" -type "double3" 0.024821043014526367 1.3125007152557373 0.36563682556152344 ;
createNode mesh -n "SkullShape" -p "Skull";
	rename -uid "ED3B6647-49C5-4638-7D2D-AFB4549A0867";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 672 ".pt";
	setAttr ".pt[0]" -type "float3" -0.025052547 0.092248142 0.040675879 ;
	setAttr ".pt[2]" -type "float3" 0.0028242469 0.01278913 -0.0063117743 ;
	setAttr ".pt[3]" -type "float3" -0.0001552254 -0.00062841177 0.0065137148 ;
	setAttr ".pt[5]" -type "float3" -0.0021852013 -0.00030106306 0.0052336454 ;
	setAttr ".pt[6]" -type "float3" 0.0059432387 0.0055361986 -7.3075294e-05 ;
	setAttr ".pt[9]" -type "float3" 0.063398778 0.028517956 0.014748514 ;
	setAttr ".pt[11]" -type "float3" -0.063009202 0.1041404 0.11621195 ;
	setAttr ".pt[12]" -type "float3" -0.0067303181 0.013752103 0.026164412 ;
	setAttr ".pt[13]" -type "float3" -0.045519829 -0.018755436 0.08701998 ;
	setAttr ".pt[14]" -type "float3" -0.042956352 -0.034695387 0.057236135 ;
	setAttr ".pt[15]" -type "float3" -0.06633538 0.062179446 0.17481232 ;
	setAttr ".pt[16]" -type "float3" -0.0054484606 0.031668723 0.011187106 ;
	setAttr ".pt[17]" -type "float3" -0.028917789 0.097482741 0.016468078 ;
	setAttr ".pt[18]" -type "float3" -0.017801285 0.11217773 -0.024852067 ;
	setAttr ".pt[20]" -type "float3" 0.020139456 -0.028715611 0.036755025 ;
	setAttr ".pt[21]" -type "float3" 0.00064262748 -0.027266622 -0.01180625 ;
	setAttr ".pt[23]" -type "float3" -0.00055168197 0.015036106 -0.00012254715 ;
	setAttr ".pt[24]" -type "float3" -0.0065365359 0.014878988 -0.010484695 ;
	setAttr ".pt[25]" -type "float3" 0.0011134148 0.033353686 0.10085857 ;
	setAttr ".pt[29]" -type "float3" 0.00011664629 0.0045372248 -0.0039123297 ;
	setAttr ".pt[31]" -type "float3" -0.031767011 -0.054994702 0.0042541027 ;
	setAttr ".pt[32]" -type "float3" 0.0008033365 0.00048804283 0.012870789 ;
	setAttr ".pt[33]" -type "float3" 0.048186719 0.012599926 -0.016256571 ;
	setAttr ".pt[41]" -type "float3" -0.0015131533 0.014279962 -0.0075610876 ;
	setAttr ".pt[42]" -type "float3" -0.00085568428 -0.00079500675 0.0027421713 ;
	setAttr ".pt[43]" -type "float3" -0.0028513521 -0.0018264055 0.0017585754 ;
	setAttr ".pt[50]" -type "float3" -0.010681376 -0.024596453 0.0071012974 ;
	setAttr ".pt[56]" -type "float3" 0.00071114302 0.0018414259 0.00010740757 ;
	setAttr ".pt[57]" -type "float3" -0.0010870993 0.00092232227 -7.4863434e-05 ;
	setAttr ".pt[58]" -type "float3" -0.024543747 0.021768689 -0.03089273 ;
	setAttr ".pt[59]" -type "float3" 0.070783734 0.019711845 0.0071965456 ;
	setAttr ".pt[60]" -type "float3" 0.055844724 0.042475533 0.0071434975 ;
	setAttr ".pt[61]" -type "float3" 0.062017441 0.033399627 0.0098690987 ;
	setAttr ".pt[62]" -type "float3" 0.056280255 0.043316282 0.014826894 ;
	setAttr ".pt[63]" -type "float3" 0.056800365 0.062455192 0.017225206 ;
	setAttr ".pt[64]" -type "float3" 0.062823355 0.07489121 0.032624811 ;
	setAttr ".pt[65]" -type "float3" 0.029489338 0.067383811 0.027258515 ;
	setAttr ".pt[66]" -type "float3" 0.033199668 0.077611282 0.041004419 ;
	setAttr ".pt[67]" -type "float3" -0.011482894 0.098641157 0.04778441 ;
	setAttr ".pt[68]" -type "float3" -0.0097826123 0.1182996 0.0046342611 ;
	setAttr ".pt[69]" -type "float3" -0.0095493197 0.11348069 0.052321382 ;
	setAttr ".pt[70]" -type "float3" -0.016441166 0.1334621 0.022755839 ;
	setAttr ".pt[71]" -type "float3" -0.018591344 0.08766675 0.029879455 ;
	setAttr ".pt[72]" -type "float3" -0.033395052 0.10461289 0.050896883 ;
	setAttr ".pt[73]" -type "float3" -0.038060665 0.016230464 0.094625771 ;
	setAttr ".pt[74]" -type "float3" -0.055537462 0.072853863 0.10871914 ;
	setAttr ".pt[75]" -type "float3" -0.024392366 0.040690124 0.04475069 ;
	setAttr ".pt[76]" -type "float3" 0.070794463 0.0072123408 -0.0089181066 ;
	setAttr ".pt[77]" -type "float3" 0.052599072 0.016213 0.10688663 ;
	setAttr ".pt[78]" -type "float3" -0.014049441 -0.011346787 0.19751465 ;
	setAttr ".pt[79]" -type "float3" 0.057913482 0.016383827 0.2503109 ;
	setAttr ".pt[80]" -type "float3" 0.043755308 0.0090548992 0.29021129 ;
	setAttr ".pt[81]" -type "float3" -0.023242474 0.09524098 0.022553176 ;
	setAttr ".pt[82]" -type "float3" -0.047453284 0.090643644 0.011798382 ;
	setAttr ".pt[83]" -type "float3" -0.055305898 0.079746902 0.053693727 ;
	setAttr ".pt[84]" -type "float3" 0.091570377 0.050729543 0.1724669 ;
	setAttr ".pt[85]" -type "float3" 0.0035669208 0.06205672 0.056658953 ;
	setAttr ".pt[86]" -type "float3" 0.038256466 0.088632688 -0.0066556334 ;
	setAttr ".pt[87]" -type "float3" 0.1076659 0.093232825 0.028487168 ;
	setAttr ".pt[88]" -type "float3" 0.092876434 0.086423606 0.055501223 ;
	setAttr ".pt[89]" -type "float3" 0.050355196 0.085435301 0.025827765 ;
	setAttr ".pt[90]" -type "float3" 0.066359937 0.073048599 0.0091549158 ;
	setAttr ".pt[91]" -type "float3" 0.070979536 0.050851595 0.023820102 ;
	setAttr ".pt[92]" -type "float3" 0.047328621 0.084526524 -0.0065378547 ;
	setAttr ".pt[93]" -type "float3" 0.061432451 0.057910006 0.03893137 ;
	setAttr ".pt[94]" -type "float3" 0.0053405613 0.049448304 0.0051013827 ;
	setAttr ".pt[95]" -type "float3" -0.024275482 0.057832964 0.0073028207 ;
	setAttr ".pt[96]" -type "float3" -0.014406562 0.03825688 -0.0016598701 ;
	setAttr ".pt[97]" -type "float3" 0.015381709 0.029540079 0.0096325874 ;
	setAttr ".pt[98]" -type "float3" -0.019416034 0.0058983192 -0.02671802 ;
	setAttr ".pt[99]" -type "float3" 0.010223381 0.007453084 -0.023314834 ;
	setAttr ".pt[100]" -type "float3" 0.021189421 0.0047957003 -0.023768902 ;
	setAttr ".pt[101]" -type "float3" 0.039153069 0.0040841848 -0.0097714663 ;
	setAttr ".pt[102]" -type "float3" 0.010521114 0.0082189124 0.0054574013 ;
	setAttr ".pt[103]" -type "float3" 0.024795711 0.020260882 0.0097442865 ;
	setAttr ".pt[104]" -type "float3" 0.0039730668 0.012036115 0.013187528 ;
	setAttr ".pt[105]" -type "float3" 0.0027375221 0.026173532 0.017120063 ;
	setAttr ".pt[106]" -type "float3" 0.003708601 0.038941801 0.027096689 ;
	setAttr ".pt[107]" -type "float3" 0.0013310313 0.029263437 0.015656173 ;
	setAttr ".pt[108]" -type "float3" 0.0056449771 0.03025198 0.035012901 ;
	setAttr ".pt[109]" -type "float3" -0.0039377213 0.049957395 -0.035068452 ;
	setAttr ".pt[110]" -type "float3" 0.0027477741 -0.010290176 0.021218002 ;
	setAttr ".pt[111]" -type "float3" -0.004699409 0.084075212 0.011754662 ;
	setAttr ".pt[112]" -type "float3" -0.0045791268 -0.0019434094 -0.026616156 ;
	setAttr ".pt[113]" -type "float3" -0.0046546459 0.040394843 0.01829797 ;
	setAttr ".pt[114]" -type "float3" -0.035490155 0.080390215 0.028193116 ;
	setAttr ".pt[115]" -type "float3" -0.038840055 0.098290026 0.093373999 ;
	setAttr ".pt[116]" -type "float3" -0.0021049976 0.0035772324 0.090485141 ;
	setAttr ".pt[117]" -type "float3" 0.0068238974 -0.0036627054 0.014754433 ;
	setAttr ".pt[118]" -type "float3" 0.0084565878 -0.0031536818 0.030494839 ;
	setAttr ".pt[119]" -type "float3" 0.0011897087 -0.0041031837 0.00060126185 ;
	setAttr ".pt[120]" -type "float3" -0.0067886114 0.057644069 -0.0074975714 ;
	setAttr ".pt[121]" -type "float3" -0.0036309958 0.013000846 0.013344526 ;
	setAttr ".pt[122]" -type "float3" -0.050878644 0.10288852 0.041211009 ;
	setAttr ".pt[123]" -type "float3" -0.0096259713 0.059898376 -0.0058925152 ;
	setAttr ".pt[124]" -type "float3" -0.010678172 0.0028890967 0.02998209 ;
	setAttr ".pt[125]" -type "float3" 0.061366677 0.049696326 -0.036757231 ;
	setAttr ".pt[126]" -type "float3" 0.061065733 -0.0081934929 -0.010665894 ;
	setAttr ".pt[127]" -type "float3" 0.044429153 0.015773773 -0.012203813 ;
	setAttr ".pt[128]" -type "float3" 0.041339099 -0.013193965 0.010318995 ;
	setAttr ".pt[129]" -type "float3" 0.059763134 -0.025249541 0.039530993 ;
	setAttr ".pt[130]" -type "float3" -0.0056984872 -0.044546008 0.082409978 ;
	setAttr ".pt[131]" -type "float3" -0.0017679483 -0.021123648 0.025009513 ;
	setAttr ".pt[132]" -type "float3" -0.0092453808 0.0020935535 0.0067278147 ;
	setAttr ".pt[133]" -type "float3" -0.028057128 0.016790271 0.011262417 ;
	setAttr ".pt[134]" -type "float3" -0.084391788 0.064369202 0.053445101 ;
	setAttr ".pt[135]" -type "float3" -0.10733746 0.047172546 0.06952101 ;
	setAttr ".pt[136]" -type "float3" -0.034015074 0.039830685 0.062338352 ;
	setAttr ".pt[137]" -type "float3" -0.030421907 0.016859293 0.043361068 ;
	setAttr ".pt[138]" -type "float3" -0.017963214 0.0089221001 0.0221643 ;
	setAttr ".pt[139]" -type "float3" -0.0095721409 -0.0022697449 0.0037002116 ;
	setAttr ".pt[140]" -type "float3" -0.002998285 -0.00098609924 0.011424482 ;
	setAttr ".pt[141]" -type "float3" -0.00072082505 -0.00087714195 -0.02957803 ;
	setAttr ".pt[142]" -type "float3" -0.0033290684 -0.012242317 0.013243794 ;
	setAttr ".pt[143]" -type "float3" -0.0082811546 -0.061340809 0.049842715 ;
	setAttr ".pt[144]" -type "float3" -0.0021344051 -0.031109333 0.012699246 ;
	setAttr ".pt[145]" -type "float3" -0.0013725888 0.067503452 -0.027890563 ;
	setAttr ".pt[146]" -type "float3" -0.0024689436 0.065764546 -0.033197284 ;
	setAttr ".pt[147]" -type "float3" -0.016935542 -0.010062933 -0.0046749115 ;
	setAttr ".pt[148]" -type "float3" 0.0019954443 -0.016961575 -0.004134059 ;
	setAttr ".pt[149]" -type "float3" 0.0047525764 -0.0098891258 -0.028123975 ;
	setAttr ".pt[150]" -type "float3" -0.03182435 -0.007805109 -0.032076597 ;
	setAttr ".pt[151]" -type "float3" -0.021607816 -0.0041576624 -0.052155256 ;
	setAttr ".pt[152]" -type "float3" 0.0043532848 -0.035021186 -0.023500085 ;
	setAttr ".pt[153]" -type "float3" 0.00034052134 0.0043487549 -0.02131021 ;
	setAttr ".pt[172]" -type "float3" 1.1920929e-07 2.1100044e-05 1.0609627e-05 ;
	setAttr ".pt[173]" -type "float3" 8.3446503e-07 0.00021135807 0.0001065731 ;
	setAttr ".pt[174]" -type "float3" 0.0091041327 0.036596298 0.092522979 ;
	setAttr ".pt[175]" -type "float3" 0.011576772 0.020477176 0.037447244 ;
	setAttr ".pt[176]" -type "float3" -0.0040888786 0.020979166 -0.014226064 ;
	setAttr ".pt[178]" -type "float3" 0.00014257431 0.0078305006 0.027973577 ;
	setAttr ".pt[179]" -type "float3" -0.0018383265 0.0065768957 0.030077815 ;
	setAttr ".pt[180]" -type "float3" -0.017520428 0.0088176727 0.046398103 ;
	setAttr ".pt[181]" -type "float3" -0.023388445 -0.027660608 0.017733932 ;
	setAttr ".pt[182]" -type "float3" 0.052155375 0.0004042387 -0.022614837 ;
	setAttr ".pt[183]" -type "float3" -0.0055228472 0.037564993 0.018482745 ;
	setAttr ".pt[184]" -type "float3" 0.073754966 0.052076101 -0.018147528 ;
	setAttr ".pt[185]" -type "float3" 0.068347216 0.053259015 -9.6917152e-05 ;
	setAttr ".pt[186]" -type "float3" 0.078003675 0.0036156178 -0.023880839 ;
	setAttr ".pt[187]" -type "float3" 0.090367615 0.0046154261 -0.04334116 ;
	setAttr ".pt[188]" -type "float3" 0.0054970384 0.0039308071 -0.0030041933 ;
	setAttr ".pt[189]" -type "float3" -0.028543353 0.014107585 0.050443828 ;
	setAttr ".pt[190]" -type "float3" -0.032791615 0.030047178 0.062600136 ;
	setAttr ".pt[191]" -type "float3" -0.0053675175 0.011985779 0.03449446 ;
	setAttr ".pt[192]" -type "float3" 0.0057596564 0.0064401627 0.023187466 ;
	setAttr ".pt[193]" -type "float3" -0.0010830462 -0.0043003559 -0.020114601 ;
	setAttr ".pt[194]" -type "float3" -0.001372993 0.00088405609 0.062099814 ;
	setAttr ".pt[195]" -type "float3" -0.0087377578 -0.0038106441 -0.093943954 ;
	setAttr ".pt[196]" -type "float3" -0.021091536 -0.0040781498 -0.0072598457 ;
	setAttr ".pt[197]" -type "float3" -0.019609109 -0.084541559 0.06182158 ;
	setAttr ".pt[198]" -type "float3" -0.01088199 -0.03186059 0.013141513 ;
	setAttr ".pt[199]" -type "float3" -0.016990781 -0.044512272 0.021769047 ;
	setAttr ".pt[200]" -type "float3" 0.0051004887 0.040658116 -0.025724769 ;
	setAttr ".pt[201]" -type "float3" 0.02434504 0.036681175 -0.011002779 ;
	setAttr ".pt[202]" -type "float3" 0.020790339 -0.0022591352 0.0057020187 ;
	setAttr ".pt[203]" -type "float3" 0.0083950162 -0.00080084801 -0.0010766983 ;
	setAttr ".pt[204]" -type "float3" 0.009090662 -0.0014507771 -0.0067597628 ;
	setAttr ".pt[205]" -type "float3" 0.010130376 -0.011501312 -0.040705562 ;
	setAttr ".pt[206]" -type "float3" 0.0052200556 0.0023829937 0.0035710335 ;
	setAttr ".pt[207]" -type "float3" 0.0036721826 -0.0016524792 -0.0017431974 ;
	setAttr ".pt[208]" -type "float3" 0.0066098869 -0.0066407919 -0.0055710077 ;
	setAttr ".pt[209]" -type "float3" -0.0018288195 -0.014669538 -0.018238664 ;
	setAttr ".pt[210]" -type "float3" -0.011912212 6.0558319e-05 -0.0077985525 ;
	setAttr ".pt[211]" -type "float3" 0.005663462 -0.036699057 -0.0021548271 ;
	setAttr ".pt[212]" -type "float3" 0.0045997277 -0.03537941 0.0051745176 ;
	setAttr ".pt[213]" -type "float3" -0.0036283955 0.017202616 -0.013355255 ;
	setAttr ".pt[214]" -type "float3" 0.0023183748 -0.022055507 0.015587449 ;
	setAttr ".pt[217]" -type "float3" -0.0079197288 0.0042848587 7.2956085e-05 ;
	setAttr ".pt[218]" -type "float3" -0.012873784 -0.016185164 -0.0028078556 ;
	setAttr ".pt[222]" -type "float3" 0.00026684999 -0.00019603968 0.00076198578 ;
	setAttr ".pt[236]" -type "float3" 0.0037429929 -0.0019623041 -0.0061174631 ;
	setAttr ".pt[237]" -type "float3" 0.0030106306 -0.0014599562 -0.0025081635 ;
	setAttr ".pt[238]" -type "float3" 0.0032202005 -0.00045394897 0.00074613094 ;
	setAttr ".pt[250]" -type "float3" 0.00051790476 5.209446e-05 -0.00030648708 ;
	setAttr ".pt[251]" -type "float3" 0.00082975626 -7.2479248e-05 -0.00057983398 ;
	setAttr ".pt[252]" -type "float3" 0.0030821562 0.00027811527 -0.00013506413 ;
	setAttr ".pt[253]" -type "float3" 0.00077068806 0.0010591745 0.0015075207 ;
	setAttr ".pt[254]" -type "float3" -0.00064191222 0.0052253008 0.0087770224 ;
	setAttr ".pt[255]" -type "float3" -0.00023713708 -0.0031727552 0.0010495186 ;
	setAttr ".pt[258]" -type "float3" -0.0050310493 -0.038824797 0.022827148 ;
	setAttr ".pt[259]" -type "float3" -0.020385623 -0.10209966 0.060793519 ;
	setAttr ".pt[260]" -type "float3" -0.0034421086 -0.080676794 0.055370212 ;
	setAttr ".pt[261]" -type "float3" -0.020389169 -0.012210369 -0.0022081137 ;
	setAttr ".pt[262]" -type "float3" 0.00059300661 -0.0021290779 -0.0041334629 ;
	setAttr ".pt[263]" -type "float3" -0.0086671114 -0.0048921108 -0.10157615 ;
	setAttr ".pt[264]" -type "float3" 0.019704401 0.011253595 -0.094433427 ;
	setAttr ".pt[265]" -type "float3" 0.014998376 0.0051436424 0.086533666 ;
	setAttr ".pt[266]" -type "float3" 0.059660017 0.029117823 0.064597309 ;
	setAttr ".pt[267]" -type "float3" 0.013909936 -0.008464098 -0.065997571 ;
	setAttr ".pt[268]" -type "float3" 0.051114678 0.013253689 -0.086371779 ;
	setAttr ".pt[269]" -type "float3" 0.034227967 0.01136899 0.019483127 ;
	setAttr ".pt[270]" -type "float3" 0.05741322 0.026568651 0.0083308071 ;
	setAttr ".pt[271]" -type "float3" 0.029644072 0.0066506863 0.0039104819 ;
	setAttr ".pt[272]" -type "float3" 0.047179699 0.0056142807 -0.025549591 ;
	setAttr ".pt[273]" -type "float3" 0.065239012 0.05267334 0.047516167 ;
	setAttr ".pt[274]" -type "float3" 0.051752865 0.04680419 0.023172796 ;
	setAttr ".pt[275]" -type "float3" 0.07938081 0.019933105 -0.0077615976 ;
	setAttr ".pt[276]" -type "float3" -0.029475808 -0.014265776 0.062888265 ;
	setAttr ".pt[277]" -type "float3" -0.033936024 -0.066004038 0.01165776 ;
	setAttr ".pt[278]" -type "float3" -0.016808212 -0.028930902 -0.0043315887 ;
	setAttr ".pt[279]" -type "float3" -0.02841109 -0.04318738 0.037311655 ;
	setAttr ".pt[280]" -type "float3" -0.0045437217 -0.0044939518 0.020375386 ;
	setAttr ".pt[281]" -type "float3" -0.018319488 -0.031419754 -0.05389291 ;
	setAttr ".pt[282]" -type "float3" 0.0019563437 -0.0051195621 -0.072566539 ;
	setAttr ".pt[283]" -type "float3" 0.0014423728 -0.010266304 0.074162185 ;
	setAttr ".pt[284]" -type "float3" 0.019607365 0.01066637 0.063832879 ;
	setAttr ".pt[285]" -type "float3" -0.041135669 -0.039571047 -0.093317628 ;
	setAttr ".pt[286]" -type "float3" -0.023040473 -0.013645411 -0.092666507 ;
	setAttr ".pt[287]" -type "float3" -0.041985393 -0.049508333 -0.028458357 ;
	setAttr ".pt[288]" -type "float3" -0.034820557 -0.033596516 -0.019813538 ;
	setAttr ".pt[289]" -type "float3" -0.035576403 -0.087464094 0.014348745 ;
	setAttr ".pt[290]" -type "float3" -0.036026359 -0.090049982 0.029927969 ;
	setAttr ".pt[291]" -type "float3" -0.028610408 -0.039931297 -0.0087609291 ;
	setAttr ".pt[292]" -type "float3" -0.028353453 -0.09268713 0.0059375763 ;
	setAttr ".pt[293]" -type "float3" -0.018288612 -0.03152597 -0.014078498 ;
	setAttr ".pt[294]" -type "float3" 0.00091362 -0.026280284 -0.012323737 ;
	setAttr ".pt[299]" -type "float3" 0.00099307299 -0.0138973 -0.0054349899 ;
	setAttr ".pt[300]" -type "float3" 0.0047881603 -0.021359682 -0.0018695593 ;
	setAttr ".pt[301]" -type "float3" 0.0051628351 -0.050280094 0.0062725544 ;
	setAttr ".pt[302]" -type "float3" -0.0048505068 -0.040213346 -0.020862818 ;
	setAttr ".pt[303]" -type "float3" -0.038374484 -0.075032473 -0.02968204 ;
	setAttr ".pt[304]" -type "float3" -0.047968507 -0.079894066 -0.084989786 ;
	setAttr ".pt[305]" -type "float3" -0.017639041 -0.043262839 -0.059745669 ;
	setAttr ".pt[306]" -type "float3" -0.0093972683 -0.048906326 0.087777674 ;
	setAttr ".pt[307]" -type "float3" 0.021633983 -0.027707338 0.07678777 ;
	setAttr ".pt[308]" -type "float3" -0.033614874 -0.069907188 -0.022706777 ;
	setAttr ".pt[309]" -type "float3" -0.0039705038 -0.027650595 -0.016744137 ;
	setAttr ".pt[310]" -type "float3" -0.040977716 -0.079439402 0.051103845 ;
	setAttr ".pt[311]" -type "float3" -0.00096273422 -0.011378884 0.020362556 ;
	setAttr ".pt[312]" -type "float3" -0.040878773 -0.097833991 0.017013475 ;
	setAttr ".pt[313]" -type "float3" -0.00060486794 0.0099625587 0.046242177 ;
	setAttr ".pt[314]" -type "float3" -0.033957243 -0.037983894 0.073724121 ;
	setAttr ".pt[316]" -type "float3" -0.00704813 -0.020330906 -0.033015192 ;
	setAttr ".pt[317]" -type "float3" -0.0020247698 -0.013704658 -0.015256524 ;
	setAttr ".pt[322]" -type "float3" 0 7.390976e-06 3.7550926e-06 ;
	setAttr ".pt[324]" -type "float3" 0.00099515915 0.014665604 0.011198133 ;
	setAttr ".pt[326]" -type "float3" -0.0032260418 0.015455246 -0.0026973784 ;
	setAttr ".pt[327]" -type "float3" 0.006510973 -0.040009737 -0.0061745644 ;
	setAttr ".pt[333]" -type "float3" 0.0069891214 0.022852778 0.064027399 ;
	setAttr ".pt[334]" -type "float3" 0.00075745583 0.025759101 0.041789591 ;
	setAttr ".pt[335]" -type "float3" 0.0020308495 0.0085330009 0.034973562 ;
	setAttr ".pt[336]" -type "float3" -0.0031882524 0.01361984 0.047700644 ;
	setAttr ".pt[337]" -type "float3" 1.1920929e-07 2.2172928e-05 1.1205673e-05 ;
	setAttr ".pt[338]" -type "float3" 0.012760282 0.0068095326 0.024043322 ;
	setAttr ".pt[339]" -type "float3" 1.2040138e-05 0.0030938387 0.0015599728 ;
	setAttr ".pt[340]" -type "float3" 1.1920929e-06 0.00031775236 0.00016021729 ;
	setAttr ".pt[344]" -type "float3" -0.0019226074 -1.9073486e-06 -0.0042186975 ;
	setAttr ".pt[345]" -type "float3" -0.0035044551 0.0072585344 -0.0040118694 ;
	setAttr ".pt[346]" -type "float3" 0.010186672 0.0089634955 0.003538847 ;
	setAttr ".pt[347]" -type "float3" 0.0074417889 0.001668585 0.0019216537 ;
	setAttr ".pt[348]" -type "float3" -0.025919102 0.0036875755 -0.042327762 ;
	setAttr ".pt[349]" -type "float3" 0.014808834 0.0050533116 -0.020274282 ;
	setAttr ".pt[350]" -type "float3" 0.037169814 0.0055003464 -0.022598743 ;
	setAttr ".pt[351]" -type "float3" 0.012595415 5.4009259e-05 -0.015824556 ;
	setAttr ".pt[352]" -type "float3" 0.007891655 0.00020800531 -0.0058256388 ;
	setAttr ".pt[353]" -type "float3" 0.01080817 -0.00041049346 -0.0015002489 ;
	setAttr ".pt[354]" -type "float3" -0.00054097176 0.00068398099 -0.00092494488 ;
	setAttr ".pt[355]" -type "float3" 0.0013007522 0.0031475984 0.0022534132 ;
	setAttr ".pt[356]" -type "float3" -0.00074076653 0.0070780665 -0.00055336952 ;
	setAttr ".pt[357]" -type "float3" 0.0060138106 0.01273334 0.022660017 ;
	setAttr ".pt[358]" -type "float3" 0.0042170286 0.0013011694 0.014567375 ;
	setAttr ".pt[359]" -type "float3" 0.00010740757 0.0029598475 0.005343318 ;
	setAttr ".pt[360]" -type "float3" -0.0011377335 0.0037171841 0.005764842 ;
	setAttr ".pt[361]" -type "float3" -0.0053043365 0.013073087 0.0047975779 ;
	setAttr ".pt[362]" -type "float3" -0.0017940402 0.022216141 0.020075977 ;
	setAttr ".pt[363]" -type "float3" -0.020483971 0.041188419 -0.013795793 ;
	setAttr ".pt[364]" -type "float3" 0.0065772533 0.016931236 0.0048031807 ;
	setAttr ".pt[365]" -type "float3" -0.0026540756 0.032511234 0.057515591 ;
	setAttr ".pt[366]" -type "float3" -0.0017832518 0.0013470352 -0.00443995 ;
	setAttr ".pt[367]" -type "float3" -0.010423779 0.070992768 0.074419796 ;
	setAttr ".pt[368]" -type "float3" -0.0047719479 0.078687996 0.025186449 ;
	setAttr ".pt[369]" -type "float3" -6.8664551e-05 0.057166085 0.0017467737 ;
	setAttr ".pt[370]" -type "float3" 0.040620863 0.053931385 0.012126148 ;
	setAttr ".pt[371]" -type "float3" 0.037920654 0.035515875 0.011533678 ;
	setAttr ".pt[372]" -type "float3" 0.0515939 0.025461631 0.010007322 ;
	setAttr ".pt[373]" -type "float3" 0.040106654 0.010767456 0.0063523054 ;
	setAttr ".pt[374]" -type "float3" -0.053139344 0.077413544 0.01238656 ;
	setAttr ".pt[375]" -type "float3" -0.082156822 0.10290706 -0.024965465 ;
	setAttr ".pt[376]" -type "float3" -0.096451625 0.11903019 -0.020198673 ;
	setAttr ".pt[377]" -type "float3" -0.093452372 0.13096114 -0.024588481 ;
	setAttr ".pt[378]" -type "float3" -0.086477786 0.15520027 -0.13762143 ;
	setAttr ".pt[379]" -type "float3" -0.037170112 0.12761983 -0.055082429 ;
	setAttr ".pt[380]" -type "float3" -0.011559784 0.11370665 -0.019982899 ;
	setAttr ".pt[381]" -type "float3" 0.039406002 0.095121965 0.032640606 ;
	setAttr ".pt[382]" -type "float3" 0.013778508 0.10203978 0.0050041601 ;
	setAttr ".pt[383]" -type "float3" 0.00088661909 0.10772765 0.0062177181 ;
	setAttr ".pt[384]" -type "float3" 0.023836106 0.097790107 0.0070462227 ;
	setAttr ".pt[385]" -type "float3" -0.024395719 0.10904105 -0.0070593655 ;
	setAttr ".pt[386]" -type "float3" -0.011718154 0.093942784 -0.0074547529 ;
	setAttr ".pt[387]" -type "float3" -0.00034955144 0.069324017 0.018476605 ;
	setAttr ".pt[388]" -type "float3" -0.03119728 0.11898865 -0.011477515 ;
	setAttr ".pt[389]" -type "float3" 0.0039006919 0.0052073896 -0.013715982 ;
	setAttr ".pt[390]" -type "float3" -0.014561106 0.0081419051 -0.0039060116 ;
	setAttr ".pt[391]" -type "float3" -3.8638711e-05 -0.0022182465 0.0062105656 ;
	setAttr ".pt[392]" -type "float3" 0.00016990304 -0.00014621019 -0.0052794218 ;
	setAttr ".pt[394]" -type "float3" -0.0036408044 0.00027686357 0.022506714 ;
	setAttr ".pt[395]" -type "float3" 0.0022218153 0.003639698 0.010062814 ;
	setAttr ".pt[396]" -type "float3" -0.00068588369 0.0082427263 0.023707151 ;
	setAttr ".pt[397]" -type "float3" 0.05716902 0.14071262 0.111182 ;
	setAttr ".pt[398]" -type "float3" 0.050459623 -0.021181226 0.097568512 ;
	setAttr ".pt[399]" -type "float3" 0.0048315525 0.047460675 0.019383218 ;
	setAttr ".pt[400]" -type "float3" 0.010817289 0.022485137 -0.015218914 ;
	setAttr ".pt[401]" -type "float3" -0.0084466897 -0.064218163 -0.0038032532 ;
	setAttr ".pt[402]" -type "float3" -0.059600294 0.025843792 -0.04434967 ;
	setAttr ".pt[403]" -type "float3" 0.0082480907 -0.0095794201 0.0034456253 ;
	setAttr ".pt[404]" -type "float3" -0.0043340027 0.008990407 0.0020879507 ;
	setAttr ".pt[405]" -type "float3" -0.029661536 -0.018064082 -0.032040715 ;
	setAttr ".pt[406]" -type "float3" -0.035809159 -0.021993935 -0.012772679 ;
	setAttr ".pt[407]" -type "float3" -0.0038365126 0.010341287 -0.0030859709 ;
	setAttr ".pt[408]" -type "float3" -0.011851192 0.12800473 0.067738146 ;
	setAttr ".pt[409]" -type "float3" -0.0049127638 0.13208431 0.039716378 ;
	setAttr ".pt[410]" -type "float3" -0.0017884374 0.11083955 0.050888151 ;
	setAttr ".pt[411]" -type "float3" 0.048853755 -0.037079453 0.068172634 ;
	setAttr ".pt[412]" -type "float3" 0.036206007 0.03183341 0.069329798 ;
	setAttr ".pt[413]" -type "float3" 0.0085645914 0.020112991 0.035279363 ;
	setAttr ".pt[414]" -type "float3" 0.028700113 0.12341964 0.054955468 ;
	setAttr ".pt[415]" -type "float3" 0.066303968 0.09815675 0.1767495 ;
	setAttr ".pt[416]" -type "float3" 0.024593353 0.10910207 0.041949321 ;
	setAttr ".pt[417]" -type "float3" 0.00054383278 0.043906331 0.044002473 ;
	setAttr ".pt[418]" -type "float3" 0.005982399 0.052225232 -0.0026677847 ;
	setAttr ".pt[419]" -type "float3" 0.011818528 0.03353405 -0.0089997649 ;
	setAttr ".pt[420]" -type "float3" 0.03768 -0.010705233 -0.04321301 ;
	setAttr ".pt[421]" -type "float3" -0.0022255778 -0.031358361 -0.013311744 ;
	setAttr ".pt[422]" -type "float3" 0.013440192 0.015123367 -0.014181376 ;
	setAttr ".pt[425]" -type "float3" -0.0045763254 0.011166811 0.035326064 ;
	setAttr ".pt[426]" -type "float3" -0.0033377409 -0.020642519 -0.015531778 ;
	setAttr ".pt[427]" -type "float3" -0.0017170906 7.5697899e-05 -0.0031394958 ;
	setAttr ".pt[428]" -type "float3" -0.019973934 0.077384353 -0.034669638 ;
	setAttr ".pt[429]" -type "float3" -0.056254625 0.091158986 -0.029761553 ;
	setAttr ".pt[430]" -type "float3" -0.011759043 0.013411522 0.0065687895 ;
	setAttr ".pt[431]" -type "float3" -0.0023730993 0.035945773 -0.031721354 ;
	setAttr ".pt[432]" -type "float3" -0.0033384562 0.0016229153 0.0035685301 ;
	setAttr ".pt[433]" -type "float3" -0.0031776428 -0.019862175 0.014750004 ;
	setAttr ".pt[434]" -type "float3" 0.031447053 -0.038969874 -0.018976808 ;
	setAttr ".pt[435]" -type "float3" 0.00047378242 -0.00039249659 0.026633024 ;
	setAttr ".pt[436]" -type "float3" -0.001181066 -0.0012056231 0.025994182 ;
	setAttr ".pt[437]" -type "float3" -0.009611927 0.017100377 -0.024476886 ;
	setAttr ".pt[439]" -type "float3" 0.0067892671 0.003939867 -0.0054559708 ;
	setAttr ".pt[440]" -type "float3" 0.014404148 -0.0062160492 -0.0048365593 ;
	setAttr ".pt[441]" -type "float3" 0.043804586 0.035992652 -0.047186375 ;
	setAttr ".pt[442]" -type "float3" -0.047938801 0.0077046696 -0.015218616 ;
	setAttr ".pt[443]" -type "float3" -0.021309078 0.025647223 0.0029011965 ;
	setAttr ".pt[444]" -type "float3" -0.013011694 -0.0070162416 0.0061914921 ;
	setAttr ".pt[445]" -type "float3" 0.01770848 0.020994961 -0.0021390915 ;
	setAttr ".pt[446]" -type "float3" 0.0099109411 0.017473459 -0.0047271252 ;
	setAttr ".pt[447]" -type "float3" 0.0033704042 0.0099979639 -0.0063370466 ;
	setAttr ".pt[448]" -type "float3" -0.021721482 -0.036277771 -0.023859143 ;
	setAttr ".pt[450]" -type "float3" 0.0080022812 0.042076468 -0.019879937 ;
	setAttr ".pt[451]" -type "float3" 0.00059381127 0.041805267 -0.0050753355 ;
	setAttr ".pt[452]" -type "float3" -9.8571181e-05 0.0068386793 0.0044105053 ;
	setAttr ".pt[453]" -type "float3" -0.0020644963 0.0016675591 -0.0055434704 ;
	setAttr ".pt[454]" -type "float3" 0.0045410991 -0.002943337 0.0069024563 ;
	setAttr ".pt[455]" -type "float3" 0.021450177 -0.0083829761 0.0043768883 ;
	setAttr ".pt[456]" -type "float3" 0.010577559 -0.0056815743 0.00111413 ;
	setAttr ".pt[457]" -type "float3" 0.0042119324 -0.00036978722 -0.0021625757 ;
	setAttr ".pt[458]" -type "float3" 0.006807372 0.0057859421 -0.010350227 ;
	setAttr ".pt[459]" -type "float3" 0.019641876 -0.03689754 0.0076116323 ;
	setAttr ".pt[460]" -type "float3" -0.023780048 0.0087239742 -0.020120025 ;
	setAttr ".pt[461]" -type "float3" -0.018519878 0.004540801 -0.010803699 ;
	setAttr ".pt[462]" -type "float3" 0.028584838 -0.0042963028 0.00106287 ;
	setAttr ".pt[463]" -type "float3" 0.037944525 -0.0086992979 0.016810536 ;
	setAttr ".pt[464]" -type "float3" 0.01088351 0.0012456179 0.016616344 ;
	setAttr ".pt[465]" -type "float3" 0.010597348 0.0067373514 0.012556553 ;
	setAttr ".pt[466]" -type "float3" 0.0083035231 0.0077149868 0.015667319 ;
	setAttr ".pt[467]" -type "float3" 0.0041732192 0.010081291 0.014761686 ;
	setAttr ".pt[468]" -type "float3" 0.0039691925 0.00014317036 0.0014771223 ;
	setAttr ".pt[469]" -type "float3" -0.010954261 0.013141453 -0.04693532 ;
	setAttr ".pt[470]" -type "float3" -0.043710113 0.046121515 0.0038377643 ;
	setAttr ".pt[471]" -type "float3" -0.031776071 0.044442862 -0.0057780743 ;
	setAttr ".pt[472]" -type "float3" -0.081704736 0.035566457 -0.0038118362 ;
	setAttr ".pt[473]" -type "float3" -0.070785463 0.050542213 -0.0022979379 ;
	setAttr ".pt[474]" -type "float3" -0.085865796 0.07372234 0.015191734 ;
	setAttr ".pt[475]" -type "float3" -0.16445428 0.086901665 -0.034709215 ;
	setAttr ".pt[476]" -type "float3" -0.078591347 0.10495685 -0.0019127131 ;
	setAttr ".pt[477]" -type "float3" -0.10434234 0.032086004 -0.015958548 ;
	setAttr ".pt[478]" -type "float3" -0.14805979 0.112424 0.016467899 ;
	setAttr ".pt[479]" -type "float3" -0.17119795 0.047341291 0.01873374 ;
	setAttr ".pt[480]" -type "float3" -0.050420821 0.068979494 -0.04251349 ;
	setAttr ".pt[481]" -type "float3" -0.042258024 0.099623904 0.00060504675 ;
	setAttr ".pt[482]" -type "float3" -0.051071584 0.12183408 0.03974624 ;
	setAttr ".pt[483]" -type "float3" 0.0053398609 0.14673185 0.049889393 ;
	setAttr ".pt[484]" -type "float3" -0.0049906969 0.1748623 -0.035549045 ;
	setAttr ".pt[485]" -type "float3" -0.077336669 0.14369172 -0.061251327 ;
	setAttr ".pt[486]" -type "float3" 0.01074028 0.18268082 0.0061699674 ;
	setAttr ".pt[487]" -type "float3" 0.015473723 0.12087089 0.0279302 ;
	setAttr ".pt[488]" -type "float3" 0.027735829 0.10492682 0.033841312 ;
	setAttr ".pt[489]" -type "float3" 0.010597587 0.051069319 0.020185202 ;
	setAttr ".pt[490]" -type "float3" 0.033487201 0.039733887 0.086469024 ;
	setAttr ".pt[491]" -type "float3" 0.052368045 0.10191846 0.1024088 ;
	setAttr ".pt[492]" -type "float3" 0.019300222 0.07548672 0.041327953 ;
	setAttr ".pt[493]" -type "float3" -0.065912068 0.044351757 -0.0047340393 ;
	setAttr ".pt[494]" -type "float3" -0.042249322 0.016197085 0.037498951 ;
	setAttr ".pt[495]" -type "float3" -0.029351145 0.058250278 0.10656476 ;
	setAttr ".pt[496]" -type "float3" -0.03814283 0.015386164 0.15309185 ;
	setAttr ".pt[497]" -type "float3" -0.03730841 0.053776979 0.2187067 ;
	setAttr ".pt[498]" -type "float3" -0.10112318 0.031483352 0.23866853 ;
	setAttr ".pt[499]" -type "float3" -0.022576123 0.1244458 0.031686962 ;
	setAttr ".pt[500]" -type "float3" -0.063373834 0.11081967 0.014306843 ;
	setAttr ".pt[501]" -type "float3" -0.051161706 0.072786361 0.21597964 ;
	setAttr ".pt[502]" -type "float3" -0.10595226 0.099370658 0.17926094 ;
	setAttr ".pt[503]" -type "float3" -0.15361488 0.13508607 0.063570492 ;
	setAttr ".pt[504]" -type "float3" -0.18366623 0.15051159 -0.0053378493 ;
	setAttr ".pt[505]" -type "float3" -0.059102237 0.14534895 0.02322939 ;
	setAttr ".pt[506]" -type "float3" -0.070180476 0.12842993 0.013250738 ;
	setAttr ".pt[507]" -type "float3" -0.038410604 0.11092757 -0.00037646294 ;
	setAttr ".pt[508]" -type "float3" -0.039877236 0.082952388 0.017000139 ;
	setAttr ".pt[509]" -type "float3" -0.041178226 0.060840093 0.010424316 ;
	setAttr ".pt[510]" -type "float3" -0.025125295 0.082434513 0.016366839 ;
	setAttr ".pt[511]" -type "float3" -0.027410269 0.062636063 0.0092900395 ;
	setAttr ".pt[512]" -type "float3" -0.013942137 0.0036011674 -0.030104995 ;
	setAttr ".pt[513]" -type "float3" -0.038088411 0.0099468604 -0.034811139 ;
	setAttr ".pt[514]" -type "float3" -0.034166589 0.011075795 -0.027944207 ;
	setAttr ".pt[515]" -type "float3" -0.038446695 0.008114703 -0.027784705 ;
	setAttr ".pt[516]" -type "float3" -0.055434346 0.014788002 -0.032251954 ;
	setAttr ".pt[517]" -type "float3" -0.039653629 0.0087953284 -0.033074617 ;
	setAttr ".pt[518]" -type "float3" -0.095705986 0.018330809 -0.0089507103 ;
	setAttr ".pt[519]" -type "float3" -0.049671292 -0.0010673497 0.029907942 ;
	setAttr ".pt[520]" -type "float3" -0.028785467 0.015166495 -0.0094532967 ;
	setAttr ".pt[521]" -type "float3" -0.010854304 0.046147168 0.0019885302 ;
	setAttr ".pt[522]" -type "float3" -0.025072277 0.026586041 0.04524982 ;
	setAttr ".pt[523]" -type "float3" -0.016013265 0.060152948 0.02757293 ;
	setAttr ".pt[524]" -type "float3" -0.003878355 0.024083048 0.0027360916 ;
	setAttr ".pt[525]" -type "float3" -0.0077474117 0.028948992 0.01522404 ;
	setAttr ".pt[526]" -type "float3" -0.0017834902 0.058315158 -0.032390237 ;
	setAttr ".pt[527]" -type "float3" -0.0061833858 0.089021295 -0.03243047 ;
	setAttr ".pt[528]" -type "float3" -0.0012820959 0.026406288 -0.0038509965 ;
	setAttr ".pt[529]" -type "float3" 0.00037622452 0.06129688 0.016553581 ;
	setAttr ".pt[530]" -type "float3" -0.0052566528 -0.0049277246 0.010014057 ;
	setAttr ".pt[531]" -type "float3" 0.0034416914 0.030447364 0.013883114 ;
	setAttr ".pt[532]" -type "float3" 0.0078222752 0.059700251 0.035867751 ;
	setAttr ".pt[533]" -type "float3" 0.016396642 0.08954823 0.062364191 ;
	setAttr ".pt[534]" -type "float3" 0.0060210228 0.10123855 0.055988431 ;
	setAttr ".pt[535]" -type "float3" -0.0005890131 0.033719122 0.034303874 ;
	setAttr ".pt[536]" -type "float3" -0.0012031794 0.022028804 0.011513889 ;
	setAttr ".pt[537]" -type "float3" -0.0089173317 0.020033538 0.030257076 ;
	setAttr ".pt[538]" -type "float3" 0.0052583218 0.032993793 -0.010516822 ;
	setAttr ".pt[539]" -type "float3" -0.0010957718 0.023049593 0.017059058 ;
	setAttr ".pt[540]" -type "float3" 0.0028053522 0.02423203 0.011208773 ;
	setAttr ".pt[541]" -type "float3" 0.01517272 0.08975172 -0.0084641278 ;
	setAttr ".pt[542]" -type "float3" 0.029573679 0.023803115 0.052021146 ;
	setAttr ".pt[543]" -type "float3" 0.044814229 0.11360735 0.036020219 ;
	setAttr ".pt[544]" -type "float3" 0.010216594 0.054916739 0.0036661029 ;
	setAttr ".pt[545]" -type "float3" 0.0087952614 0.038172662 0.029086232 ;
	setAttr ".pt[546]" -type "float3" -0.035671294 0.033964396 -0.01838398 ;
	setAttr ".pt[547]" -type "float3" -0.039894402 0.024619281 -0.00077366829 ;
	setAttr ".pt[548]" -type "float3" -0.037255704 0.0093026161 0.0085210204 ;
	setAttr ".pt[549]" -type "float3" -0.02386938 -0.0084344745 0.018760085 ;
	setAttr ".pt[550]" -type "float3" -0.026571363 -0.019080579 0.063473046 ;
	setAttr ".pt[551]" -type "float3" 0.0052377284 0.080768943 -0.041365147 ;
	setAttr ".pt[552]" -type "float3" 0.020031601 -0.010882974 -0.0058660507 ;
	setAttr ".pt[553]" -type "float3" -0.0074520707 -0.021903157 -0.0051816702 ;
	setAttr ".pt[554]" -type "float3" -0.015099347 -0.01558876 -0.042239666 ;
	setAttr ".pt[555]" -type "float3" -0.023873985 -0.018969417 -0.064374328 ;
	setAttr ".pt[556]" -type "float3" 0.022776484 -0.0062621832 -0.066064715 ;
	setAttr ".pt[557]" -type "float3" -0.0052497387 -0.039860606 -0.02764976 ;
	setAttr ".pt[558]" -type "float3" 0.00020673871 0.005610466 -0.024638414 ;
	setAttr ".pt[562]" -type "float3" 0.026023209 -0.0073094964 0.0056675673 ;
	setAttr ".pt[563]" -type "float3" 0.0035445094 0.031081975 -0.015640378 ;
	setAttr ".pt[564]" -type "float3" -0.0074794292 -0.00076204538 0.002194047 ;
	setAttr ".pt[565]" -type "float3" -0.0067737699 -0.0055418611 0.0013637543 ;
	setAttr ".pt[566]" -type "float3" 0.0086328387 -0.011182725 -0.021718264 ;
	setAttr ".pt[567]" -type "float3" 0.03977108 0.012506485 -0.02577436 ;
	setAttr ".pt[568]" -type "float3" -0.012888193 0.0063927174 -0.0010057688 ;
	setAttr ".pt[569]" -type "float3" -0.030832648 -0.024157882 0.012250662 ;
	setAttr ".pt[570]" -type "float3" -0.012867093 -0.021832347 0.013211727 ;
	setAttr ".pt[571]" -type "float3" 0.0038238764 -0.002887845 -0.014584422 ;
	setAttr ".pt[572]" -type "float3" -0.00082480907 -0.021107435 -0.0015735626 ;
	setAttr ".pt[573]" -type "float3" -0.0038166046 -0.010198116 -0.016541362 ;
	setAttr ".pt[574]" -type "float3" -0.0018348694 -0.010091662 -0.011922836 ;
	setAttr ".pt[575]" -type "float3" -0.0076032877 -0.0019145012 -0.012306929 ;
	setAttr ".pt[576]" -type "float3" -0.0098420382 0.012572646 -0.0062571764 ;
	setAttr ".pt[577]" -type "float3" -0.0074207783 0.010872066 0.0029811859 ;
	setAttr ".pt[578]" -type "float3" -0.0025434494 0.0047183037 0.00054907799 ;
	setAttr ".pt[579]" -type "float3" -9.9301338e-05 0.006618917 0.024137914 ;
	setAttr ".pt[580]" -type "float3" 0.010909081 -0.0089030266 -0.035231709 ;
	setAttr ".pt[581]" -type "float3" -0.0051026344 0.0097537041 0.018125653 ;
	setAttr ".pt[582]" -type "float3" -0.0060836077 0.019772172 0.040010393 ;
	setAttr ".pt[583]" -type "float3" 0.0027449131 0.014327884 0.0018565357 ;
	setAttr ".pt[584]" -type "float3" 0.0063455105 0.018901229 -0.0098104179 ;
	setAttr ".pt[585]" -type "float3" 0.0012139082 0.0096594095 0.033541411 ;
	setAttr ".pt[586]" -type "float3" 0.030822635 -0.031940937 0.074100912 ;
	setAttr ".pt[587]" -type "float3" 0.027163267 -0.015252829 0.055550098 ;
	setAttr ".pt[588]" -type "float3" 0.029271662 -0.031526685 0.024025559 ;
	setAttr ".pt[589]" -type "float3" -0.036892533 -0.0015134811 -0.016086459 ;
	setAttr ".pt[590]" -type "float3" -0.057017863 0.050891042 -0.012120426 ;
	setAttr ".pt[591]" -type "float3" -0.043728352 0.0086510181 -0.0051278472 ;
	setAttr ".pt[592]" -type "float3" -0.069866776 0.062055469 0.00056624413 ;
	setAttr ".pt[593]" -type "float3" -0.067400575 0.02754581 -0.020070553 ;
	setAttr ".pt[594]" -type "float3" -0.069178045 0.02322197 -0.0030322075 ;
	setAttr ".pt[595]" -type "float3" -0.095485061 0.064043999 0.018845916 ;
	setAttr ".pt[596]" -type "float3" -0.033817127 0.0051047802 -0.0018111467 ;
	setAttr ".pt[597]" -type "float3" -0.04211092 0.016521454 -0.011816561 ;
	setAttr ".pt[598]" -type "float3" -0.059184194 0.028414845 -0.028768957 ;
	setAttr ".pt[599]" -type "float3" 0.0027609468 0.026759982 0.0037713647 ;
	setAttr ".pt[600]" -type "float3" 0.011591196 0.042649865 0.027617455 ;
	setAttr ".pt[601]" -type "float3" -0.093805045 0.026854992 0.015424728 ;
	setAttr ".pt[602]" -type "float3" -0.051432908 0.031324148 0.039906204 ;
	setAttr ".pt[603]" -type "float3" -0.032158703 0.013558149 0.030002683 ;
	setAttr ".pt[604]" -type "float3" -0.017916739 0.0068209171 0.014389865 ;
	setAttr ".pt[605]" -type "float3" -0.0033274889 -8.3208084e-05 -0.0055803806 ;
	setAttr ".pt[606]" -type "float3" -0.00034087896 9.059906e-05 -0.00072109699 ;
	setAttr ".pt[607]" -type "float3" 0.0059798956 -0.001718998 -0.013980389 ;
	setAttr ".pt[608]" -type "float3" 0.010292113 -0.0071544647 0.0055726767 ;
	setAttr ".pt[609]" -type "float3" 0.01242885 -0.044142962 0.031350851 ;
	setAttr ".pt[610]" -type "float3" 0.014555126 -0.028267384 0.010384083 ;
	setAttr ".pt[611]" -type "float3" -0.012623608 0.065267086 -0.039792657 ;
	setAttr ".pt[612]" -type "float3" -0.05161351 -0.0024914742 0.013362885 ;
	setAttr ".pt[613]" -type "float3" -0.053448439 -0.0064263344 -0.01427412 ;
	setAttr ".pt[614]" -type "float3" -0.055169463 -0.010240078 -0.043747902 ;
	setAttr ".pt[615]" -type "float3" -0.0080182254 -0.0041991472 -0.0051245689 ;
	setAttr ".pt[616]" -type "float3" 0.012642354 -0.0011854172 -0.011273146 ;
	setAttr ".pt[617]" -type "float3" -0.0098059475 -0.0083711147 -0.0055731535 ;
	setAttr ".pt[618]" -type "float3" 0.0024276972 -0.017118812 -0.021401405 ;
	setAttr ".pt[619]" -type "float3" -0.0057892352 -0.037448406 -0.002584815 ;
	setAttr ".pt[620]" -type "float3" -0.0051334351 -0.039204597 0.0058689117 ;
	setAttr ".pt[621]" -type "float3" 0.0028669089 0.024599433 -0.0089696646 ;
	setAttr ".pt[622]" -type "float3" -0.0021211803 -0.018082023 0.014672279 ;
	setAttr ".pt[623]" -type "float3" 0.014057547 -0.018356085 -0.0031625032 ;
	setAttr ".pt[624]" -type "float3" 0.0038310289 -0.0025244951 -0.0024549961 ;
	setAttr ".pt[625]" -type "float3" 0.010143876 0.002184391 -0.012431741 ;
	setAttr ".pt[626]" -type "float3" 0.018185973 -0.005179584 -0.011878848 ;
	setAttr ".pt[627]" -type "float3" 0.0056062341 -0.0038542747 0.0044219494 ;
	setAttr ".pt[628]" -type "float3" 0.010619819 -0.0039970279 0.013000846 ;
	setAttr ".pt[629]" -type "float3" -0.012387276 0.0055159926 -0.01362288 ;
	setAttr ".pt[630]" -type "float3" -0.025203347 0.0020183325 -0.0069823265 ;
	setAttr ".pt[631]" -type "float3" -0.0043568015 0.004763782 -0.0058561563 ;
	setAttr ".pt[632]" -type "float3" 0.010901928 -0.00071454048 0.011884689 ;
	setAttr ".pt[633]" -type "float3" -0.007055819 -0.0051440001 -0.0080947876 ;
	setAttr ".pt[634]" -type "float3" -0.0048784614 -0.013317585 -0.0060210228 ;
	setAttr ".pt[635]" -type "float3" -0.027225196 -0.025422215 -0.031640649 ;
	setAttr ".pt[636]" -type "float3" -0.0021640658 -0.0013320446 -0.0035489798 ;
	setAttr ".pt[637]" -type "float3" -0.025063813 -0.01470685 -0.040600777 ;
	setAttr ".pt[638]" -type "float3" -0.027334094 -0.0098017454 -0.022335172 ;
	setAttr ".pt[639]" -type "float3" -0.031862378 -0.02298367 -0.02102077 ;
	setAttr ".pt[640]" -type "float3" -0.030090153 -0.012987614 -0.044559836 ;
	setAttr ".pt[641]" -type "float3" -0.029244184 -0.0087482929 -0.022447109 ;
	setAttr ".pt[642]" -type "float3" -0.034551144 -0.011224747 -0.00067782402 ;
	setAttr ".pt[643]" -type "float3" -0.040946722 -0.024948478 0.00087893009 ;
	setAttr ".pt[644]" -type "float3" -0.030238152 -0.00051021576 0.0059392452 ;
	setAttr ".pt[645]" -type "float3" -0.014618397 0.0052674413 -0.0056941509 ;
	setAttr ".pt[646]" -type "float3" -0.0040486455 0.00056886673 -0.0034655333 ;
	setAttr ".pt[647]" -type "float3" -0.010637581 0.0045802593 -0.0012323856 ;
	setAttr ".pt[649]" -type "float3" -0.0056718588 -0.0010361075 -0.0075831413 ;
	setAttr ".pt[650]" -type "float3" -0.0097382665 -0.0007532239 -0.0129776 ;
	setAttr ".pt[651]" -type "float3" -0.021450043 -0.001612246 -0.004513979 ;
	setAttr ".pt[652]" -type "float3" 0.0018507242 0.0072871447 -0.038967848 ;
	setAttr ".pt[653]" -type "float3" 0.027801424 0.0095894933 -0.027049184 ;
	setAttr ".pt[654]" -type "float3" 0.010920882 0.011869431 -0.022151828 ;
	setAttr ".pt[655]" -type "float3" -0.0068602562 0.002733469 -0.00080573559 ;
	setAttr ".pt[656]" -type "float3" -0.027904332 0.0068277121 0.0054701567 ;
	setAttr ".pt[657]" -type "float3" -0.011104226 0.00079703331 -0.005702734 ;
	setAttr ".pt[658]" -type "float3" -0.026489973 0.0026348829 3.9696693e-05 ;
	setAttr ".pt[659]" -type "float3" -0.0055937767 0.010995746 0.016220093 ;
	setAttr ".pt[660]" -type "float3" -0.0014548898 0.0062581301 0.012678623 ;
	setAttr ".pt[661]" -type "float3" -0.0045171082 0.0078943968 0.0077041388 ;
	setAttr ".pt[662]" -type "float3" -0.0025259852 -0.0065560341 0.0061087608 ;
	setAttr ".pt[663]" -type "float3" -0.0011622012 0.0048370361 0.0021210909 ;
	setAttr ".pt[664]" -type "float3" -0.0042590499 0.0018960238 -0.0035851002 ;
	setAttr ".pt[665]" -type "float3" 0.01599139 -0.034232616 0.01528275 ;
	setAttr ".pt[666]" -type "float3" 0.0071644783 -0.029922247 0.016809583 ;
	setAttr ".pt[667]" -type "float3" 0.012600064 -0.044164181 0.024266243 ;
	setAttr ".pt[668]" -type "float3" 0.0090954304 -0.0077648163 0.00082540512 ;
	setAttr ".pt[669]" -type "float3" 0.0063520074 -0.0048332214 -0.0057471991 ;
	setAttr ".pt[670]" -type "float3" -0.013141215 0.0067081451 -0.0047761798 ;
	setAttr ".pt[671]" -type "float3" -0.00028222799 -0.00041222572 -0.0083056688 ;
	setAttr ".pt[672]" -type "float3" -0.051265717 0.025130987 0.038394272 ;
	setAttr ".pt[673]" -type "float3" -0.016448915 0.0045185089 0.030281961 ;
	setAttr ".pt[674]" -type "float3" -0.046435118 0.01160264 -0.079109609 ;
	setAttr ".pt[675]" -type "float3" -0.016047835 -0.0045740604 -0.047674954 ;
	setAttr ".pt[676]" -type "float3" -0.049581349 0.022482634 0.007237345 ;
	setAttr ".pt[677]" -type "float3" -0.023332894 0.0049769878 0.0023527816 ;
	setAttr ".pt[678]" -type "float3" -0.028322697 -0.0011680126 -0.02187106 ;
	setAttr ".pt[679]" -type "float3" -0.024970949 0.0088000298 0.0071220398 ;
	setAttr ".pt[680]" -type "float3" -0.029000938 0.035176516 0.024307847 ;
	setAttr ".pt[681]" -type "float3" -0.031769753 0.030419111 0.028720021 ;
	setAttr ".pt[682]" -type "float3" 0.019724488 0.004445076 0.044928789 ;
	setAttr ".pt[683]" -type "float3" 0.014550269 -0.025144577 -0.0051020682 ;
	setAttr ".pt[684]" -type "float3" 0.024433494 -0.046209812 0.0086589307 ;
	setAttr ".pt[685]" -type "float3" 0.0034715533 -0.0030357838 0.023695221 ;
	setAttr ".pt[686]" -type "float3" 0.018068194 -0.025974751 0.030263569 ;
	setAttr ".pt[687]" -type "float3" -0.005628109 -0.0031664371 -0.071139395 ;
	setAttr ".pt[688]" -type "float3" 0.010676742 -0.020413399 -0.059011728 ;
	setAttr ".pt[689]" -type "float3" -0.021060407 0.01247263 0.041325092 ;
	setAttr ".pt[690]" -type "float3" -0.0042614937 -0.0017066002 0.045238256 ;
	setAttr ".pt[691]" -type "float3" 0.0044090748 -0.0023348331 -0.028611064 ;
	setAttr ".pt[692]" -type "float3" 0.027230382 -0.023556948 -0.072673202 ;
	setAttr ".pt[693]" -type "float3" 0.031795859 -0.03586483 -0.02197814 ;
	setAttr ".pt[694]" -type "float3" 0.016900122 -0.016100883 -0.0071138144 ;
	setAttr ".pt[695]" -type "float3" 0.026311517 -0.060278177 0.018244028 ;
	setAttr ".pt[696]" -type "float3" 0.030127645 -0.075822592 0.013022661 ;
	setAttr ".pt[697]" -type "float3" 0.026549757 -0.035471678 -0.0042618513 ;
	setAttr ".pt[698]" -type "float3" 0.026262701 -0.05281949 -0.040092707 ;
	setAttr ".pt[699]" -type "float3" -0.0041208267 -0.047236681 -0.0308218 ;
	setAttr ".pt[700]" -type "float3" -0.0079165697 -0.01170373 -0.034509897 ;
	setAttr ".pt[701]" -type "float3" 0.0022922754 0.0098656416 -0.046884656 ;
	setAttr ".pt[702]" -type "float3" -0.0030531883 -0.010208845 -0.0085560083 ;
	setAttr ".pt[703]" -type "float3" -0.0033024549 -0.033441782 -0.015412569 ;
	setAttr ".pt[704]" -type "float3" -0.0041263103 -0.025149465 -0.010255694 ;
	setAttr ".pt[705]" -type "float3" -0.0052863359 -0.058805346 -0.0045199394 ;
	setAttr ".pt[706]" -type "float3" 0.0050047636 -0.039339781 -0.02622056 ;
	setAttr ".pt[707]" -type "float3" 0.027475715 -0.092861652 0.002011776 ;
	setAttr ".pt[708]" -type "float3" 0.031528711 -0.062342405 -0.024474859 ;
	setAttr ".pt[709]" -type "float3" 0.020035505 -0.036253452 -0.06720978 ;
	setAttr ".pt[710]" -type "float3" 0.036839604 -0.057612658 -0.076887846 ;
	setAttr ".pt[711]" -type "float3" -0.013743639 -0.015671134 0.048972726 ;
	setAttr ".pt[712]" -type "float3" 0.0034373999 -0.028036594 0.059380233 ;
	setAttr ".pt[713]" -type "float3" 0.0027496815 -0.021586657 -0.018646181 ;
	setAttr ".pt[714]" -type "float3" 0.021522999 -0.047053337 -0.035001755 ;
	setAttr ".pt[715]" -type "float3" -0.00089633465 -0.0047104359 0.041327432 ;
	setAttr ".pt[716]" -type "float3" 0.028423905 -0.053020716 0.048247531 ;
	setAttr ".pt[717]" -type "float3" 0.0029375553 -0.02680099 -0.0023920499 ;
	setAttr ".pt[718]" -type "float3" 0.032828093 -0.078211784 0.018585607 ;
	setAttr ".pt[719]" -type "float3" -0.00079119205 0.001789093 -0.0070577301 ;
	setAttr ".pt[720]" -type "float3" -0.0019286871 0.0028961897 0.0077898204 ;
	setAttr ".pt[721]" -type "float3" 0.0016417503 -0.010910749 -0.013640165 ;
	setAttr ".pt[722]" -type "float3" -0.0067199469 -0.0027616024 0.016673744 ;
	setAttr ".pt[723]" -type "float3" 0.01147449 -0.0091081858 -0.037376106 ;
	setAttr ".pt[724]" -type "float3" 0.0040467978 -0.010464787 -0.018868983 ;
	setAttr ".pt[725]" -type "float3" 0.0034199953 0.0037670135 -0.0050617456 ;
	setAttr ".pt[726]" -type "float3" 0.00044310093 -0.0015099049 -0.0021055937 ;
	setAttr ".pt[727]" -type "float3" -0.0042196512 0.011755705 -0.001504302 ;
	setAttr ".pt[728]" -type "float3" 0.0013884306 0.016752124 -0.0024770498 ;
	setAttr ".pt[729]" -type "float3" 0.011176348 0.0012125969 -0.020807028 ;
	setAttr ".pt[730]" -type "float3" 0.012144089 0.012114406 -0.018020332 ;
	setAttr ".pt[731]" -type "float3" 0.015401721 0.023370743 -0.024869859 ;
	setAttr ".pt[732]" -type "float3" 0.01142931 0.024324894 -0.008495152 ;
	setAttr ".pt[733]" -type "float3" 0.0073197484 0.016781569 -0.0030533671 ;
	setAttr ".pt[734]" -type "float3" 0.0092014074 0.014624357 -0.012094021 ;
	setAttr ".pt[735]" -type "float3" -0.0051470995 0.012801528 0.033590674 ;
	setAttr ".pt[736]" -type "float3" -0.0036984682 0.011366367 0.033168375 ;
	setAttr ".pt[737]" -type "float3" -0.006477356 -0.010234296 -0.0052241087 ;
	setAttr ".pt[738]" -type "float3" -0.00059604645 0.0029135346 0.031799495 ;
	setAttr ".pt[739]" -type "float3" -0.007776022 -0.0030725002 0.0097621083 ;
	setAttr ".pt[740]" -type "float3" 0.0032199621 0.0041565299 -0.032217026 ;
	setAttr ".pt[741]" -type "float3" 0.0076928735 -0.023836851 -0.052275062 ;
	setAttr ".pt[742]" -type "float3" 0.049689412 0.01889044 -0.06312573 ;
	setAttr ".pt[743]" -type "float3" 0.021616518 -0.0040994585 -0.047402024 ;
	setAttr ".pt[744]" -type "float3" 0.019134223 0.015671253 -0.047695756 ;
	setAttr ".pt[745]" -type "float3" 0.0050508976 0.025853738 -0.0099284649 ;
	setAttr ".pt[746]" -type "float3" 0.013092339 0.029805198 -0.015062332 ;
	setAttr ".pt[747]" -type "float3" -0.052738994 0.047414765 0.018095374 ;
	setAttr ".pt[748]" -type "float3" 0.0053369999 0.0063995011 -0.0090399981 ;
	setAttr ".pt[749]" -type "float3" -0.022420537 0.037930608 -0.030883908 ;
	setAttr ".pt[750]" -type "float3" -0.027450621 0.0086314324 0.010783076 ;
	setAttr ".pt[751]" -type "float3" -0.022690311 0.0087650567 -0.031088471 ;
	setAttr ".pt[752]" -type "float3" -0.02699095 0.001686126 -0.028221726 ;
	setAttr ".pt[753]" -type "float3" -0.026651561 0.0012457147 -0.015278459 ;
	setAttr ".pt[754]" -type "float3" -0.028637409 0.00088348985 -0.022804737 ;
	setAttr ".pt[755]" -type "float3" -8.9466572e-05 0.017161012 -0.0025911331 ;
	setAttr ".pt[756]" -type "float3" -0.021250725 0.01491785 0.055299878 ;
	setAttr ".pt[757]" -type "float3" -0.01369828 -0.019339055 0.032341719 ;
	setAttr ".pt[758]" -type "float3" -0.0036492944 -0.013452798 -0.0014481544 ;
	setAttr ".pt[759]" -type "float3" 0.0041136742 0.0037289858 -0.0039653778 ;
	setAttr ".pt[760]" -type "float3" -0.0013803244 0.0097768903 0.014469445 ;
	setAttr ".pt[761]" -type "float3" -0.0003143549 0.013213217 0.02231282 ;
	setAttr ".pt[762]" -type "float3" 0.0069741607 0.0033199787 0.027877688 ;
	setAttr ".pt[763]" -type "float3" 0.0030986071 0.16201386 0.059997581 ;
	setAttr ".pt[764]" -type "float3" -0.001185894 0.11226386 -0.006362021 ;
	setAttr ".pt[765]" -type "float3" -0.0025018454 0.12314013 -0.00045388937 ;
	setAttr ".pt[766]" -type "float3" -0.049273252 0.030853286 0.024625659 ;
	setAttr ".pt[767]" -type "float3" -0.018670335 0.15605441 -0.075345747 ;
	setAttr ".pt[768]" -type "float3" -0.022585928 0.14995523 -0.0090548247 ;
	setAttr ".pt[769]" -type "float3" -0.0094872117 0.15420476 -0.024838835 ;
	setAttr ".pt[770]" -type "float3" -0.053706467 0.15383556 -0.0084947087 ;
	setAttr ".pt[771]" -type "float3" -0.028588951 0.13249941 0.0012457669 ;
	setAttr ".pt[772]" -type "float3" -0.025789857 0.10873698 -0.01123333 ;
	setAttr ".pt[773]" -type "float3" -0.019280329 0.12820525 -0.015279382 ;
	setAttr ".pt[774]" -type "float3" -0.020852491 0.14256001 -0.02125141 ;
	setAttr ".pt[775]" -type "float3" -0.0026067495 -0.0081891418 -0.040344238 ;
	setAttr ".pt[776]" -type "float3" 0.00039614737 0.00022614002 -0.0071320534 ;
	setAttr ".pt[779]" -type "float3" -0.0017887503 -0.0058659911 0.013530493 ;
	setAttr ".pt[780]" -type "float3" -0.0027273297 0.0066643357 0.014091134 ;
	setAttr -s 781 ".vt";
	setAttr ".vt[0:165]"  -0.96706533 0.47788608 -0.21677476 -1.066732407 1.42361522 1.28479934
		 -0.91769314 1.56831384 1.6324265 -0.1811893 0.6111393 1.64064431 -0.30057055 0.62556571 1.83012915
		 0.028350949 0.54935741 1.41632628 -0.36161137 0.41905779 1.78547454 -0.56934035 0.86079168 1.43804312
		 -0.66402745 1.17870545 1.17354012 -0.4032079 -0.044773459 0.94249249 -1.099435091 0.78423363 1.3907752
		 -0.83168828 0.33925223 -0.46848911 -1.14337039 1.51863933 -0.52636814 -1.039020658 1.72233868 -0.61136967
		 -0.98208702 1.78898859 -0.6655128 -0.88437772 0.4638387 -0.43549725 -1.09220171 0.81280673 -0.26247168
		 -1.0014218092 0.58378482 -0.22584814 -1.12755024 0.92366898 -0.30614078 -1.024423599 1.56508863 0.88015366
		 -1.15576029 1.75732541 0.64345407 -0.11910534 1.45009243 1.79481244 -0.14723492 0.92070711 1.83337855
		 0.025683403 1.15834653 1.83460593 -0.0684582 1.14963794 1.815341 -1.099837065 0.87782091 0.53155422
		 -0.99416572 1.33954227 1.15147853 -1.094698429 1.29223466 1.27467918 -1.010053158 1.39267814 1.57438111
		 -0.96960557 1.620116 1.53189158 -1.046222091 1.41798437 1.51759338 -0.77205902 2.031903982 1.45451164
		 -0.12465215 0.68786216 1.60203862 -0.30757415 -0.06177938 1.20593977 -0.20522141 0.77108163 1.85866976
		 -0.16940236 0.71627843 1.86815071 -0.9061892 0.55596328 1.44039774 -0.53777653 0.39512706 1.67752123
		 -0.63977772 0.51013285 1.68604946 -1.035920382 0.91412961 1.54894185 -1.07092607 0.88988078 1.47854567
		 -0.093870163 1.1242882 1.62749076 -0.14099002 0.93140519 1.53107691 -0.18705857 0.93619293 1.4850893
		 -0.25493574 0.96099246 1.41661835 -0.32893205 0.89789736 1.44700241 -0.20742488 0.87417841 1.68169618
		 -0.20123804 1.030805588 1.38026929 -0.15226555 1.010043383 1.43699861 -0.11130488 1.013427615 1.47558403
		 -0.11952543 1.16839862 1.35975862 -0.56581867 0.85068703 1.51487589 -0.39024961 0.90493667 1.36710715
		 -0.55567205 1.13398194 1.074908018 -0.60384375 1.23259723 1.15060568 -0.65841872 1.098025322 1.14778924
		 -0.41484767 1.071872711 1.11111021 -0.48110569 1.013030648 1.10557556 0.067812681 0.34416246 1.73369932
		 -0.51418048 -0.052316427 1.018221855 -0.4212715 -0.031100273 0.83580112 -0.59484607 -0.03426373 0.85726893
		 -0.80934739 -0.0042392015 0.70246994 -0.83294433 0.02258122 0.51091409 -0.83827591 0.056798697 0.29525006
		 -0.95417631 0.075942874 0.29063523 -0.93314111 0.097767711 0.043467939 -0.97501373 0.18382013 0.051671803
		 -0.93965209 0.21805227 -0.14281559 -0.98615372 0.28668606 0.070163071 -0.96882176 0.3006922 -0.10233253
		 -0.99039775 0.46226907 -0.072898328 -1.025892615 0.56676453 -0.078548908 -0.96846783 0.80634516 -0.55755901
		 -0.90916967 0.57988948 -0.47612044 -0.8531245 0.56045765 -0.5621528 -0.7710132 0.5488885 -0.64121002
		 -0.47428548 0.32656419 -0.71521813 -0.084377527 0.36239398 -0.8399623 -0.44754094 0.28133428 -0.66567332
		 -0.21482754 0.30487275 -0.7572993 -0.14943826 0.19311857 -0.28050417 -0.32341164 0.18174803 -0.2467643
		 -0.44890499 0.17705691 -0.257204 -0.68944931 0.21653771 -0.48912218 -0.72529817 0.25190365 -0.5152545
		 -0.88363695 0.14550591 -0.1534763 -0.8110714 0.13181376 -0.12995565 -0.85071266 0.089503527 0.057655156
		 -0.65022326 0.049054146 0.31656492 -0.66568637 0.013970733 0.51855552 -0.65152311 -0.010141253 0.67853546
		 -0.44549811 0.01240015 0.53781819 -0.44905275 -0.0057935715 0.6530602 -0.1828773 -0.030448556 0.84509659
		 0.062612534 -0.030951858 0.84912777 0.057378888 -0.048604012 1.023570299 -0.20148742 -0.048375487 0.99486494
		 0.099328876 -0.077656627 1.5539093 -0.10063505 -0.092575669 1.54100394 -0.18762922 -0.069360018 1.4283607
		 -0.53260112 -0.075888991 1.291152 -0.79030907 -0.027755499 1.1394434 -0.88503772 0.0021628141 0.93395936
		 -0.81803727 0.10612607 1.15250444 -0.90517354 0.14093006 0.94924629 -0.97559124 0.1650058 0.74026144
		 -0.87780368 0.2731818 0.94792533 -0.96141946 0.31384766 0.73213387 -0.97600436 0.31455231 0.6089642
		 -0.95610279 0.50107062 0.75525749 -0.98686713 0.29369426 0.33783937 -0.97042549 0.50545388 0.60147953
		 -0.98349798 0.47258443 0.34033489 -1.009096384 0.54871446 0.33759451 -1.029449821 0.55069393 0.066155434
		 -1.14013398 0.80400175 0.10646009 -1.16496193 0.88947332 0.0049383044 -1.14086008 0.96267176 0.30017531
		 -1.15997541 1.039163351 0.26570606 -1.19555259 0.99554092 -0.064494312 -1.17397845 1.27572525 -0.44571838
		 -0.98928475 0.91583616 -0.58945632 -0.91293144 0.94914007 -0.72738904 -0.89132261 0.78468066 -0.67235565
		 -0.786147 0.96091044 -0.83884311 -0.76978081 0.77919811 -0.77906781 -0.50352234 1.00086593628 -0.99233055
		 -0.48550636 0.77776432 -0.92210001 -0.49436176 0.56511652 -0.82358676 -0.11231351 0.56685597 -0.95106018
		 -0.12466502 0.77637458 -1.030894041 -0.12319481 1.010124564 -1.11572087 -0.10655344 1.29643536 -1.17203403
		 -0.046039581 1.57979536 -1.16249943 -0.016820431 1.93626547 -1.024922729 -0.080132604 2.2568233 -0.72270429
		 0.027749896 2.44376421 -0.46189034 0.044184327 2.57141042 -0.14563751 0.042611599 2.71414328 0.18162787
		 0.035694003 2.74597025 0.50621688 0.03371501 2.74701333 0.86982286 0.035930872 2.69069195 1.15674162
		 0.039477229 2.5170455 1.36828399 0.031467795 2.21809506 1.6190989 0.028795481 1.76281166 1.80670834
		 -0.22784245 1.7795589 1.8041687 -0.22198021 1.67640972 1.85342431 -0.51367599 1.71753955 1.81894898
		 -0.51276827 1.58317292 1.7946825 -0.23288262 1.54300392 1.84190917 -0.2458334 1.50237179 1.76570058
		 -0.13489008 1.43196201 1.7394762 -0.10251808 1.1463573 1.75743866 -0.16186655 0.94038308 1.74419928
		 -0.22640848 0.844504 1.77413416 -0.32437259 0.80397248 1.71789336 -0.31410176 0.71330553 1.82073736
		 -0.55909139 0.70098585 1.77881384 -0.56667787 0.65568775 1.7787919 -0.59330863 0.56224728 1.73651981
		 -0.84719843 0.80363721 1.69043207 -0.87098515 0.74912864 1.65968132 -0.88831776 0.70478541 1.62184644
		 -0.99529552 0.9458611 1.57974076 -1.051760197 1.21730483 1.54262042;
	setAttr ".vt[166:331]" -1.084457755 1.229774 1.49507523 -1.069358587 1.42565632 1.47432351
		 -1.10549331 1.24111462 1.45464635 -1.12532616 1.27031505 1.36483741 -1.17401886 0.9659701 1.2796607
		 -1.14240992 1.039408207 1.18805337 -1.17091894 0.95246339 1.071663499 -1.049061179 1.011471391 0.97388792
		 -1.043691516 0.92995262 0.47522151 -1.055069447 1.032210231 0.45792341 -1.18691587 1.13534784 0.23050678
		 -1.25060713 1.48679602 0.072754979 -1.24065495 1.3470701 -0.22440708 -1.20309758 1.60735345 -0.3406803
		 -0.90293843 2.021264553 -0.57936656 -0.90258348 1.83797121 -0.72979838 -0.79436505 1.86746407 -0.78343248
		 -0.92860448 1.49843836 -0.81288058 -0.82272196 1.51606905 -0.88672858 -0.54651046 1.55507433 -1.016162157
		 -0.55474395 1.29710507 -1.025957108 -0.83576477 1.27826142 -0.87908733 -0.94572467 1.2626493 -0.79171824
		 -1.040412784 1.25160539 -0.68255413 -1.019734383 1.48621809 -0.72609681 -0.21044278 2.44622946 -0.45272383
		 -0.24140537 2.56638479 -0.13783777 -0.23454821 2.64414859 0.23018157 -0.22586918 2.67432237 0.46120536
		 -0.21580791 2.68585587 0.94200003 -0.20542288 2.63927889 1.16098809 -0.20002353 2.52465272 1.34720469
		 -0.21078956 2.2009151 1.59942579 -0.44689584 2.17594361 1.55150938 -0.50594783 1.79452074 1.78174186
		 -0.78933644 1.68927693 1.69769907 -0.7901184 1.63358963 1.71813083 -0.75461638 1.54442728 1.69505858
		 -0.72714287 1.51083672 1.64046288 -0.49902213 1.5578301 1.72458744 -0.63116431 1.44355524 1.45326114
		 -0.44199437 1.49928534 1.50411916 -0.39895326 1.43561625 1.36270666 -0.21237004 1.42100286 1.44754744
		 -0.22865832 1.46642518 1.56442904 -0.11693466 1.34596109 1.49421883 -0.12842512 1.3916961 1.58757281
		 -0.076335788 1.12087083 1.56627202 -0.10483801 1.22721744 1.37844586 -0.08587718 1.022955894 1.50592828
		 -0.11453319 0.94705451 1.56997323 -0.17068696 1.28349113 1.30913091 -0.16944945 1.20708573 1.28417659
		 -0.24161303 1.05446887 1.30589485 -0.30652004 0.9758178 1.33483624 -0.33249676 1.059711337 1.17603922
		 -0.39655393 0.97992414 1.20489717 -0.4939782 0.92115331 1.24877191 -0.60321063 0.96791184 1.16297698
		 -0.66646981 0.88476086 1.36914921 -0.74858755 0.95999265 1.30878258 -0.82264656 0.97091591 1.41541243
		 -0.76070321 1.10718524 1.28573227 -0.83458257 1.1394335 1.40617442 -0.93669349 1.187168 1.53655028
		 -0.89707243 0.98360747 1.53360748 -0.80832064 1.26145053 1.4100368 -0.89827561 1.31701112 1.55783558
		 -0.94577789 1.34176326 1.59342408 -0.98646975 1.19797122 1.56694126 -0.82659209 1.43462098 1.59339643
		 -0.86367822 1.46699941 1.63932133 -0.90560889 1.52614939 1.64708161 -0.99212015 1.37398469 1.58958077
		 -1.032203794 1.21123672 1.55602765 -0.97518599 0.95700622 1.57910156 -0.83627152 0.82824099 1.69389319
		 -0.81437421 0.86212069 1.6793251 -0.92244315 0.97768211 1.55750513 -0.78197163 0.87896502 1.62355089
		 -0.72930801 0.87833637 1.47294593 -0.54311752 0.82515073 1.67257905 -0.30059445 0.83618593 1.62027526
		 -0.54461944 0.78751338 1.74360323 -0.74180061 1.37046015 1.42310071 -0.6746574 1.31070709 1.28751493
		 -0.56879479 1.38139582 1.31071091 -0.49053782 1.29145205 1.15904832 -0.33117884 1.31002975 1.20220208
		 -0.30216509 1.20883524 1.15364027 -0.43407333 1.18042958 1.082118273 -0.73609287 1.21589684 1.28678489
		 -0.67354423 2.093651772 1.49414587 -0.43943107 2.50050068 1.32693243 -0.65383655 2.39723969 1.28220367
		 -0.44781709 2.60090137 1.14736652 -0.66867936 2.48902845 1.12285066 -0.45498896 2.63153839 0.9509697
		 -0.68095726 2.50967836 0.94559765 -0.48842973 2.61343288 0.44865608 -0.74171931 2.48552966 0.48924351
		 -0.50106502 2.59187198 0.3035593 -0.75852722 2.4719069 0.35406232 -0.53796148 2.50822544 -0.11247981
		 -0.79206252 2.40273666 -0.057877421 -0.52746832 2.39911389 -0.40461668 -0.7905755 2.30883837 -0.32741612
		 -0.53715479 2.15542793 -0.71923965 -0.78862548 2.073052168 -0.63311303 -0.55432588 1.91043305 -0.885656
		 -0.99784076 1.9424324 -0.5134542 -1.0022717714 2.13997769 -0.23243314 -0.90609491 2.23532343 -0.28466582
		 -0.99277276 2.22664285 0.0072025657 -0.9039067 2.32968235 -0.027381599 -0.97330761 2.28734446 0.3845166
		 -0.87203646 2.38653374 0.3726995 -0.9584794 2.30330658 0.51489747 -0.85533851 2.39827156 0.50474441
		 -0.87455541 2.34295177 0.95316076 -0.78109908 2.42805767 0.9481678 -0.85031229 2.31845093 1.10278821
		 -0.76270539 2.40767384 1.11200523 -0.83799314 2.2443378 1.23440933 -0.74949861 2.32526326 1.25825405
		 -0.8517133 1.9703176 1.4119997 -0.91220641 2.15732622 1.20680976 -0.90856004 1.91907954 1.37770629
		 -0.97823429 1.82839358 1.30968332 -1.001452446 1.60839808 1.48470068 -1.033655524 1.58960509 1.39302707
		 -1.097915292 1.43683124 1.37995315 -1.015616298 1.54053473 1.28134489 -0.96366012 1.67447257 1.20791721
		 -0.99551773 1.74814928 1.09741199 -1.0077852011 1.97753787 1.15762663 -1.025269628 2.017565966 1.065516114
		 -0.92870772 2.22291756 1.093396664 -0.95468068 2.25109386 0.95931756 -1.048934698 2.038684607 0.95905495
		 -1.043626308 2.20038795 0.52617896 -1.15881145 1.99157274 0.57976198 -1.058040619 2.1761024 0.39580357
		 -1.17897534 1.95041299 0.45568252 -1.07135725 2.10529089 0.042441845 -1.20488656 1.83704364 0.13041234
		 -1.080774069 2.023860931 -0.17470473 -1.21022558 1.71089423 -0.15086365 -1.07683742 1.84376144 -0.44973031
		 -1.23771811 1.57406235 0.26003075 -1.057673693 1.7973206 0.94189215 -1.024291277 1.77680182 1.025339842
		 -0.94920504 1.4985038 0.99635363 -0.92815256 1.20323932 0.95885539 -0.92948586 1.42756879 1.077553034
		 -1.01918447 1.10155725 1.065208316 -0.94422901 1.1222688 0.87626612 -0.94279003 1.22530186 0.7896657
		 -1.078635097 1.11003494 0.44637799 -1.041061282 1.36876965 0.69327652 -1.12203276 1.20898938 0.42652011
		 -1.18492007 1.71672845 0.546736 -1.027088404 1.42427969 0.7649262 -0.98228514 1.28629053 0.74505925
		 -0.97173452 1.35501397 0.82130241 -0.93352795 1.30275762 0.86747563;
	setAttr ".vt[332:497]" -0.98347414 1.53202987 0.94562376 -1.12298954 0.85589254 0.36750317
		 -1.16774392 0.81518954 0.52519906 -1.2071048 0.82968038 0.70277607 -1.14673662 0.88920301 0.6770395
		 -1.205042 0.87067354 1.14469695 -1.1411283 0.71323913 0.75822818 -1.10650349 0.69864362 1.098194003
		 -1.050029039 0.65814346 1.27820587 -0.90463805 0.64772362 1.56541753 -0.76598805 0.45303941 1.44225335
		 -0.71115535 0.4742474 1.60021472 -0.6238184 0.34843552 1.59497404 -0.56458354 0.13481534 1.63189054
		 -0.4464801 0.1434257 1.71995306 -0.35883743 0.00046443939 1.75628281 0.10886216 -0.1220119 1.78795362
		 -0.17692542 -0.10905445 1.60829353 -0.40014941 -0.0945611 1.50329423 -0.26741064 -0.1062777 1.70764256
		 -0.50960797 -0.092819214 1.5738306 -0.67691952 -0.059091091 1.35953951 -0.56871015 0.012873173 1.62901473
		 -0.71146506 0.05753541 1.38915491 -0.6998893 0.17942882 1.39734912 -0.79944009 0.238047 1.12599707
		 -0.8001492 0.41486442 1.15332985 -0.88431942 0.45682096 0.97309101 -0.86219728 0.54348785 1.19549561
		 -0.92789757 0.58917624 1.0088423491 -0.97811306 0.60833162 0.75962639 -0.99175668 0.58988595 0.59434438
		 -1.14220655 0.70002371 0.57139826 -1.14162266 0.71285731 0.32099938 -0.70609796 0.3483218 1.41461492
		 -0.99224818 0.45241898 0.069441676 -0.98961306 0.17740512 0.30805409 -0.99795938 0.17540729 0.55331397
		 -0.96947217 0.049655318 0.52189517 -0.94850612 0.027740359 0.72869444 -0.74935418 -0.030243874 0.89229643
		 -0.65552551 -0.053108931 1.081481814 0.090163231 -0.0078618526 0.68572211 0.11700034 0.011930943 0.56237352
		 0.13228905 0.044429898 0.38686311 0.12344015 0.08398962 0.20043123 0.11771095 0.1044631 0.10949552
		 -0.14090753 0.12366354 0.022381544 -0.36288679 0.12577569 -0.0078829527 -0.62131965 0.089267373 0.11651433
		 -0.572209 0.12550867 -0.047046304 -0.39081424 0.087046742 0.16219103 -0.41990072 0.047293067 0.34754348
		 -0.15999448 0.046925902 0.36982286 -0.17179632 0.014842391 0.54257357 -0.18124795 -0.0071122646 0.67804003
		 -0.14711833 0.085668445 0.18915176 -0.22994614 0.42767054 1.7492547 0.044039369 0.43666112 1.54666615
		 -0.17747736 0.50080305 1.5573616 -0.19100142 0.59355158 1.78883648 -0.131091 0.68829334 1.80111074
		 0.030722857 0.73477525 1.56992626 -0.11520684 0.61720866 1.42021465 0.02367413 0.6593585 1.40513659
		 0.88252008 0.33925223 -0.46848911 1.089852691 1.72233868 -0.61136967 1.20035589 0.85102445 0.0075290203
		 1.089332938 1.60442734 0.86715937 0.039488316 1.63974261 1.84626985 0.40806198 -0.064133525 1.23734283
		 0.20309758 1.010043383 1.43699861 0.46360731 1.072695971 1.11094046 1.15184438 0.69547009 1.10470724
		 1.088448405 0.65016127 1.27913713 1.21628916 1.003254056 1.28068328 0.56543088 0.17646492 -0.26877731
		 0.4190073 0.18624675 -0.27539635 0.77613008 0.25190365 -0.5152545 1.032919049 1.78898859 -0.6655128
		 1.070566297 1.48621809 -0.72609681 1.19420254 1.51863933 -0.52636814 1.016898751 0.48931313 -0.23116314
		 0.93520963 0.4638387 -0.43549725 1.091419578 0.59799832 -0.058446169 1.18787515 0.76608253 0.21235967
		 1.25570118 1.073822975 -0.087838292 1.10320532 1.50928879 0.75577629 0.28371465 1.54300392 1.84190917
		 0.16993725 1.45009243 1.79481244 0.093406558 1.14700699 1.81435227 0.029674768 0.87173462 1.8937304
		 0.15992939 0.90671742 1.83576751 1.19629014 0.92220354 0.83973897 1.068115592 1.50779474 1.26697636
		 1.057910562 1.3341186 1.16739583 0.96852529 1.56831384 1.6324265 0.84016836 1.68927693 1.69769907
		 1.060885072 1.39267814 1.57438111 1.020437837 1.620116 1.53189158 1.097053885 1.41798437 1.51759338
		 0.72437632 2.093651772 1.49414587 0.90254533 1.9703176 1.4119997 0.20989537 0.62173373 1.60692453
		 0.15559518 0.68828565 1.58069539 0.060553789 -0.041160703 1.22965908 0.19991708 0.70925951 1.87907219
		 0.35065937 0.70483512 1.82990742 0.33293331 0.63496894 1.83316183 0.8028065 0.44170952 1.45528913
		 0.1364572 -0.005186677 1.90330768 0.40117848 0.4222219 1.76778126 0.58030152 0.38761306 1.681288
		 0.6441406 0.56224728 1.73651981 0.61750984 0.65568775 1.7787919 1.12175834 0.88988078 1.47854567
		 1.14693606 0.77869761 1.38863611 1.086752534 0.91412961 1.54894185 0.12383962 1.10316706 1.57416654
		 0.13670921 1.022955894 1.50592828 0.15885472 0.96020859 1.58077025 0.26762092 0.86467862 1.70681906
		 0.17778933 0.92786729 1.54302502 0.22498012 0.93540502 1.48474717 0.30576777 0.96099246 1.41661835
		 0.25111878 1.033165932 1.37932873 0.16213691 1.013427615 1.47558403 0.17035747 1.16839862 1.35975862
		 0.61500287 0.86241156 1.43468881 0.61665082 0.85068703 1.51487589 0.44624007 0.90437543 1.36640215
		 0.3797642 0.89789736 1.44700241 0.71412313 1.099813461 1.15422654 0.60824239 1.13369966 1.076527596
		 0.72134769 1.18146253 1.18319225 0.65948367 1.23463786 1.15595245 0.53294563 1.012512445 1.10563397
		 0.25521708 0.45974064 1.73023653 0.46477413 -0.046162963 0.95949209 0.30186582 -0.049569607 1.013663054
		 0.61225212 -0.053840399 1.028966784 0.68622494 -0.036200285 0.87008595 0.74057019 -0.010855436 0.68256295
		 1.014571071 0.022235632 0.55425048 0.74720657 0.012525558 0.52478325 0.88335574 -0.027207971 0.90840411
		 0.9833957 0.057837367 0.30123103 1.0082451105 0.0072896481 0.68720829 1.047611356 0.053449631 0.56107211
		 1.016697049 0.077564478 0.30286074 0.98963773 0.09956491 0.033778429 1.023132205 0.1676656 0.036773145
		 0.99934709 0.19725537 -0.11169082 0.95873153 0.13549078 -0.10963178 1.02023232 0.29075587 -0.094594657
		 1.041776299 0.46233112 -0.070166469 1.053994536 0.60635781 -0.2493642 1.13566864 0.81214029 -0.2797693
		 1.019299865 0.80634516 -0.55755901 0.96000159 0.57988948 -0.47612044 0.90395629 0.56045765 -0.5621528
		 0.82184517 0.5488885 -0.64121002 0.54788733 0.55125749 -0.81767374 0.52574241 0.33972549 -0.721452
		 0.2507906 0.37298608 -0.82205123 0.26043832 0.29070377 -0.69724667;
	setAttr ".vt[498:663]" 0.10106373 0.29551589 -0.72533572 0.24768245 0.19427633 -0.28826839
		 0.082131982 0.19305944 -0.28079671 0.49776924 0.2729305 -0.63312209 0.74028122 0.21653771 -0.48912218
		 0.95352876 0.090078354 0.040032685 0.92423189 0.12235188 -0.10043108 0.69101477 0.088410497 0.11923289
		 0.72641313 0.047643185 0.32212448 0.50001383 0.013914347 0.52912915 0.4987303 -0.0090941191 0.67694271
		 0.48279727 -0.030749917 0.83339429 0.27565408 -0.0076031685 0.6799674 0.28093028 -0.030699849 0.84476137
		 0.07697463 -0.042913675 1.42991209 0.31933975 -0.074606657 1.43460608 0.26009452 -0.094007254 1.5404048
		 0.32530463 -0.10922694 1.60106349 0.61397028 -0.077548862 1.30353928 0.47008157 -0.093393564 1.48785925
		 0.78727591 -0.051280737 1.09020102 0.89521611 -0.018977046 1.094821811 0.9645704 0.0060060024 0.94072616
		 0.96277344 0.11847115 0.94596183 0.89395416 0.091245413 1.10243297 1.037030101 0.14575827 0.71844184
		 0.92801297 0.27337277 0.9497304 1.0090116262 0.30849779 0.74151611 1.027996898 0.3102411 0.58614707
		 1.051400542 0.15441906 0.57211792 1.023547053 0.47348112 0.57319283 1.034432054 0.46606517 0.34070492
		 1.0038987398 0.48061699 0.76327801 1.06114018 0.6038022 0.58105063 1.08617866 0.58555007 0.35573435
		 1.09486568 0.58406889 0.12241232 1.042334676 0.44851428 0.095861137 1.1875149 0.72030848 0.40849733
		 1.21047676 1.035568118 0.25730181 1.17183626 0.93540812 0.36825776 1.25072181 1.19925618 0.17528713
		 1.29151905 1.35035253 -0.21983618 1.22299802 1.27334142 -0.44777465 1.17967236 0.96930718 -0.3341037
		 1.091245055 1.25160539 -0.68255413 1.040116668 0.91583616 -0.58945632 0.96063793 0.97222733 -0.7367022
		 0.93768275 0.77555025 -0.67072624 0.81369674 0.99421072 -0.85972321 0.80228269 0.77020448 -0.78570563
		 0.54924417 0.77240127 -0.91678971 0.23514891 0.77473068 -1.012726426 0.23729956 0.56366879 -0.92138672
		 0.27867448 1.7795589 1.8041687 0.27281225 1.67640972 1.85342431 0.56450784 1.71753955 1.81894898
		 0.5636003 1.58317292 1.7946825 0.54985392 1.5578301 1.72458744 0.29666543 1.50237179 1.76570058
		 0.18572211 1.43196201 1.7394762 0.15019 1.14425826 1.75808024 0.20567822 0.93734872 1.7477653
		 0.27445245 0.83553153 1.77322078 0.22914624 0.7631467 1.85999942 0.35273576 0.81026119 1.71002507
		 0.60992348 0.70098585 1.77881384 0.8980304 0.80363721 1.69043207 0.92181742 0.74912864 1.65968132
		 0.93922007 0.70172822 1.61953449 0.69060981 0.51013285 1.68604946 1.046127677 0.9458611 1.57974076
		 1.10259211 1.21730483 1.54262042 1.12582481 1.21034837 1.50650287 1.12227285 1.42482805 1.46613932
		 1.15379131 1.21579897 1.4564395 1.14798033 1.42770183 1.37248492 1.17919195 1.2391212 1.34671855
		 1.13790739 1.26999676 1.25106907 1.1520201 1.085362911 1.16010118 1.17856014 0.97069764 1.011345863
		 1.082500815 1.026558995 0.92902565 1.079996467 0.9812417 0.64408743 0.99506104 1.1222688 0.87626612
		 1.079532743 1.07148695 0.54112804 1.16836131 0.8727259 0.50192857 1.13306773 1.16531312 0.47320306
		 1.19759023 1.31559098 0.40929043 1.2539295 1.60735345 -0.3406803 1.12766945 1.84376144 -0.44973031
		 1.048673034 1.9424324 -0.5134542 0.95341527 1.83797121 -0.72979838 0.84519708 1.86746407 -0.78343248
		 0.86030352 1.52806246 -0.88983214 0.60515785 1.91043305 -0.885656 0.62431049 1.55118239 -1.0093967915
		 0.60968697 1.279984 -1.02246654 0.30039203 1.29290247 -1.13179231 0.33576488 1.57413936 -1.11424184
		 0.25286591 1.016189575 -1.088956952 0.56849289 1.011344075 -0.99083716 0.85367239 1.26676762 -0.89432597
		 0.98946226 1.25139487 -0.79437172 0.97969615 1.50297475 -0.81115913 0.33814585 1.94115758 -0.96830416
		 0.30444169 2.21688628 -0.74917412 0.31919587 2.43107653 -0.46123722 0.3182745 2.56039262 -0.13297385
		 0.30252719 2.63626909 0.21026897 0.28977871 2.67202425 0.52067494 0.28091013 2.68081903 0.84959769
		 0.27843642 2.6371398 1.13894868 0.26606929 2.48562574 1.37506938 0.26162159 2.2009151 1.59942579
		 0.55677974 1.79452074 1.78174186 0.84095037 1.63358963 1.71813083 0.80544817 1.54442728 1.69505858
		 0.77797496 1.51083672 1.64046288 0.49282646 1.49928534 1.50411916 0.27949035 1.46642518 1.56442904
		 0.4481945 1.43494666 1.36303473 0.26320207 1.42100286 1.44754744 0.16776669 1.34596109 1.49421883
		 0.17925715 1.3916961 1.58757281 0.14374304 1.11593258 1.63090611 0.15567005 1.22721744 1.37844586
		 0.2382971 1.18943477 1.27717972 0.23567438 1.29327798 1.31289172 0.29728413 1.055576086 1.29862404
		 0.36024344 0.97538328 1.33183503 0.44771838 0.97865069 1.20765209 0.54988635 0.91912133 1.25537586
		 0.80002272 0.96049666 1.30921817 0.70829141 0.88529086 1.36707902 0.87352097 0.97117376 1.41543937
		 0.65674579 0.96777225 1.16561842 0.8189286 1.1130383 1.29429698 0.88526618 1.1461128 1.4048028
		 0.98752558 1.187168 1.53655028 0.8569411 1.26107275 1.40694666 0.94910753 1.31701112 1.55783558
		 0.99660981 1.34176326 1.59342408 1.03730166 1.19797122 1.56694126 0.87742412 1.43462098 1.59339643
		 0.91451037 1.46699941 1.63932133 1.04295218 1.37398469 1.58958077 1.083035827 1.21123672 1.55602765
		 0.95644104 1.52614939 1.64708161 1.026018023 0.95700622 1.57910156 0.97327507 0.97768211 1.55750513
		 0.88710344 0.82824099 1.69389319 0.86520612 0.86212069 1.6793251 0.94790447 0.98360747 1.53360748
		 0.83280361 0.87896502 1.62355089 0.77737749 0.87787664 1.47359443 0.59394956 0.82515073 1.67257905
		 0.33026063 0.82408011 1.65708113 0.59545135 0.78751338 1.74360323 0.7911588 1.36696291 1.41634917
		 0.69085288 1.43806159 1.44445038 0.73566902 1.31415272 1.29818869 0.63312709 1.38147569 1.31209493
		 0.54658461 1.29279196 1.16110182 0.38571334 1.31835616 1.21360159 0.48559952 1.17893553 1.083607674
		 0.35384047 1.19842017 1.15719295 0.38135111 1.062299013 1.1776948;
	setAttr ".vt[664:780]" 0.79329383 1.21781337 1.29571962 0.49772799 2.17594361 1.55150938
		 0.69716287 2.353405 1.31817579 0.5024755 2.44425654 1.35987186 0.51473284 2.59272981 1.13234735
		 0.7105062 2.49279976 1.11506104 0.72253335 2.51592684 0.83767807 0.52095258 2.62337637 0.83862317
		 0.77918375 2.49209499 0.50128746 0.54391539 2.61094904 0.49717796 0.80018961 2.4735465 0.33177817
		 0.55945992 2.58304548 0.26981556 0.84289467 2.40273666 -0.057877421 0.58982205 2.51045442 -0.094843984
		 0.84140742 2.30883837 -0.32741612 0.59939611 2.37957478 -0.41312173 0.83945739 2.073052168 -0.63311303
		 0.60048091 2.15789199 -0.71054834 0.95377052 2.021264553 -0.57936656 0.95692694 2.23532343 -0.28466582
		 1.053103805 2.13997769 -0.23243314 0.95473874 2.32968235 -0.027381599 1.043604732 2.22664285 0.0072025657
		 0.92248547 2.38522172 0.35310352 1.024139524 2.28734446 0.3845166 0.90179193 2.40081954 0.51736057
		 1.0093115568 2.30330658 0.51489747 0.84620678 2.42172098 0.869874 0.9253875 2.34295177 0.95316076
		 0.90114439 2.31845093 1.10278821 0.82456791 2.39975309 1.10020208 0.80618584 2.30293322 1.26927042
		 0.8888253 2.2443378 1.23440933 0.82289088 2.031903982 1.45451164 0.95939219 1.91907954 1.37770629
		 1.027328134 1.80276692 1.2941525 1.078648686 1.5884676 1.37127614 1.051963687 1.61763752 1.47183418
		 1.12216222 1.40666974 1.28682232 1.012102246 1.64248776 1.19508553 1.043462157 1.73342323 1.093906283
		 1.056463838 1.95839334 1.16228843 1.075998425 2.015098095 1.065698266 0.96303856 2.15732622 1.20680976
		 0.97953975 2.22291756 1.093396664 1.09976685 2.038684607 0.95905495 1.0055125952 2.25109386 0.95931756
		 1.20964348 1.99157274 0.57976198 1.094458222 2.20038795 0.52617896 1.23042667 1.94740665 0.44903195
		 1.10887277 2.1761024 0.39580357 1.25571859 1.83704364 0.13041234 1.1221894 2.10529089 0.042441845
		 1.25848567 1.75914919 -0.058549881 1.13160598 2.023860931 -0.17470473 1.30024922 1.47755778 0.052669466
		 1.28350484 1.57914674 0.28082263 1.23542154 1.69374776 0.53218794 1.19275272 1.74915206 0.67640519
		 1.11811411 1.79538274 0.91114354 1.080587029 1.77579927 1.008665204 1.0078326464 1.51601756 0.99278891
		 0.98569286 1.43084311 1.088172555 1.056173205 1.15395939 1.0679667 0.98028386 1.23316944 0.97466791
		 1.0050936937 1.21257162 0.76001751 1.064761043 1.29842496 0.69120777 1.13177502 1.42269695 0.62822092
		 1.046628594 1.41188538 0.81401527 0.99220598 1.33547485 0.87683201 1.050554395 1.56429029 0.93124413
		 1.21522558 0.84755719 0.65635276 1.14281356 0.9373014 0.75032032 1.25131357 0.86127251 1.12961698
		 1.25205219 0.83288795 0.83643925 1.16460383 0.69867557 0.8301456 0.95732152 0.55643022 1.43627548
		 0.95593417 0.643911 1.55949163 0.74365819 0.4653784 1.6185534 0.66575849 0.35512555 1.61521912
		 0.7472378 0.34327948 1.44170523 0.75396669 0.18177128 1.38831306 0.63160765 0.15519965 1.60814238
		 0.51120698 0.1382972 1.71410751 0.63234901 0.020447969 1.60801315 0.05794549 0.22226417 1.85483074
		 0.44793749 0.0033824444 1.75896335 0.10146475 -0.11299825 1.65237236 0.57783914 -0.092347503 1.55766511
		 0.73510039 -0.06306076 1.3554883 0.38064039 -0.10982108 1.69133639 0.76632845 0.053109646 1.38134098
		 0.86179221 0.23839629 1.093110204 0.85840261 0.43087596 1.13446522 0.93478453 0.45845711 0.97382295
		 0.97536051 0.58726412 1.013991237 1.028468013 0.60929561 0.78393066 1.18069494 0.69809562 0.61283696
		 0.9043318 0.53912091 1.17456865 1.036222339 0.26674342 0.052764714 1.037644506 0.28207517 0.34651864
		 1.041088939 0.15561819 0.31779122 1.038686872 0.04063189 0.69542205 0.24508977 0.11851001 0.041014493
		 0.46058631 0.084657907 0.17088926 0.43258059 0.12511075 -0.0097745657 0.64655244 0.1236099 -0.04344362
		 0.48417795 0.0464046 0.35065341 0.27685416 0.013694525 0.54630053 0.26318681 0.045063376 0.37623537
		 0.25970876 0.083154559 0.19696653 0.23333216 0.6062032 1.82375693 0.14637983 0.67664826 1.81316829
		 0.035827994 0.75133008 1.80563545 0.027486205 0.78799528 1.88238192 0.23095417 0.52234221 1.53732514
		 0.14544797 0.62068361 1.42756796;
	setAttr -s 1560 ".ed";
	setAttr ".ed[0:165]"  10 337 1 337 170 1 10 40 1 40 170 1 14 190 1 12 13 1
		 13 14 1 0 15 1 117 72 1 117 16 1 16 17 1 120 18 1 117 120 1 19 328 1 19 316 1 401 147 1
		 150 21 1 21 401 1 401 23 1 21 24 1 423 22 1 23 24 1 24 22 1 298 26 1 26 27 1 27 1 1
		 2 201 1 2 28 1 2 29 1 29 30 1 30 28 1 258 31 1 31 2 1 291 29 1 3 32 1 33 437 1 35 34 1
		 34 157 1 4 35 1 36 340 1 340 360 1 749 6 1 6 37 1 6 160 1 160 38 1 38 37 1 4 159 1
		 40 39 1 216 41 1 46 42 1 42 43 1 43 248 1 43 44 1 44 45 1 45 248 1 248 46 1 48 47 1
		 48 49 1 49 50 1 50 47 1 7 51 1 7 52 1 51 45 1 45 52 1 55 53 1 53 54 1 54 8 1 8 55 1
		 56 57 1 389 6 1 749 58 1 9 97 1 33 59 1 59 9 1 61 60 1 60 9 1 59 61 1 61 372 1 62 91 1
		 63 90 1 62 63 1 63 64 1 63 370 1 65 64 1 66 88 1 65 66 1 65 368 1 67 66 1 68 86 1
		 67 68 1 68 11 1 67 69 1 69 70 1 70 68 1 70 15 1 69 367 1 367 71 1 71 70 1 71 0 1
		 115 72 1 72 71 1 72 17 1 17 0 1 16 73 1 73 74 1 74 17 1 74 15 1 74 75 1 75 11 1 11 15 1
		 75 76 1 76 85 1 76 129 1 129 77 1 77 85 1 77 78 1 80 79 1 79 77 1 78 80 1 498 80 1
		 500 81 1 81 82 1 82 83 1 83 84 1 84 79 1 79 82 1 80 81 1 84 85 1 85 86 1 11 85 1
		 87 86 1 87 88 1 66 86 1 88 64 1 88 381 1 89 64 1 89 90 1 90 91 1 90 92 1 92 93 1
		 93 91 1 93 60 1 61 91 1 93 387 1 94 60 1 94 97 1 94 95 1 95 96 1 96 97 1 96 437 1
		 33 97 1 512 100 1 98 99 1 99 100 1 100 33 1 99 349 1 350 100 1 101 373 1 101 353 1
		 353 102 1 102 373 1 102 103 1 102 104 1 104 105 1 105 103 1 105 106 1;
	setAttr ".ed[166:331]" 105 107 1 107 108 1 108 106 1 108 109 1 109 369 1 107 359 1
		 110 108 1 110 112 1 112 109 1 113 111 1 111 109 1 112 113 1 112 363 1 114 113 1 115 367 1
		 114 115 1 114 365 1 365 116 1 116 115 1 116 117 1 116 118 1 118 119 1 119 117 1 119 176 1
		 176 120 1 120 178 1 178 121 1 121 18 1 121 189 1 189 122 1 122 18 1 188 123 1 123 122 1
		 123 124 1 124 73 1 73 122 1 123 125 1 125 126 1 126 124 1 75 124 1 126 76 1 127 128 1
		 128 126 1 128 129 1 128 131 1 130 129 1 130 78 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 143 144 1 144 145 1 145 401 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 147 1
		 149 205 1 151 150 1 151 152 1 152 21 1 152 153 1 153 24 1 153 154 1 154 22 1 154 46 1
		 46 155 1 155 22 1 155 34 1 156 155 1 156 157 1 157 4 1 157 158 1 158 159 1 159 160 1
		 159 161 1 161 162 1 162 160 1 162 163 1 163 38 1 161 164 1 39 162 1 40 163 1 164 39 1
		 164 165 1 165 166 1 166 39 1 30 166 1 30 167 1 167 168 1 168 166 1 168 40 1 167 297 1
		 169 168 1 169 170 1 169 27 1 27 171 1 171 170 1 172 337 1 171 172 1 172 173 1 173 25 1
		 173 322 1 322 174 1 174 25 1 174 175 1 118 333 1 175 118 1 324 119 1 326 176 1 326 315 1
		 177 176 1 177 178 1 178 179 1 179 12 1 179 314 1 314 13 1 276 14 1 180 181 1 181 14 1
		 180 274 1 182 181 1 184 183 1 183 181 1 182 184 1 182 275 1 275 185 1 185 184 1 185 186 1
		 186 187 1 185 134 1 127 186 1 186 133 1 127 132 1 127 125 1 125 187 1 187 188 1 188 183 1
		 184 187 1 188 189 1 189 190 1 190 183 1 121 12 1 12 190 1 136 191 1 191 137 1 191 192 1
		 192 138 1 192 193 1 193 139 1 193 194 1 194 140 1 194 195 1 195 141 1;
	setAttr ".ed[332:497]" 195 196 1 196 142 1 196 197 1 197 143 1 197 198 1 198 144 1
		 198 146 1 198 199 1 199 200 1 200 146 1 200 201 1 201 202 1 148 200 1 202 148 1 202 203 1
		 203 149 1 203 204 1 204 205 1 204 206 1 206 207 1 207 205 1 207 210 1 151 205 1 207 208 1
		 208 209 1 209 210 1 210 151 1 209 211 1 211 212 1 212 210 1 212 152 1 211 213 1 213 41 1
		 41 212 1 41 153 1 211 214 1 214 215 1 215 213 1 215 49 1 49 42 1 42 216 1 216 215 1
		 216 154 1 214 50 1 214 217 1 217 218 1 218 50 1 218 219 1 219 47 1 220 44 1 44 47 1
		 219 220 1 220 52 1 219 221 1 221 222 1 222 220 1 222 223 1 223 52 1 222 57 1 57 224 1
		 224 223 1 226 225 1 225 223 1 224 226 1 226 227 1 227 231 1 226 228 1 228 229 1 229 227 1
		 229 230 1 230 231 1 229 232 1 232 233 1 233 230 1 233 234 1 234 235 1 235 230 1 233 236 1
		 236 237 1 237 234 1 237 238 1 238 239 1 239 234 1 203 237 1 202 238 1 240 235 1 239 240 1
		 240 241 1 239 28 1 28 165 1 165 240 1 164 241 1 244 235 1 241 242 1 242 243 1 243 244 1
		 244 241 1 243 245 1 245 231 1 231 244 1 245 246 1 246 227 1 245 247 1 51 246 1 7 225 1
		 225 246 1 247 51 1 247 248 1 248 156 1 247 249 1 249 156 1 249 158 1 249 243 1 242 158 1
		 242 161 1 238 2 1 236 204 1 232 250 1 250 236 1 250 206 1 250 251 1 251 252 1 252 206 1
		 252 253 1 253 254 1 254 208 1 208 252 1 254 217 1 217 209 1 253 256 1 256 255 1 255 254 1
		 255 218 1 56 221 1 221 255 1 256 56 1 53 256 1 53 57 1 253 54 1 251 54 1 232 257 1
		 257 251 1 257 8 1 228 257 1 228 55 1 224 55 1 201 258 1 199 258 1 199 259 1 259 260 1
		 197 259 1 260 258 1 259 261 1 261 262 1 196 261 1 262 264 1 262 260 1 261 263 1 263 264 1
		 195 263 1 264 266 1 263 265 1 265 266 1 194 265 1 266 268 1 265 267 1;
	setAttr ".ed[498:663]" 267 268 1 193 267 1 268 270 1 267 269 1 269 270 1 192 269 1
		 269 271 1 271 272 1 191 271 1 272 270 1 271 273 1 273 274 1 136 273 1 274 272 1 274 182 1
		 273 275 1 135 275 1 180 278 1 180 276 1 276 277 1 277 278 1 278 272 1 277 279 1 279 280 1
		 280 278 1 280 270 1 279 281 1 281 282 1 282 280 1 282 268 1 281 283 1 283 284 1 284 282 1
		 284 266 1 283 285 1 285 286 1 286 284 1 286 264 1 285 287 1 287 288 1 288 286 1 288 262 1
		 287 289 1 289 290 1 290 288 1 290 260 1 289 291 1 291 31 1 31 290 1 289 292 1 292 293 1
		 293 291 1 293 294 1 294 296 1 296 295 1 295 293 1 295 29 1 167 295 1 296 297 1 297 169 1
		 296 298 1 298 1 1 1 297 1 298 299 1 294 299 1 299 300 1 294 301 1 301 300 1 301 302 1
		 301 292 1 292 303 1 303 302 1 303 304 1 304 305 1 287 303 1 285 304 1 305 302 1 304 306 1
		 306 307 1 283 306 1 307 305 1 306 308 1 308 309 1 281 308 1 309 307 1 308 310 1 279 310 1
		 311 309 1 310 311 1 311 313 1 310 312 1 312 313 1 277 312 1 313 179 1 312 314 1 276 314 1
		 177 313 1 177 315 1 315 311 1 327 309 1 20 307 1 20 316 1 316 305 1 316 317 1 317 302 1
		 317 300 1 300 318 1 318 320 1 318 331 1 319 320 1 320 299 1 319 321 1 321 26 1 26 320 1
		 321 171 1 173 321 1 319 322 1 319 331 1 323 322 1 323 175 1 323 329 1 329 324 1 324 175 1
		 325 326 1 326 324 1 325 327 1 327 315 1 325 328 1 328 20 1 20 327 1 325 329 1 329 330 1
		 330 328 1 330 331 1 318 332 1 332 330 1 332 19 1 317 332 1 331 323 1 333 174 1 333 334 1
		 334 25 1 334 335 1 335 336 1 336 25 1 335 337 1 172 336 1 335 338 1 338 339 1 339 337 1
		 339 340 1 36 341 1 341 10 1 10 340 1 36 342 1 342 343 1 343 341 1 163 341 1 343 38 1
		 366 344 1 344 343 1 344 37 1 356 345 1 345 344 1 345 346 1 346 37 1;
	setAttr ".ed[664:829]" 345 354 1 347 346 1 347 442 1 749 346 1 442 348 1 751 98 1
		 751 349 1 349 350 1 751 348 1 348 351 1 351 349 1 351 352 1 352 350 1 101 350 1 352 353 1
		 352 354 1 354 355 1 355 353 1 355 104 1 355 356 1 356 357 1 357 104 1 356 366 1 358 357 1
		 107 357 1 358 359 1 358 360 1 360 361 1 361 359 1 362 110 1 110 359 1 361 362 1 362 363 1
		 338 362 1 338 364 1 364 363 1 114 363 1 364 365 1 364 334 1 333 365 1 361 339 1 358 366 1
		 366 342 1 342 360 1 351 347 1 347 354 1 34 423 1 18 16 1 367 113 1 69 111 1 67 368 1
		 368 111 1 368 369 1 65 370 1 370 369 1 370 371 1 371 106 1 106 369 1 371 103 1 371 62 1
		 62 372 1 372 103 1 372 373 1 373 59 1 33 101 1 95 374 1 374 375 1 375 376 1 376 377 1
		 377 378 1 378 500 1 377 388 1 388 379 1 379 378 1 379 81 1 383 380 1 380 379 1 380 82 1
		 381 382 1 382 380 1 382 83 1 382 87 1 87 84 1 381 89 1 381 383 1 383 384 1 384 89 1
		 384 385 1 385 386 1 386 92 1 92 384 1 386 387 1 386 375 1 374 387 1 94 387 1 385 376 1
		 385 388 1 383 388 1 58 389 1 389 392 1 4 6 1 392 4 1 393 35 1 777 778 1 778 35 1
		 390 58 1 390 391 1 391 389 1 391 3 1 3 392 1 392 393 1 393 777 1 393 32 1 32 394 1
		 394 777 1 32 395 1 395 396 1 396 394 1 395 5 1 5 396 1 395 391 1 48 43 1 737 448 1
		 448 406 1 406 405 1 405 737 1 737 407 1 408 409 1 410 397 1 413 412 1 412 411 1 411 398 1
		 398 413 1 414 415 1 417 533 1 533 416 1 416 399 1 399 417 1 416 488 1 489 399 1 489 541 1
		 400 419 1 400 723 1 419 722 1 401 421 1 421 420 1 420 552 1 23 422 1 422 421 1 423 424 1
		 423 23 1 424 422 1 425 736 1 575 427 1 427 426 1 426 702 1 428 429 1 428 430 1 430 432 1
		 432 431 1 431 428 1 428 697 1 433 429 1 431 434 1 434 697 1 435 436 1;
	setAttr ".ed[830:995]" 402 437 1 440 439 1 561 438 1 438 440 1 740 441 1 441 762 1
		 749 442 1 443 444 1 444 567 1 445 443 1 443 440 1 445 446 1 447 448 1 447 449 1 450 621 1
		 621 452 1 452 451 1 451 450 1 653 455 1 455 454 1 454 453 1 453 653 1 463 456 1 456 455 1
		 403 457 1 403 458 1 457 459 1 459 458 1 460 461 1 460 462 1 463 461 1 467 465 1 465 464 1
		 464 466 1 466 467 1 404 468 1 469 58 1 470 471 1 402 471 1 470 472 1 470 509 1 473 472 1
		 473 474 1 473 477 1 474 479 1 474 476 1 476 475 1 479 477 1 475 478 1 475 479 1 481 480 1
		 480 475 1 478 481 1 478 503 1 482 481 1 483 765 1 482 483 1 482 485 1 485 484 1 484 483 1
		 484 397 1 484 486 1 486 763 1 415 486 1 486 487 1 414 487 1 487 534 1 487 416 1 533 534 1
		 414 488 1 488 489 1 491 490 1 490 489 1 488 491 1 415 491 1 491 492 1 397 492 1 492 493 1
		 410 493 1 495 494 1 410 495 1 495 496 1 495 501 1 497 496 1 498 78 1 497 498 1 498 500 1
		 500 499 1 497 499 1 409 501 1 409 499 1 497 501 1 501 502 1 410 502 1 410 485 1 485 504 1
		 504 502 1 482 503 1 503 504 1 506 505 1 478 506 1 476 506 1 474 508 1 508 507 1 507 476 1
		 473 509 1 509 508 1 511 510 1 510 508 1 509 511 1 511 471 1 471 96 1 437 512 1 402 513 1
		 513 512 1 512 98 1 513 514 1 514 98 1 513 517 1 517 515 1 515 514 1 402 516 1 516 517 1
		 516 518 1 518 519 1 519 753 1 519 520 1 519 522 1 520 521 1 521 522 1 521 523 1 521 524 1
		 523 525 1 525 524 1 523 527 1 527 526 1 526 525 1 525 530 1 530 758 1 526 528 1 526 764 1
		 529 528 1 528 530 1 532 531 1 531 528 1 529 532 1 529 534 1 533 532 1 417 535 1 417 537 1
		 399 536 1 536 537 1 536 538 1 399 418 1 418 538 1 418 539 1 418 541 1 541 540 1 540 539 1
		 541 543 1 543 542 1 544 599 1 543 544 1 543 490 1 490 545 1 545 544 1;
	setAttr ".ed[996:1161]" 544 546 1 545 547 1 545 492 1 493 547 1 547 546 1 547 548 1
		 548 597 1 597 546 1 493 494 1 494 548 1 550 549 1 549 548 1 494 550 1 496 550 1 496 78 1
		 145 551 1 401 552 1 552 551 1 552 553 1 420 554 1 554 553 1 556 555 1 555 554 1 420 556 1
		 556 557 1 421 557 1 557 558 1 422 558 1 558 559 1 424 559 1 559 453 1 424 560 1 560 453 1
		 423 561 1 561 560 1 560 562 1 562 653 1 561 439 1 439 562 1 439 563 1 440 446 1 446 563 1
		 446 564 1 445 565 1 565 564 1 445 567 1 567 566 1 566 565 1 565 449 1 449 568 1 566 447 1
		 568 564 1 568 569 1 449 570 1 570 569 1 570 432 1 430 569 1 570 572 1 572 571 1 571 432 1
		 447 572 1 572 574 1 574 573 1 573 571 1 447 407 1 407 574 1 575 574 1 407 576 1 577 576 1
		 577 425 1 577 578 1 736 578 1 578 580 1 579 580 1 579 581 1 579 582 1 537 581 1 581 583 1
		 536 583 1 583 584 1 538 584 1 538 719 1 539 719 1 539 585 1 540 413 1 413 585 1 398 586 1
		 586 587 1 411 587 1 587 682 1 411 588 1 588 682 1 589 680 1 588 589 1 588 600 1 590 589 1
		 592 591 1 590 592 1 590 598 1 593 592 1 592 595 1 593 594 1 594 595 1 594 133 1 593 597 1
		 597 596 1 596 594 1 596 132 1 549 596 1 549 131 1 550 130 1 593 598 1 598 599 1 590 600 1
		 600 599 1 412 542 1 600 412 1 540 542 1 542 599 1 546 598 1 134 595 1 595 601 1 135 601 1
		 601 602 1 136 602 1 602 603 1 137 603 1 603 604 1 138 604 1 604 605 1 139 605 1 605 606 1
		 140 606 1 606 607 1 141 607 1 607 608 1 142 608 1 608 609 1 143 609 1 609 610 1 144 610 1
		 610 551 1 611 665 1 551 611 1 611 429 1 611 553 1 553 612 1 612 429 1 612 613 1 554 613 1
		 613 614 1 555 614 1 555 615 1 615 656 1 556 616 1 616 615 1 618 617 1 617 615 1 616 618 1
		 616 620 1 620 619 1 619 618 1 557 620 1 620 621 1 450 619 1 558 621 1;
	setAttr ".ed[1162:1327]" 622 619 1 451 622 1 451 458 1 452 454 1 454 458 1 452 559 1
		 459 622 1 622 624 1 459 623 1 623 624 1 623 625 1 457 625 1 457 456 1 456 626 1 626 625 1
		 626 462 1 626 627 1 627 663 1 462 628 1 628 627 1 468 627 1 628 632 1 628 630 1 630 629 1
		 629 631 1 629 632 1 631 649 1 631 634 1 634 633 1 633 629 1 649 635 1 635 634 1 637 636 1
		 636 634 1 635 637 1 635 639 1 639 638 1 638 637 1 637 640 1 638 641 1 641 640 1 638 642 1
		 644 641 1 641 613 1 614 640 1 639 643 1 643 642 1 642 644 1 643 645 1 643 569 1 430 642 1
		 645 646 1 639 646 1 645 568 1 645 647 1 646 648 1 648 647 1 650 648 1 646 649 1 649 650 1
		 631 651 1 651 650 1 651 461 1 461 652 1 651 630 1 630 460 1 652 650 1 652 653 1 463 653 1
		 562 654 1 563 654 1 654 652 1 648 654 1 563 647 1 564 647 1 428 644 1 644 612 1 640 655 1
		 655 636 1 614 656 1 656 655 1 658 657 1 657 655 1 656 658 1 658 659 1 658 617 1 617 660 1
		 660 659 1 660 624 1 618 624 1 660 662 1 662 661 1 623 662 1 662 663 1 404 661 1 625 663 1
		 663 404 1 661 659 1 661 465 1 467 659 1 468 465 1 467 657 1 657 664 1 664 636 1 466 664 1
		 664 633 1 464 633 1 464 632 1 632 468 1 462 463 1 433 665 1 433 666 1 667 665 1 665 610 1
		 666 667 1 666 669 1 669 668 1 668 667 1 667 609 1 668 608 1 669 670 1 670 671 1 671 668 1
		 671 607 1 670 672 1 672 673 1 673 671 1 673 606 1 672 674 1 674 675 1 675 673 1 675 605 1
		 674 676 1 677 675 1 676 677 1 676 678 1 679 677 1 677 604 1 678 679 1 678 680 1 681 679 1
		 679 603 1 680 681 1 681 602 1 589 591 1 591 681 1 591 601 1 680 682 1 678 683 1 683 682 1
		 684 587 1 683 684 1 683 685 1 686 684 1 676 685 1 685 686 1 685 687 1 688 686 1 674 687 1
		 687 688 1 687 689 1 690 688 1 672 689 1 689 690 1 689 691 1 692 690 1;
	setAttr ".ed[1328:1493]" 670 691 1 691 692 1 691 694 1 694 693 1 693 692 1 669 694 1
		 694 695 1 696 693 1 666 695 1 695 696 1 695 697 1 434 696 1 433 697 1 698 707 1 434 698 1
		 698 699 1 698 701 1 701 700 1 431 701 1 701 571 1 573 700 1 700 699 1 573 702 1 426 700 1
		 575 702 1 426 703 1 703 704 1 703 699 1 704 705 1 705 699 1 705 706 1 705 707 1 706 708 1
		 708 707 1 706 709 1 710 708 1 708 693 1 696 707 1 709 710 1 709 711 1 712 710 1 710 692 1
		 711 712 1 711 713 1 714 712 1 712 690 1 713 714 1 713 715 1 716 714 1 714 688 1 715 716 1
		 716 686 1 715 717 1 717 718 1 718 716 1 718 684 1 717 585 1 585 586 1 586 718 1 717 719 1
		 719 720 1 715 720 1 720 721 1 713 721 1 721 722 1 711 722 1 722 723 1 709 723 1 723 724 1
		 706 724 1 724 704 1 704 725 1 703 726 1 726 725 1 728 733 1 726 728 1 726 427 1 427 727 1
		 727 576 1 575 576 1 727 728 1 727 578 1 580 728 1 729 733 1 580 729 1 581 729 1 583 730 1
		 731 730 1 584 731 1 584 720 1 721 731 1 419 731 1 732 730 1 419 732 1 732 733 1 732 734 1
		 734 725 1 725 733 1 400 734 1 734 724 1 729 730 1 582 537 1 582 735 1 579 736 1 736 735 1
		 425 738 1 577 737 1 737 738 1 739 738 1 405 739 1 406 740 1 448 741 1 741 740 1 741 742 1
		 741 566 1 567 742 1 742 441 1 742 743 1 744 441 1 444 743 1 743 744 1 743 746 1 746 745 1
		 745 744 1 444 747 1 747 746 1 747 750 1 750 748 1 748 746 1 747 749 1 443 749 1 442 750 1
		 751 515 1 515 754 1 517 752 1 516 753 1 753 752 1 752 754 1 748 752 1 753 755 1 755 522 1
		 522 756 1 756 745 1 757 744 1 756 757 1 756 524 1 524 758 1 758 757 1 758 759 1 530 760 1
		 760 759 1 760 531 1 760 739 1 405 759 1 531 761 1 532 535 1 535 761 1 735 761 1 535 582 1
		 761 739 1 735 738 1 759 762 1 406 762 1 762 757 1 745 755 1 755 748 1;
	setAttr ".ed[1494:1559]" 750 754 1 754 348 1 534 763 1 529 764 1 764 763 1 483 763 1
		 764 765 1 765 527 1 527 480 1 481 765 1 523 766 1 766 480 1 766 520 1 479 766 1 520 477 1
		 477 518 1 518 472 1 402 472 1 378 767 1 499 767 1 767 774 1 767 769 1 769 768 1 768 774 1
		 409 769 1 769 770 1 505 768 1 408 770 1 770 505 1 504 770 1 408 502 1 503 505 1 771 768 1
		 506 771 1 771 773 1 771 507 1 507 772 1 772 773 1 772 510 1 510 374 1 375 772 1 511 95 1
		 376 773 1 377 774 1 774 773 1 397 415 1 469 775 1 469 443 1 440 775 1 775 776 1 438 776 1
		 776 777 1 438 778 1 778 423 1 390 779 1 469 779 1 779 435 1 775 435 1 436 776 1 394 436 1
		 780 436 1 396 780 1 5 780 1 780 779 1 5 390 1 455 403 1;
	setAttr -s 795 ".n";
	setAttr ".n[0:165]" -type "float3"  -32.78279114 -15.12470627 3.60415649
		 -16.60044289 -32.24863815 -0.95326477 -16.97797585 -31.93480301 -2.89389849 -27.24075127
		 -13.83617115 19.56936455 -27.33651352 -10.3141737 21.51257706 -34.24669266 -0.52486187
		 11.97275162 -30.086917877 10.65696716 -17.25296021 -26.5159874 9.83159828 -22.73103905
		 -27.10002708 6.28906298 -23.29150772 -30.44098663 3.55536079 -19.4207077 -35.28717804
		 -7.91129446 2.94695854 -33.20262527 -13.83598709 -4.75490665 -29.1312561 -21.61770058
		 -0.7092852 -36.272995 0.30606735 0.79637271 -31.41183662 -12.78937531 -12.89133549
		 -31.89070129 -12.88143635 -11.55464649 -35.86254501 -4.81063223 2.68211651 -30.57823753
		 -13.0131464 -14.56322193 -31.60346794 -10.43891239 14.44672871 -32.53889465 -8.30996513
		 13.7340107 -33.62442017 -6.057888031 12.21304226 -31.13669777 -11.44008446 14.69995213
		 -3.59329009 2.94655585 35.9842186 -2.56675839 10.76093674 34.55534744 -8.38746929
		 -24.78422356 25.13664055 -20.81717682 -18.83159828 22.98856735 -17.58934593 9.71224785
		 30.21167564 1.22372866 9.74034023 34.92973328 17.14537239 8.45466137 30.83849907
		 -27.045148849 18.064540863 16.083854675 -32.47039032 10.72329521 -12.13023853 -28.76322937
		 9.75508022 -19.84875488 -28.68023682 7.92786217 -20.76176834 -28.86079216 7.51643085
		 -20.66436386 -25.77484894 9.29082108 23.78646469 -28.29773521 13.11294079 18.54041672
		 -30.17313576 7.099299431 18.85841751 -25.59823227 3.25112796 25.50723076 -14.28464794
		 20.048551559 26.65450287 -17.84859276 17.28134727 26.44316292 -21.93984032 15.41322517
		 24.4445076 -24.55521202 15.67167473 21.63095665 0.2876499 -12.61030579 34.019927979
		 -11.95561123 -1.39118397 34.22843933 -19.64701271 10.93107414 28.47744179 -3.98650384
		 25.13865662 25.85756874 -24.26504707 -21.6019516 16.15615273 -29.31705475 -21.097003937
		 3.44744349 -29.67303276 -20.79467392 1.88433218 -12.86735249 -0.34830269 33.92297363
		 -17.385849 -14.089940071 28.55983162 -16.24953651 -16.97352791 27.64615822 -20.92520332
		 -2.043200493 29.57058144 -11.76796627 -1.84445369 34.27201462 -35.57262802 -6.96302462
		 -1.60074389 -33.4708786 5.046901703 13.064733505 -33.84218216 9.40805244 -9.091398239
		 -34.90260696 2.43342757 -9.60960388 0.77699202 34.5369606 11.092908859 -21.37677193
		 29.26724243 1.70888543 -21.14066887 25.50521469 14.79912853 -14.86664391 25.04863739
		 21.63346291 -16.16080475 25.7508812 19.80349731 -10.81764221 30.62271118 16.17672348
		 -19.4043541 21.33073235 22.021104813 -24.20606232 18.30687714 19.88423538 -28.94743729
		 8.13079262 20.3074894 -19.23905945 22.64894104 20.81687355 3.43118596 35.39255905
		 7.21470165 1.52463961 36.014671326 4.1324358 -13.69058418 31.13672066 12.63054371
		 27.65729904 -10.57485485 20.96912956 22.38424683 2.60591316 28.43611717 9.070028305
		 -2.40549779 35.048625946 21.40251923 -19.29014206 22.051773071 3.78553391 32.084190369
		 16.51461792 35.13477707 8.7517767 2.32637501 1.75342488 25.69697952 25.55481911 0.35200468
		 -35.98620987 -4.61811066 0.19344203 -36.21284866 -2.24724293 0.58738685 -35.98078537
		 -4.63638926 -1.10303056 -36.032157898 -4.11399603 -0.78080654 -36.024383545 -4.25347614
		 0.28425312 -35.96401596 -4.7923727 -1.52313578 -36.056510925 -3.75048065 -19.53446007
		 -30.52129364 -1.82034099 0.14517105 -35.89711761 -5.27579784 -17.30444336 -31.57304001
		 -4.48971415 0.2687529 -35.82226563 -5.75769281 -1.23936701 -35.81744766 -5.65972281
		 -31.97239304 -17.066837311 -1.71675944 -35.7682724 -5.22369766 -3.13076687 -18.73678589
		 -29.73846245 -9.00082492828 2.0047850609 -35.63192749 -6.54252672 -36.17145538 2.45435667
		 -1.43532062 -36.21363449 -1.80211067 -1.33531666 -33.45609665 -10.18380356 -9.66631889
		 -16.85915756 -29.78958511 -12.033602715 -36.28175354 -0.25727406 -0.16219242 -35.36569595
		 -4.17526722 -6.94930172 -32.33629608 -9.26541615 -13.60051537 -31.65510368 -11.5371151
		 -13.46504593 -36.27200317 -0.42771032 0.7854073 -35.16418076 -8.086771965 -3.81348157
		 -32.93077087 -9.59128666 -11.83341885 -31.093156815 -10.71369839 -15.32613182 -30.66887093
		 -13.15302086 -14.2434721 -26.17445183 -14.55346203 -20.48299217 -16.70189285 -15.10884762
		 -28.44692421 -16.89471054 -29.13862419 -13.48952961 -15.94267654 -13.75986767 -29.54581451
		 -15.66693878 -14.6342268 -29.27190781 4.22932243 -14.6603756 -32.91875458 0.47887638
		 -35.45030594 -7.71391773 -3.16275191 -31.22105598 -18.21265221 0.21864353 -35.56478882
		 -7.18026352 -0.063930087 -35.38689041 -8.013859749 0.74976069 -35.38066101 -8.0065517426
		 2.24309754 -35.44968033 -7.39911604 2.016999483 -35.44365311 -7.49247503 1.116588
		 -35.39121628 -7.91663599 2.054255724 -35.52586365 -7.081737518 0.90159762 -35.53107071
		 -7.29302835 0.44091886 -35.71999741 -6.35181236 0.37126291 -35.80804443 -5.83988762
		 0.29047999 -35.88451385 -5.35495472 0.24476825 -35.87321091 -5.43238878 0.16746801
		 -35.93268967 -5.027101517 0.045588009 -35.92590714 -5.077914715 0.67123765 -36.27653885
		 -0.14244208 -6.93265295 -35.33385849 4.46262455 -9.013246536 -34.11051941 -8.46710205
		 6.51671648 -34.30894089 -9.84311485 -6.24659395 -31.87541008 -16.16776085 3.50964952
		 -34.82297897 -9.56559849 -0.20372874 -35.97729492 -4.69583797 -17.3377037 -30.55001831
		 9.086174965 -0.70137858 -35.90045547 -5.20802784 -32.77168655 -3.41808486 15.19181633
		 -30.48416901 -15.86034489 11.64572811 -2.37972951 -36.041538239 -3.43548512 -32.40313721
		 5.67620516 15.30606556 -34.28841782 3.22702122 11.41703701 -31.37843704 -15.13982964
		 10.1310091 -32.02614212 3.59483194 16.66917801 -35.43754196 2.45725155 7.38922834
		 -35.44764328 3.95655704 6.65343952 -35.96829605 3.63238049 3.089584351 -36.044902802
		 3.72718501 1.82513809 -34.00020599365 -8.10064125 9.73774433 -35.66794205 -4.17623425
		 5.17832994 -35.96329117 -3.9815917 2.69194174 -36.23298264 0.68803513 1.77638841
		 -36.087574005 3.61466479 1.03886497 -31.34153748 -17.67450333 4.66669416 -22.89256096
		 -27.58549881 5.6061573 -36.1800499 0.078908674 -2.73053312 -35.78686142 1.9117341
		 5.66604137 -34.21195602 -4.62035751 11.16479206 -35.75507736 -3.8586998 4.81072521
		 -35.92959595 3.25603724 -3.86270905 -31.030174255 -1.87850523 -18.70982742 -27.74683762
		 -1.8793571 -23.30319977 -30.37564468 -10.99543858 -16.51904106 -25.87354279 -6.38140345
		 -24.62306786 -26.72265434 -8.82132721 -22.90288162;
	setAttr ".n[166:331]" -type "float3"  -27.11639023 -12.18471622 -20.80125427
		 -21.20288277 -7.73508835 -28.40887642 -16.39917946 -13.51329708 -29.40945244 -15.43645763
		 -6.79810858 -32.12412643 -13.93559647 -13.16184616 -30.8062191 3.67134857 -11.96740246
		 -34.055259705 4.15903568 -12.46342278 -33.82046127 0.22141449 13.49908257 33.67764664
		 -1.46923625 18.98483849 30.88487434 -9.67811775 -6.27804422 34.40026474 -8.63168144
		 -24.88689804 24.95184326 -2.59312201 -35.13877869 8.6602602 -16.75218964 -31.89997673
		 4.26774836 -30.76786804 -18.87213516 3.69308925 -35.98194885 3.45471096 -3.13406992
		 -34.80311966 9.019770622 -4.88311863 -23.97168732 24.35789299 12.18644238 -0.71480215
		 32.22268677 16.66269875 -7.92273474 6.026659966 34.89079666 -18.051206589 -1.82383716
		 31.42110252 -22.3677597 -10.93770218 26.39143753 -23.73957253 -14.037537575 23.57622528
		 -17.44649887 6.1290555 31.21718216 -30.17106247 -1.20633435 20.11739922 -25.2240696
		 -1.06331265 26.059043884 -31.50328445 0.98522705 17.97304916 -31.41415787 7.54758215
		 16.51189804 -33.07126236 1.63795769 14.83465195 -34.87416458 10.012528419 0.0013205991
		 -35.86687851 5.46451998 0.4052918 -25.98987198 19.41697693 -16.24702072 -29.45350266
		 20.67202759 -4.64935684 -24.62246895 24.89258766 -9.51584148 -23.55854225 26.2878933
		 -8.39046097 -25.42840004 24.55341911 -8.18438244 -33.44141006 14.017518044 -1.28037238
		 -24.94297409 26.34853554 -0.24654013 -31.56306458 -7.58165693 16.20955276 -34.81296539
		 10.18385315 0.89711976 -30.53958321 -10.44549561 16.5735817 -32.43681717 -8.49922752
		 13.85907745 -34.40716553 -5.88387632 9.89873505 -35.91839981 4.8299222 -1.73164666
		 -34.48231506 9.31520271 -6.37612009 -31.115448 14.71090221 -11.48374271 -28.5031414
		 17.36175156 -14.2337122 -23.7469368 21.3002758 -17.28697014 -21.16872597 10.80738258
		 -27.4142952 -19.22371864 23.24815941 -20.16010475 -15.16719055 15.39980507 -29.14207458
		 -19.13167191 4.20320129 -30.54128838 -21.81428909 6.30052614 -28.3001461 -13.9510231
		 12.63246441 -31.020120621 -14.71115589 10.32002831 -31.52042389 -15.65695858 -4.12555122
		 -32.46994781 -20.57710838 -4.98201799 -29.46557617 3.35932636 11.50575447 -34.24603271
		 3.16936278 2.56190014 -36.053432465 3.28013086 -10.28569794 -34.63962173 1.42329538
		 27.28152466 -23.8778286 -7.56212044 29.837286 -19.20960045 1.37162209 32.06583786
		 -16.92213821 -7.50309181 33.15365219 -12.68845844 2.19379592 34.89756393 -9.68532658
		 -8.58540249 34.79094696 -5.68674421 2.90480232 35.77084351 -5.33544159 -8.46176529
		 35.049133301 -4.051536083 2.92507339 36.067790985 -2.64886975 -8.93189907 35.1620903
		 0.55376822 1.60062277 35.69789886 6.2893734 -6.0095686913 33.40647888 12.81991673
		 0.59562141 33.35249329 14.27285862 -4.73781872 27.41123772 23.29453278 3.18443513
		 22.5678196 28.23138237 -8.078216553 18.32884598 30.25316238 1.65968597 14.71371651
		 33.12416077 -10.96705532 18.58401489 29.16875458 -7.94240046 19.8686409 29.30210686
		 -17.47115135 3.11888027 31.64632034 0.01350516 -24.98296738 26.31176949 12.05775547
		 -30.049406052 16.37381554 5.45270157 -32.48556137 15.21231461 -1.21155381 -33.92469406
		 12.81035709 -17.41936111 -31.11925697 6.6795125 -1.21902621 -32.55861664 15.9658556
		 -19.89609718 -27.91046906 11.89996147 -30.82214928 -17.51558685 7.72382832 -30.7682209
		 -19.0031585693 2.94187951 -31.62322998 -13.96474075 11.018864632 -22.87276077 -23.12211227
		 16.083000183 -25.61696053 -6.72899485 24.79818535 -27.06316185 11.59321022 21.2047348
		 -20.20901871 25.89120293 15.41750145 -22.36675262 20.63027382 19.76305199 -17.070318222
		 27.44994926 16.4791584 0.89770371 34.352211 11.64379215 -12.96082783 27.17564583
		 20.24745369 16.74752045 13.75780678 29.098134995 30.41688347 5.28901148 19.060367584
		 7.62401867 34.15028 9.59640121 20.50800705 27.78159523 11.13834381 30.28868675 -4.014305592
		 19.56882477 29.51105881 -4.31483269 20.66247177 22.98254395 -5.58782673 27.51430511
		 20.86071777 3.63439584 29.46319008 27.15653038 -12.70769024 20.43270683 25.48741913
		 -14.90324497 21.088928223 9.35749531 -13.027061462 32.54521561 11.15821457 -6.29210567
		 33.94645309 19.43575478 -24.24739456 18.72894478 5.8630147 -20.31643105 29.48433304
		 -17.91918373 -1.65775323 31.50575829 -17.77727127 -1.98096609 31.56742859 -9.48154831
		 -4.070661068 34.78488159 -6.80602884 19.34247971 29.93333435 9.92615223 1.39131677
		 34.87110138 -12.98155594 8.31642342 32.84469986 5.17262363 31.2866745 17.63082695
		 8.62825775 34.21974182 8.42737579 11.22318268 33.90316391 6.40889072 5.34061003 34.045501709
		 11.3507576 2.19524026 27.86663246 23.1320076 20.73605919 -23.019628525 18.88307571
		 21.94469452 -21.12597466 19.71247482 13.020427704 -29.017780304 17.46124268 12.16153431
		 -26.82415962 21.19008446 -13.8902359 -23.5226326 23.8789711 -2.989568 -8.50718784
		 35.14467621 -20.13196182 -10.3390274 28.35959816 -19.14029694 19.52852058 23.84835434
		 27.81699371 -11.86445427 20.047636032 -10.83955574 25.853899 23.033409119 -17.24173546
		 19.019557953 25.64053535 -11.1970396 32.44272232 11.77090359 -21.20631218 27.3681469
		 10.85057163 -13.23538017 33.77804565 0.57134461 -21.0092220306 29.36075974 3.60782957
		 -12.42967129 33.93772888 -3.19246554 -20.72560692 29.77489471 0.60248578 -11.82634449
		 33.95422363 -4.86890554 -19.69821739 30.45479012 -0.97162819 -10.86479855 32.40594482
		 -12.17657471 -19.076124191 30.51473618 -4.62714624 -11.75197887 28.86642456 -18.57629204
		 -19.19246101 27.39411163 -14.059524536 -13.30843353 19.025655746 -27.88132095 -12.15174294
		 13.54409885 -31.39029503 -24.48314095 23.88800049 -12.099473 -28.90523529 18.41394424
		 -11.9110136 -29.44807053 20.27907944 -6.1667099 -24.52467537 26.60972786 -2.63073206
		 -28.12949753 22.8621006 -1.5855304 -23.63944244 27.52501488 0.091661669 -26.25509834
		 25.037302017 0.51123923 -23.049880981 27.98576164 1.39940524 -25.071777344 26.028739929
		 3.22005916 -23.383461 27.36048698 4.59082317 -26.21137428 22.41591263 11.26715374
		 -24.3597908 24.68418312 10.66535568 -25.35021591 19.21417236 17.45394516 -20.69176865
		 17.65553093 24.012308121 -26.87108421 13.93755627 20.0036849976 -26.68995094 13.48469257
		 20.54915428 -30.50184059 11.46467018 15.9579792 -34.051914215 12.50213623 -0.78864646
		 -30.42770386 12.6172657 15.21241474;
	setAttr ".n[332:497]" -type "float3"  -31.75100136 6.79008961 -16.1934166 -30.34296608
		 11.17311001 16.45977211 -33.16265488 -10.37823009 10.43976498 -28.6841011 18.69585991
		 12.0060510635 -34.59470749 6.13365507 9.057738304 -28.66960907 21.77549934 4.50990629
		 -34.081127167 7.012619495 10.28386879 -29.19068909 21.54860115 0.13956653 -34.31613159
		 9.064854622 7.52925587 -30.64163399 19.31367874 -2.12843585 -34.3221817 11.73772144
		 0.8196497 -31.97056961 16.47376823 -4.79121304 -34.22424316 11.86521435 -2.091852903
		 -31.71352959 15.1919632 -8.93948555 -34.40457916 10.60535049 -4.50660276 -33.63486862
		 -6.23032475 12.096978188 -32.46580124 -9.6512022 13.010924339 -32.66025543 -11.068785667
		 11.28041744 -30.59943008 7.30157185 -18.078165054 -33.98180771 -7.35656452 10.37188244
		 -34.75339508 8.17681217 -6.46523237 -28.14180183 16.97256279 -15.37625504 -34.0087089539
		 -6.067822933 11.092668533 -31.085046768 -11.24115467 14.96042442 -30.7671566 -11.68412209
		 15.2748642 -31.127388 -11.75419998 14.4700613 -31.53221893 -11.3398571 13.91348076
		 -35.71170044 -1.78480494 -6.16010284 -34.30177689 -11.58635712 -2.36698651 -28.35069656
		 -22.64263344 0.085272081 -24.17815208 -17.053432465 21.0013217926 -21.40360451 -18.33487701
		 22.8511734 -33.83145523 -10.98728466 7.15335321 -25.92318153 -3.77929902 25.10306168
		 -31.29513168 1.3577944 18.30926514 -26.65839195 1.53532672 24.56483269 -23.37075043
		 2.68547177 27.62343788 -27.67168236 -2.19684219 23.36471748 -24.79456711 2.056233644
		 26.40945625 19.27087975 -0.33597058 30.7405014 1.95192707 -36.14559174 -2.47880006
		 19.14644623 -8.27440643 29.68848228 -25.10791397 -3.10465002 26.0079193115 -28.1262207
		 -7.24303246 21.74654579 -32.6067543 3.83594537 15.44484425 -32.13555527 4.68224239
		 16.18148994 -33.28558731 -10.80651379 9.57846546 -19.43696785 -30.61549377 1.16356087
		 -30.87593079 -18.67457581 3.79410172 -31.98806 -16.98027802 -2.21184373 -32.55554199
		 -15.73676014 2.99149823 -0.10504306 -35.38970566 -8.00097846985 -0.17187795 -35.49403
		 -7.52345228 0.66829234 -35.47911835 -7.56595564 0.75924748 -35.38451004 -7.98863268
		 0.79108018 -35.492836 -7.48939085 1.073886514 -35.40076065 -7.87978792 2.090376139
		 -35.52350998 -7.082986832 0.6296041 -35.58768463 -7.041197777 0.60373491 -35.578022
		 -7.092099667 0.33197656 -35.78870392 -5.95957136 -0.064938955 -35.77907181 -6.025930882
		 -0.0086573455 -35.86473083 -5.49353695 -0.17172956 -35.58120728 -7.09974432 34.93172073
		 -9.10861588 -3.64226484 30.86941528 -16.71775818 -9.16808414 -26.50000381 -23.041776657
		 -9.12602711 4.18743753 -0.5742234 36.036006927 -4.12160492 23.4961834 27.33861351
		 35.62347412 1.47227001 6.72744465 35.74723816 -6.13509274 -0.97657263 33.39529037
		 -13.68626976 -3.72809124 -11.84822178 -27.95501328 19.86441612 31.89821243 -3.70321846
		 16.88929749 -9.65445995 1.52906191 34.94154358 1.1713469 12.018712044 34.21456528
		 32.78276443 -15.12476826 3.60415268 27.24075127 -13.83618546 19.5693512 16.97797585
		 -31.93480682 -2.89388943 16.60043907 -32.24864197 -0.95326501 34.24666977 -0.5249263
		 11.97280502 27.3365097 -10.31419849 21.51256752 30.086902618 10.65697002 -17.25298309
		 30.44098091 3.55534673 -19.42071533 27.10003471 6.28905678 -23.29149818 26.51600075
		 9.83157921 -22.73103142 35.28717804 -7.91129875 2.94693398 36.272995 0.30609822 0.79639947
		 29.13125229 -21.61770439 -0.70926368 33.20262909 -13.83598137 -4.75491524 31.89068985
		 -12.88145447 -11.55465603 31.41184425 -12.7893734 -12.89131832 30.57823372 -13.013160706
		 -14.56322193 35.8625412 -4.81065655 2.68211246 31.60346794 -10.43888092 14.4467535
		 31.13669205 -11.4400568 14.69998741 33.62443542 -6.057880878 12.21300316 32.53889084
		 -8.31001091 13.73398972 20.81717682 -18.83159828 22.98856735 8.38746643 -24.78422356
		 25.13664055 2.56676006 10.76093674 34.55534744 17.58934593 9.71224785 30.21167564
		 27.045148849 18.064540863 16.083854675 32.47041321 10.72329426 -12.13018227 28.86079216
		 7.51643944 -20.66436195 28.68022537 7.92786503 -20.76178551 28.76324081 9.75508022
		 -19.84873962 25.77486992 9.29084969 23.78643227 25.59827042 3.25114703 25.5071888
		 30.1731205 7.099267006 18.85845757 28.29774094 13.11293507 18.540411 21.93985558
		 15.41322613 24.44449615 17.84860039 17.28134727 26.4431572 14.28464222 20.048557281
		 26.65450096 24.55521774 15.67169094 21.63093758 -0.28765023 -12.61030579 34.019927979
		 3.98650551 25.13865662 25.85756683 19.64701271 10.93107414 28.47744179 11.95561123
		 -1.39118397 34.22843933 24.2650528 -21.60196304 16.15612984 29.67302322 -20.79468918
		 1.88433933 29.31703949 -21.097021103 3.44745445 12.86736488 -0.34830168 33.922966
		 20.92521095 -2.043172836 29.57057953 16.24952507 -16.97352982 27.64616203 17.38583946
		 -14.089945793 28.55983353 11.76795578 -1.84443903 34.27201843 35.57262802 -6.96302462
		 -1.60074389 34.90260696 2.43342757 -9.60960388 33.84217453 9.40805912 -9.091415405
		 33.47089386 5.046882153 13.064703941 -0.7769919 34.5369606 11.092908859 14.86664391
		 25.04863739 21.63346291 21.14066887 25.50521469 14.79912853 21.37677193 29.26724243
		 1.70888543 10.81764221 30.62271118 16.17672348 16.1607933 25.75089455 19.8034935
		 19.40436554 21.33073044 22.021093369 19.23905945 22.64894104 20.81687355 28.94742966
		 8.1307869 20.30750465 24.2060585 18.30688858 19.88423157 -3.43118525 35.39255905
		 7.21469784 13.69058704 31.13672066 12.63053608 -1.52463996 36.014671326 4.13243723
		 -27.65730858 -10.57485867 20.9691143 -21.4025116 -19.29013634 22.051786423 -9.070026398
		 -2.40549898 35.048625946 -22.38424683 2.6059413 28.43611526 -35.13476944 8.75180626
		 2.32638311 -0.35200474 -35.98620987 -4.61811066 1.10303044 -36.032157898 -4.11399555
		 -0.58738708 -35.98078537 -4.63638926 -0.19344203 -36.21284866 -2.24724293 -0.28425315
		 -35.96401596 -4.7923727 0.78080618 -36.024383545 -4.25347662 -0.14517114 -35.89711761
		 -5.27579784 19.53443718 -30.52130508 -1.82036877 1.52313685 -36.056510925 -3.75048018
		 -0.26875278 -35.82226563 -5.75769281 17.30445671 -31.57303047 -4.48971701 1.23936701
		 -35.81744766 -5.65972281 35.7682724 -5.22370815 -3.13076711 31.97235489 -17.066904068
		 -1.71676576 -2.0047850609 -35.63192749 -6.54252625 18.73678017 -29.73846436 -9.00082492828
		 36.21363068 -1.80219281 -1.33534396;
	setAttr ".n[498:663]" -type "float3"  36.17145538 2.45434856 -1.43532443 16.85913277
		 -29.78959465 -12.03360939 33.45611572 -10.18376446 -9.66630173 35.36569214 -4.17530537
		 -6.94929886 36.28175354 -0.25730869 -0.16221334 31.65512085 -11.53706741 -13.46504593
		 32.33628845 -9.26540852 -13.60054016 35.16418839 -8.086738586 -3.81348276 36.27200317
		 -0.42768076 0.78542715 32.93076324 -9.59129715 -11.83342838 30.66885757 -13.15305328
		 -14.24347496 31.093151093 -10.71369743 -15.32614422 26.17445374 -14.5534544 -20.48299217
		 16.8947258 -29.13861656 -13.48953247 16.70188332 -15.10885906 -28.44692421 15.66693878
		 -14.63423061 -29.2719059 15.94268036 -13.75985813 -29.54581642 8.2038002 -14.30190372
		 -32.32044601 3.16275406 -31.22105598 -18.21265221 -0.47887644 -35.45030594 -7.71391773
		 -0.74976021 -35.38066101 -8.0065507889 -2.24309945 -35.44968033 -7.39911604 -1.11658823
		 -35.39121628 -7.91663647 -2.016999245 -35.44365311 -7.49247456 -2.054256678 -35.52586365
		 -7.081737995 -0.4409188 -35.71999741 -6.35181236 -0.90159798 -35.53107071 -7.29302835
		 -0.29047999 -35.88451385 -5.35495472 -0.37126285 -35.80804443 -5.83988714 -0.16746801
		 -35.93268967 -5.027101517 -0.24476825 -35.87321091 -5.43238878 -6.51671553 -34.30894089
		 -9.84312153 -3.50964999 -34.82297897 -9.56559944 17.33771706 -30.55000496 9.086191177
		 0.20372893 -35.97729492 -4.69583797 0.70137888 -35.90045547 -5.20802784 2.37973213
		 -36.041538239 -3.43548536 30.48417091 -15.86035347 11.64570713 32.77169418 -3.41806507
		 15.19180679 31.37844086 -15.1397953 10.13104343 34.28843689 3.22695303 11.41699982
		 32.40313721 5.67617416 15.306077 35.44764328 3.95655465 6.65345383 35.43753815 2.45727563
		 7.38923359 32.026138306 3.59481955 16.66918945 36.044906616 3.72715092 1.82514393
		 35.96829605 3.63241243 3.089564323 35.66793823 -4.17625618 5.1783433 34.00020599365
		 -8.1006422 9.73774815 35.96329498 -3.9815731 2.69195342 36.087574005 3.61466956 1.038860798
		 36.23298264 0.68801594 1.77641308 22.89254189 -27.58551788 5.60614252 31.34153366
		 -17.67450905 4.6666975 36.1800499 0.078954823 -2.73052979 34.21196365 -4.62032557
		 11.16476917 35.78684998 1.9117167 5.6660943 35.75507355 -3.85868859 4.81075191 35.92959595
		 3.25605631 -3.8626802 31.030170441 -1.87847233 -18.70983696 30.37563515 -10.99543095
		 -16.51905823 27.74683952 -1.87934399 -23.30319786 26.72265244 -8.82134533 -22.90287971
		 25.87355614 -6.38140154 -24.62305641 27.11639023 -12.1847086 -20.80125618 16.39917183
		 -13.51329422 -29.40945625 21.20288277 -7.73508358 -28.40887642 13.93559361 -13.16184902
		 -30.8062191 15.43645477 -6.79812479 -32.12412643 7.7771244 -13.65454197 -32.70363998
		 7.82335329 -12.4828434 -33.15768051 1.46923625 18.98483849 30.88487434 8.63168049
		 -24.88690567 24.95183563 9.67811394 -6.27803326 34.40026855 16.75218964 -31.89997673
		 4.26774836 2.59312224 -35.13877487 8.66026211 30.76786804 -18.87213516 3.69308925
		 35.98194885 3.45471096 -3.13406992 34.80311966 9.019770622 -4.88311863 23.97168732
		 24.35789299 12.18644238 0.71480232 32.22268677 16.66270065 7.92274809 6.026645184
		 34.89079666 22.36775398 -10.9376955 26.39144897 18.051185608 -1.82378328 31.42111778
		 23.73957443 -14.03756237 23.57620811 30.17105293 -1.20631349 20.11741638 17.44650269
		 6.12904549 31.21718216 31.5032692 0.98523927 17.97307396 25.22402 -1.06331563 26.059091568
		 33.071231842 1.63794613 14.8347187 31.41413116 7.54759026 16.51194382 35.86687469
		 5.46452904 0.40521926 34.87416458 10.012529373 0.0012691806 25.98987198 19.41698456
		 -16.24700928 29.4534893 20.67204285 -4.64937258 25.42841721 24.55340195 -8.18438244
		 23.55855751 26.28788185 -8.39045429 24.62247276 24.89258385 -9.51584148 24.94297028
		 26.34853935 -0.2465774 33.44142151 14.017495155 -1.28036642 31.56304359 -7.58168221
		 16.20957947 34.81297684 10.18381023 0.89705569 30.53959084 -10.445467 16.5735817
		 32.4368248 -8.49926186 13.85904694 35.91839981 4.82990551 -1.73167539 34.40716553
		 -5.8838973 9.89872742 34.48232269 9.31518364 -6.37612486 31.11544037 14.71090889
		 -11.48374939 28.50314903 17.361763 -14.23368263 21.16872025 10.80741215 -27.41428947
		 23.74692917 21.30027962 -17.28697968 15.16718483 15.39981937 -29.14206886 19.22372055
		 23.24816132 -20.16009903 21.81429863 6.30052376 -28.30013847 19.13167191 4.20320559
		 -30.54128647 14.71115589 10.32002163 -31.52042389 13.9510231 12.63247204 -31.020116806
		 20.57709694 -4.98201847 -29.46558571 15.65696049 -4.12555456 -32.46994781 7.85095119
		 2.24412632 -35.35229111 13.22473335 10.87199593 -31.99006271 7.75195456 -10.68445396
		 -33.79656219 12.15173817 13.54409599 -31.39029884 10.78641224 19.6417675 -28.53615952
		 7.56211853 29.8372879 -19.20960045 7.5030899 33.15365601 -12.68845749 8.58540058
		 34.79094696 -5.68674088 8.46177006 35.049129486 -4.051533222 8.93189716 35.1620903
		 0.55376816 6.0095677376 33.40647888 12.81991386 4.73781633 27.41123772 23.29453278
		 8.078212738 18.32884598 30.25316238 7.94239759 19.8686409 29.30210686 10.96705532
		 18.58401489 29.16875458 17.47116089 3.11891341 31.64631081 -0.013505144 -24.98296738
		 26.31176949 -12.057758331 -30.049404144 16.37381935 1.21155345 -33.92469406 12.81035805
		 -5.45270395 -32.48555756 15.21231842 17.41936874 -31.11925125 6.67951012 19.89609718
		 -27.91046906 11.89996147 1.2190268 -32.55861664 15.9658556 30.7682209 -19.0031585693
		 2.94187951 30.82214928 -17.51558685 7.72382832 31.62322998 -13.96474075 11.018864632
		 25.61697197 -6.72899294 24.79817772 22.87276077 -23.12211227 16.083000183 27.063171387
		 11.59321117 21.20472527 20.20902252 25.89120293 15.41749096 17.070314407 27.44993782
		 16.47917747 22.36675262 20.63027382 19.76305199 -0.89770406 34.352211 11.64379311
		 -16.747509 13.75782394 29.098133087 12.96081448 27.17564392 20.24746132 -7.62401676
		 34.15028 9.59639263 -30.41689301 5.28903103 19.060348511 -20.50800896 27.78159523
		 11.13833809 -29.51107788 -4.31477642 20.66245651 -30.28868866 -4.014297485 19.56882095
		 -20.8607235 3.6344099 29.46318817 -22.98255539 -5.58781767 27.51429749 -25.4874382
		 -14.90325451 21.088895798 -27.15652847 -12.70769596 20.43270683 -11.15822029 -6.29210854
		 33.94645309 -9.3574934 -13.02705574 32.54521942 -5.86301804 -20.31643295 29.48433113;
	setAttr ".n[664:794]" -type "float3"  -19.43574905 -24.24739265 18.72895241
		 17.77729797 -1.98096466 31.56741333 17.91917992 -1.65774596 31.50576019 9.48154831
		 -4.070658684 34.78488159 6.80602837 19.34247398 29.93333817 -9.92612076 1.39130974
		 34.87111282 -5.17262983 31.28667641 17.63081932 12.98154068 8.3164463 32.84469986
		 -8.62824821 34.21974564 8.42736816 -11.22316933 33.90316772 6.408885 -5.34061003
		 34.045501709 11.3507576 -2.1952374 27.86662865 23.13201523 -20.73604584 -23.019651413
		 18.88306236 -13.020419121 -29.017787933 17.46123886 -21.94469643 -21.12597466 19.71247292
		 13.89023018 -23.52264404 23.87896156 -12.16152954 -26.82416344 21.19007874 20.13195038
		 -10.3390398 28.35960197 2.98956728 -8.50718594 35.14468002 19.14029694 19.52852821
		 23.84834862 -27.81698418 -11.86444378 20.047655106 17.24173355 19.019561768 25.64053535
		 10.83955383 25.85389709 23.033412933 21.20630836 27.3681488 10.85057831 11.19704628
		 32.44272232 11.77090073 21.0092258453 29.36075974 3.60782051 13.23538017 33.77804565
		 0.57134259 20.72560501 29.77489471 0.60249317 12.42967033 33.93772888 -3.19246793
		 19.69821167 30.45479202 -0.97162503 11.82635212 33.95422363 -4.86890268 19.076133728
		 30.51473045 -4.627141 10.86479759 32.40594482 -12.17657852 19.1924572 27.39411163
		 -14.059529305 11.75197983 28.86643028 -18.57628441 13.30844402 19.025650024 -27.88132095
		 24.48313713 23.88801003 -12.099464417 28.90523338 18.41394043 -11.91102028 24.52469254
		 26.60971451 -2.63072157 29.4480648 20.27908516 -6.16669703 23.63945389 27.52500534
		 0.09167055 28.12949181 22.86210442 -1.5855546 23.049877167 27.98576164 1.39939642
		 26.25510025 25.03730011 0.51123208 23.38345337 27.3604908 4.59082556 25.071775436
		 26.028743744 3.22005391 24.35978699 24.68418694 10.66535664 26.21136284 22.41592026
		 11.26716232 20.69176102 17.65553093 24.012317657 25.350214 19.21417618 17.45394516
		 26.68991661 13.48470116 20.54919243 26.87110329 13.93754578 20.0036678314 30.42773628
		 12.61727428 15.21234322 34.051914215 12.5021286 -0.78864437 30.50184441 11.46467304
		 15.95796967 31.75100899 6.79007578 -16.19340515 33.16265488 -10.378232 10.43976307
		 30.34300041 11.17309284 16.45972061 34.59469986 6.13367462 9.057761192 28.68410873
		 18.69585228 12.0060453415 34.081123352 7.012639523 10.28387451 28.66961479 21.77548981
		 4.50991392 34.31612778 9.064850807 7.52926493 29.19070816 21.54857826 0.13957012
		 34.32218552 11.73770809 0.8196336 30.64162254 19.31369591 -2.12844491 34.22423935
		 11.8652277 -2.091861248 31.97056007 16.47377968 -4.79123497 34.40457916 10.6053524
		 -4.50660038 31.71352196 15.19197559 -8.93949127 33.63485718 -6.23030424 12.097013474
		 32.46580887 -9.65119743 13.010906219 30.59941101 7.30159569 -18.078186035 32.66024017
		 -11.068798065 11.28044605 34.75339508 8.17681026 -6.46523571 33.98180771 -7.35656309
		 10.37187481 28.14179802 16.97256279 -15.37626266 34.0087089539 -6.067837715 11.092660904
		 31.085037231 -11.2411747 14.96043396 30.76717186 -11.68413353 15.27482414 31.127388
		 -11.7541914 14.47006416 31.53222275 -11.33985901 13.91346741 35.71170044 -1.78482103
		 -6.16009569 34.30177307 -11.5863657 -2.36699247 28.35068703 -22.64264297 0.085270979
		 24.17815399 -17.053440094 21.0013141632 21.40361023 -18.33487511 22.85116768 25.92318916
		 -3.77930164 25.10305214 33.83145905 -10.98724461 7.15337658 26.65840149 1.53536916
		 24.56481743 31.29513931 1.35779393 18.30925369 23.37075615 2.68547583 27.62343216
		 24.79455566 2.056219101 26.4094696 27.67167282 -2.19687295 23.36472321 25.10790634
		 -3.10465145 26.0079269409 28.12621498 -7.24309921 21.74653244 32.60675812 3.83596134
		 15.44482803 32.1355629 4.68222427 16.18148422 33.2855835 -10.80651569 9.57847118
		 19.4369545 -30.6155014 1.16354811 30.87593079 -18.67457581 3.79409623 31.98803902
		 -16.98031998 -2.21183634 32.55554199 -15.73676491 2.99147797 -0.75924742 -35.38451004
		 -7.9886322 -0.66829211 -35.47911835 -7.56595564 -1.073886395 -35.40076065 -7.8797884
		 -0.79108012 -35.492836 -7.48939037 -2.090377331 -35.52350998 -7.082986832 -0.62960392
		 -35.58768463 -7.041198254 -0.33197656 -35.78870392 -5.95957136 -0.60373491 -35.578022
		 -7.092099667 -34.93172073 -9.10861588 -3.64226484 -30.8694191 -16.7177639 -9.16806507
		 -35.62347412 1.47227001 6.72744465 -35.74723434 -6.13511562 -0.97657359 -33.39529037
		 -13.68626976 -3.72809124 -31.89821243 -3.70321846 16.88929749 -31.89821243 -3.70321846
		 16.88929749 -31.89821243 -3.70321846 16.88929749 -31.89821243 -3.70321846 16.88929749
		 -31.89821243 -3.70321846 16.88929749 -31.89821243 -3.70321846 16.88929749 -31.89821243
		 -3.70321846 16.88929749 -31.89821243 -3.70321846 16.88929749 -9.65445995 1.52906191
		 34.94154358 -31.89821243 -3.70321846 16.88929749 -9.65445995 1.52906191 34.94154358
		 -31.89821243 -3.70321846 16.88929749 -9.65445995 1.52906191 34.94154358 -31.89821243
		 -3.70321846 16.88929749 -31.89821243 -3.70321846 16.88929749;
	setAttr -s 781 -ch 3120 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 -648 648 -652 0
		f 4 -1 2 3 -2
		f 4 6 4 -322 5
		f 4 8 -100 -185 185
		f 4 9 10 -102 -9
		f 4 12 11 711 -10
		f 4 14 -600 -627 -14
		f 4 15 -235 16 17
		f 4 -18 19 -22 -19
		f 4 814 21 22 -21
		f 4 -560 23 24 25
		f 4 28 29 30 -28
		f 4 26 478 31 32
		f 4 -33 -546 33 -29
		f 4 38 36 37 249
		f 4 39 40 -708 -653
		f 4 43 44 45 -43
		f 4 -765 46 252 -44
		f 4 -370 -374 48 -365
		f 4 55 49 50 51
		f 4 -52 52 53 54
		f 4 57 58 59 -57
		f 4 60 62 63 -62
		f 4 67 64 65 66
		f 4 762 69 -42 70
		f 4 71 -151 72 73
		f 4 76 74 75 -74
		f 4 77 -725 78 -143
		f 4 80 79 137 -79
		f 4 -82 82 -718 83
		f 4 85 84 133 -84
		f 4 -86 86 -715 87
		f 4 89 88 -133 -88
		f 4 -90 91 92 93
		f 4 -94 94 -110 -91
		f 4 -93 95 96 97
		f 4 -98 98 7 -95
		f 4 -97 -181 99 100
		f 4 -101 101 102 -99
		f 4 -11 103 104 105
		f 4 106 -8 -103 -106
		f 4 107 108 109 -107
		f 4 110 111 -130 -109
		f 4 -112 112 113 114
		f 4 118 116 117 115
		f 3 -119 -915 119
		f 4 120 -127 -120 916
		f 4 123 124 125 122
		f 4 -126 -117 126 121
		f 4 127 -115 -118 -125
		f 4 128 -89 90 129
		f 4 -129 -128 -747 130
		f 4 -131 131 -85 132
		f 4 -134 134 747 135
		f 4 136 -80 81 -136
		f 4 -138 138 139 140
		f 4 -141 141 -75 142
		f 4 -142 143 -759 144
		f 4 145 -72 -76 -145
		f 4 -146 146 147 148
		f 4 -149 149 -36 150
		f 4 151 154 35 942
		f 4 945 152 153 -152
		f 4 -154 155 671 156
		f 4 -157 -678 -729 -155
		f 4 158 159 160 -158
		f 4 162 163 164 -162
		f 4 166 167 168 -166
		f 4 169 170 -722 -169
		f 4 -168 171 -695 172
		f 4 -173 173 174 -170
		f 4 177 175 176 -175
		f 4 -178 178 -701 179
		f 4 181 180 712 -180
		f 4 -182 182 183 184
		f 4 186 187 188 -186
		f 4 189 190 -13 -189
		f 4 192 193 -12 191
		f 4 194 195 196 -194
		f 4 -196 -318 197 198
		f 4 199 200 201 -199
		f 4 202 203 204 -200
		f 4 206 -111 205 -205
		f 4 -204 -313 207 208
		f 4 -209 209 -113 -207
		f 4 -210 210 -214 211
		f 4 212 -116 -114 -212
		f 4 229 230 -16 -229
		f 4 231 232 233 234
		f 4 -234 235 -355 236
		f 4 237 238 -17 -237
		f 4 239 240 -20 -239
		f 4 241 242 -23 -241
		f 4 243 244 245 -243
		f 4 246 710 20 -246
		f 4 -245 -56 440 247
		f 4 -248 248 -38 -247
		f 4 250 251 -47 -250
		f 4 253 254 255 -253
		f 4 256 257 -45 -256
		f 4 -255 258 261 259
		f 4 -260 -48 260 -257
		f 4 262 263 264 -262
		f 4 -264 -422 -31 265
		f 4 -266 266 267 268
		f 4 -269 269 47 -265
		f 4 -268 270 557 271
		f 4 -272 272 -4 -270
		f 4 -273 273 274 275
		f 4 277 276 1 -276
		f 4 278 279 -643 -645
		f 4 280 281 282 -280
		f 4 285 284 637 283
		f 4 -621 286 -188 -286
		f 4 -623 287 -190 -287
		f 4 -288 288 -596 289
		f 4 290 -192 -191 -290
		f 4 292 -321 -193 291
		f 4 293 294 -6 -293
		f 4 -594 295 -7 -295
		f 4 -517 296 297 -296
		f 4 -297 298 512 299
		f 4 302 300 301 -300
		f 4 -303 303 304 305
		f 4 306 307 -317 -306
		f 4 308 -217 -311 -307
		f 4 -216 -312 309 310
		f 4 -215 -211 -208 311
		f 4 -310 312 313 -308
		f 4 314 315 -301 316
		f 4 -316 317 318 319
		f 4 -319 -195 320 321
		f 4 -314 -203 -198 -315
		f 3 322 323 -220
		f 4 324 325 -221 -324
		f 4 326 327 -222 -326
		f 4 328 329 -223 -328
		f 4 330 331 -224 -330
		f 4 332 333 -225 -332
		f 4 334 335 -226 -334
		f 4 336 337 -227 -336
		f 4 338 -230 -228 -338
		f 4 -339 339 340 341
		f 4 342 343 345 344
		f 4 -345 -232 -231 -342
		f 4 346 347 -233 -346
		f 4 348 349 -236 -348
		f 4 -350 350 351 352
		f 4 -353 353 358 354
		f 4 -354 355 356 357
		f 4 -358 359 360 361
		f 4 -362 362 -238 -359
		f 4 -361 363 364 365
		f 4 -366 366 -240 -363
		f 4 -364 367 368 369
		f 4 370 371 372 373
		f 4 -373 -50 -244 -375
		f 4 -369 375 -59 -371
		f 4 376 377 378 -376
		f 4 379 380 -60 -379
		f 4 383 381 382 -381
		f 4 -384 385 386 387
		f 4 -388 388 389 -385
		f 4 -389 390 391 392
		f 4 395 393 394 -393
		f 4 -397 398 399 400
		f 4 -401 401 402 -398
		f 4 -402 403 404 405
		f 4 406 407 408 -406
		f 4 409 410 411 -407
		f 4 412 413 414 -412
		f 4 -411 448 -349 415
		f 4 -416 -347 416 -413
		f 4 418 417 -408 -415
		f 4 -419 420 421 422
		f 4 -423 -263 423 -420
		f 4 -429 424 -418 419
		f 4 425 426 427 428
		f 4 -428 429 430 431
		f 4 -431 432 433 397
		f 4 -433 434 438 435
		f 4 -436 -61 436 437
		f 4 -438 -394 396 -434
		f 4 439 -55 -63 -439
		f 4 -440 441 442 -441
		f 4 443 -251 -249 -443
		f 4 -444 444 -427 445
		f 4 -442 -435 -430 -445
		f 4 446 -254 -252 -446
		f 4 -426 -424 -259 -447
		f 4 -432 -403 -409 -425
		f 4 -414 447 27 -421
		f 4 -417 -344 -27 -448
		f 4 -410 -405 449 450
		f 4 -451 451 -351 -449
		f 4 -452 452 453 454
		f 4 455 456 457 458
		f 4 -459 -356 -352 -455
		f 4 459 460 -357 -458
		f 4 -457 461 462 463
		f 4 -464 464 -378 -460
		f 4 -463 467 465 466
		f 4 -467 -386 -380 -465
		f 4 -462 470 -66 468
		f 4 -469 469 -69 -468
		f 4 -456 -454 471 -471
		f 4 -453 -450 472 473
		f 4 -474 474 -67 -472
		f 4 -473 -404 -400 475
		f 4 -476 476 -68 -475
		f 4 -399 -396 477 -477
		f 4 -392 -470 -65 -478
		f 4 -437 61 -390 -395
		f 4 -387 -466 68 -391
		f 4 -64 -54 -382 384
		f 4 -377 -368 -360 -461
		f 4 -343 -341 479 -479
		f 4 480 481 483 -480
		f 4 -340 -337 482 -481
		f 4 484 485 488 -482
		f 4 -483 -335 486 -485
		f 4 -486 489 490 -488
		f 4 -490 -487 -333 491
		f 4 -491 493 494 -493
		f 4 -494 -492 -331 495
		f 4 -495 497 498 -497
		f 4 -498 -496 -329 499
		f 4 -499 501 502 -501
		f 4 -502 -500 -327 503
		f 4 504 505 507 -503
		f 4 -504 -325 506 -505
		f 4 508 509 511 -506
		f 4 -507 -323 510 -509
		f 4 -510 513 -304 -513
		f 4 -514 -511 -219 514
		f 4 -299 515 519 -512
		f 4 -516 516 517 518
		f 4 -519 520 521 522
		f 4 -523 523 -508 -520
		f 4 -522 524 525 526
		f 4 -527 527 500 -524
		f 4 -526 528 529 530
		f 4 -531 531 496 -528
		f 4 -530 532 533 534
		f 4 -535 535 492 -532
		f 4 -534 536 537 538
		f 4 -539 539 487 -536
		f 4 -538 540 541 542
		f 4 -543 543 -489 -540
		f 4 -542 544 545 546
		f 4 -547 -32 -484 -544
		f 4 -545 547 548 549
		f 4 550 551 552 553
		f 4 -554 554 -34 -550
		f 4 -553 556 -271 555
		f 4 -556 -267 -30 -555
		f 4 -557 558 559 560
		f 4 -561 -26 -274 -558
		f 4 -559 -552 562 -562
		f 4 -563 564 565 -564
		f 4 567 568 569 -567
		f 4 570 571 574 -570
		f 4 -569 -548 -541 572
		f 4 -573 -537 573 -571
		f 4 575 576 578 -572
		f 4 -574 -533 577 -576
		f 4 579 580 582 -577
		f 4 -578 -529 581 -580
		f 4 583 586 585 -581
		f 4 -582 -525 584 -584
		f 4 -587 588 589 -588
		f 4 -589 -585 -521 590
		f 4 -590 592 -294 -592
		f 4 -593 -591 -518 593
		f 4 591 -292 -291 594
		f 4 595 596 587 -595
		f 4 -625 597 -586 -597
		f 4 -628 598 -583 -598
		f 4 599 600 -579 -599
		f 4 601 602 -575 -601
		f 4 603 -566 566 -603
		f 4 604 605 608 563
		f 4 -606 606 -616 607
		f 4 -608 609 610 611
		f 4 -612 -24 561 -609
		f 4 612 -275 -25 -611
		f 4 614 -281 613 -610
		f 4 -615 615 636 616
		f 4 617 -284 -282 -617
		f 4 -618 618 619 620
		f 4 -620 -629 621 622
		f 4 -622 623 624 -289
		f 4 -624 625 626 627
		f 4 -626 628 629 630
		f 4 631 -607 632 633
		f 4 -634 634 13 -631
		f 4 -633 -605 -604 635
		f 4 -636 -602 -15 -635
		f 4 -632 -630 -619 -637
		f 4 -614 -279 -278 -613
		f 4 -565 -551 -549 -568
		f 4 -218 -309 -305 -515
		f 4 -320 -5 -298 -302
		f 4 638 639 -283 -638
		f 4 -640 640 641 642
		f 4 -642 643 -277 644
		f 4 -644 645 646 647
		f 4 -40 649 650 651
		f 4 -650 652 653 654
		f 4 -655 656 -258 655
		f 4 -656 -261 -3 -651
		f 4 -654 -707 657 658
		f 4 -659 659 -46 -657
		f 4 -658 -687 660 661
		f 4 -662 662 663 -660
		f 4 -663 664 -710 665
		f 4 -666 666 -837 667
		f 4 -668 41 42 -664
		f 4 -671 672 673 674
		f 4 -675 675 676 -672
		f 4 678 -159 677 -677
		f 4 -679 679 680 681
		f 4 683 684 685 -683
		f 4 -685 686 -706 687
		f 4 689 -172 688 -688
		f 4 -690 690 691 692
		f 4 695 693 694 -693
		f 4 -696 704 -647 697
		f 4 -698 698 699 -697
		f 4 701 -183 700 -700
		f 4 -702 702 -639 703
		f 4 -699 -646 -641 -703
		f 4 -692 -41 -649 -705
		f 4 -691 705 706 707
		f 4 696 -179 -174 -694
		f 4 -689 -167 -164 -686
		f 4 -681 -665 -661 -684
		f 4 682 -163 -160 -682
		f 4 -680 -676 708 709
		f 4 -674 -669 -667 -709
		f 4 670 -156 -153 -670
		f 4 -285 -187 -184 -704
		f 4 -242 -367 -49 374
		f 4 -206 -108 -105 -201
		f 4 -197 -202 -104 -712
		f 4 -96 713 -176 -713
		f 4 -714 -92 714 715
		f 4 716 -171 -177 -716
		f 4 -717 -87 717 718
		f 4 -719 719 720 721
		f 4 722 -165 165 -721
		f 4 -723 723 724 725
		f 4 726 -161 161 -726
		f 4 727 -73 728 157
		f 4 -727 -78 -77 -728
		f 4 -720 -83 -81 -724
		f 4 -734 735 736 737
		f 4 -738 738 -121 -735
		f 4 -737 -762 739 740
		f 4 -741 741 -122 -739
		f 4 -740 -749 742 743
		f 4 -744 744 -123 -742
		f 4 -745 745 746 -124
		f 4 -746 -743 -135 -132
		f 4 -748 748 749 750
		f 4 751 752 753 754
		f 4 -755 -139 -137 -751
		f 4 755 -144 -140 -754
		f 4 -756 756 -731 757
		f 4 -758 -730 -147 758
		f 4 -753 759 -732 -757
		f 4 760 -736 -733 -760
		f 4 -761 -752 -750 761
		f 4 765 764 -70 763
		f 4 774 766 -39 -766
		f 4 775 767 768 -767
		f 4 770 771 -763 -770
		f 4 772 773 -764 -772
		f 4 -776 776 777 778
		f 4 -778 779 780 781
		f 3 -781 782 783
		f 4 784 -771 -1559 -783
		f 4 -780 -35 -773 -785
		f 4 -775 -774 34 -777
		f 4 1547 -711 -37 -769
		f 4 -58 785 -51 -372
		f 4 56 -383 -53 -786
		f 4 786 787 788 789
		f 4 790 -1061 842 -787
		f 4 796 793 794 795
		f 4 801 798 799 800
		f 4 -801 802 900 803
		f 4 -804 804 -987 -984
		f 4 805 807 1394 -807
		f 4 808 809 810 -1013
		f 4 18 811 812 -809
		f 4 813 815 -812 -815
		f 4 -1353 817 818 819
		f 4 821 822 823 824
		f 4 825 -1341 826 -821
		f 4 -825 827 828 -826
		f 4 831 -1034 832 833
		f 4 834 835 -1491 1438
		f 4 837 838 -1042 839
		f 4 -840 841 -1037 -841
		f 4 844 845 846 847
		f 4 848 849 850 851
		f 4 -1231 852 853 -849
		f 4 854 856 857 -856
		f 4 859 1271 860 -859
		f 4 864 861 862 863
		f 4 -71 -1459 -1542 866
		f 4 869 -1512 868 -868
		f 4 -870 870 -936 871
		f 4 872 874 877 -874
		f 4 -875 875 876 879
		f 4 882 880 881 878
		f 4 -883 883 -928 884
		f 4 886 885 -1504 -885
		f 4 -887 887 888 889
		f 4 891 892 -1500 -890
		f 4 890 1539 893 -892
		f 4 894 896 1496 -893
		f 4 -894 -798 895 -895
		f 4 897 -800 898 -897
		f 4 -896 899 -803 -898
		f 4 903 901 902 -901
		f 4 -904 -900 797 904
		f 4 -905 -1540 906 -906
		f 4 -907 -793 908 -908
		f 4 910 909 -1005 -909
		f 4 -912 912 -922 913
		f 4 915 914 -1011 -914
		f 4 -917 -916 918 -918
		f 4 791 919 922 -1525
		f 4 920 -919 921 -920
		f 4 -923 -913 -911 923
		f 4 792 -891 -889 -925
		f 4 925 926 -924 924
		f 4 -888 927 928 -926
		f 4 930 929 -1526 -884
		f 4 -931 -879 -877 931
		f 4 932 933 934 -876
		f 4 -873 935 936 -933
		f 4 939 937 938 -937
		f 4 -940 -871 867 -941
		f 4 941 -148 -1536 940
		f 4 -869 830 -150 -942
		f 4 -943 -831 943 944
		f 4 -945 946 947 -946
		f 4 948 949 950 -947
		f 4 -944 951 952 -949
		f 4 953 954 955 -1464
		f 4 956 958 959 -958
		f 4 960 962 963 -962
		f 4 -963 964 965 966
		f 4 967 968 -1475 -964
		f 4 -967 969 972 -968
		f 4 -970 970 -1498 971
		f 4 975 973 974 -972
		f 4 -976 976 -899 977
		f 4 -799 978 -1484 -978
		f 4 -802 980 981 -980
		f 4 -981 983 984 -983
		f 4 -986 986 987 988
		f 4 -988 989 990 -1114
		f 4 992 991 -1115 -991
		f 4 -993 993 994 995
		f 4 -996 997 1000 -997
		f 4 -998 998 907 999
		f 4 1001 1002 1003 -1001
		f 4 -1000 1004 1005 -1002
		f 4 1008 1006 1007 -1006
		f 4 -1009 -910 911 1009
		f 4 1010 -213 -1107 -1010
		f 4 228 1012 1013 -1012
		f 4 -811 1015 1016 -1015
		f 4 1019 1017 1018 -1016
		f 4 -1020 -810 1021 -1021
		f 4 -1022 -813 1023 -1023
		f 4 -1024 -816 1025 -1025
		f 4 -1026 1027 1028 -1027
		f 4 -1028 -814 1029 1030
		f 4 1031 1032 -852 -1029
		f 4 -1031 1033 1034 -1032
		f 4 -832 1036 1037 -1036
		f 4 -842 1039 1040 -1039
		f 4 -1040 1041 1042 1043
		f 4 1044 1045 1047 -1041
		f 4 -1044 1046 843 -1045
		f 4 -1046 1049 1050 -1049
		f 4 1051 -823 1052 -1051
		f 4 1053 1054 1055 -1052
		f 4 -1050 -844 1056 -1054
		f 4 1057 1058 1059 -1055
		f 4 -1057 1060 1061 -1058
		f 4 1063 -1408 1062 -1062
		f 4 -1064 -791 -1435 1064
		f 4 1065 816 1067 -1067
		f 4 -1068 -1432 1069 -1069;
	setAttr ".fc[500:780]"
		f 4 -1071 1071 1429 1072
		f 4 -1073 -982 1074 -1074
		f 4 -1075 982 1076 -1076
		f 4 1077 1388 -1418 -1077
		f 4 -1078 -985 985 1078
		f 4 -1080 -989 1080 1081
		f 4 -1082 -797 1082 -1386
		f 4 -1083 -796 1084 -1084
		f 4 -1085 1086 1087 -1086
		f 4 1089 1088 1309 -1088
		f 4 -1090 1090 -1110 1091
		f 4 1093 1092 -1307 -1092
		f 4 -1094 1094 -1108 1095
		f 4 -1096 1097 1098 -1097
		f 4 -1098 1100 1101 1102
		f 4 1103 215 -1100 -1103
		f 4 -1102 -1003 -1008 1104
		f 4 1105 214 -1104 -1105
		f 4 -1007 1106 213 -1106
		f 4 1107 -1116 -1004 -1101
		f 4 -1095 1109 1110 -1109
		f 4 1112 1111 1114 -1111
		f 4 -794 -1081 1113 -1112
		f 4 1108 -992 996 1115
		f 4 1099 216 1116 -1099
		f 4 -1117 217 1118 -1118
		f 4 -1119 218 1120 -1120
		f 4 -1121 219 1122 -1122
		f 4 -1123 220 1124 -1124
		f 4 -1125 221 1126 -1126
		f 4 -1127 222 1128 -1128
		f 4 -1129 223 1130 -1130
		f 4 -1131 224 1132 -1132
		f 4 -1133 225 1134 -1134
		f 4 -1135 226 1136 -1136
		f 4 -1137 227 1011 -1138
		f 4 1139 1138 1275 1137
		f 4 1141 1142 1143 -1141
		f 4 -1140 -1014 1014 -1142
		f 4 -1143 -1017 1145 -1145
		f 4 -1146 -1019 1147 -1147
		f 4 1148 1149 -1242 -1148
		f 4 -1018 1150 1151 -1149
		f 4 1154 1152 1153 -1152
		f 4 1155 1156 1157 -1155
		f 4 -1151 1020 1158 -1156
		f 4 1159 -845 1160 -1157
		f 4 -1159 1022 1161 -1160
		f 4 -848 1163 1162 -1161
		f 4 -847 1165 1166 -1165
		f 4 1167 1026 -851 -1166
		f 4 1164 -858 1168 -1164
		f 4 -1169 1170 1171 -1170
		f 4 -1171 -857 1173 -1173
		f 4 -1174 1174 1175 1176
		f 4 1178 1179 -1258 -1177
		f 4 1177 1180 1181 -1179
		f 4 1183 1270 1182 -1182
		f 4 -1184 1184 1185 1187
		f 4 1189 1190 1191 1186
		f 4 1188 1192 1193 -1190
		f 4 1196 1194 1195 -1194
		f 4 -1197 1197 1198 1199
		f 4 -1200 1201 1202 -1201
		f 4 -1202 1203 1209 1204
		f 4 1205 1146 1206 -1203
		f 4 -1205 1238 1144 -1206
		f 4 -1204 -1199 1207 1208
		f 4 1211 -1053 1212 -1209
		f 4 1210 1215 1048 -1212
		f 4 -1211 -1208 1214 -1214
		f 4 1213 1217 1218 -1217
		f 4 1220 1221 1219 -1218
		f 4 -1189 1222 1223 -1222
		f 4 1224 1225 1228 -1224
		f 4 1226 1227 858 -1225
		f 4 -1223 -1187 -1186 -1227
		f 4 -1226 -861 1230 -1230
		f 4 -1033 1231 1233 1229
		f 4 -1232 -1035 1035 1232
		f 4 1235 -1219 1234 -1233
		f 4 -1235 -1220 -1229 -1234
		f 4 -1236 -1038 1038 1236
		f 4 -1237 -1048 -1216 1216
		f 4 -1215 -1198 -1193 -1221
		f 4 -1213 -822 1237 -1210
		f 4 -1238 820 -1144 -1239
		f 4 1239 1240 -1195 1200
		f 4 -1207 1241 1242 -1240
		f 4 1245 1243 1244 -1243
		f 4 1247 1248 1249 -1247
		f 4 -1246 -1150 -1154 -1248
		f 4 -1249 -1153 1251 -1251
		f 4 1252 1253 1259 -1250
		f 4 1250 -1172 1254 -1253
		f 4 1255 1258 1256 -1254
		f 4 -1255 1172 1257 -1256
		f 4 1260 -862 1261 -1260
		f 4 -1257 865 1262 -1261
		f 4 -1262 1263 -1244 1246
		f 4 1264 1265 -1241 -1245
		f 4 -1264 -865 1266 -1265
		f 4 1267 -1191 -1196 -1266
		f 4 -1267 -864 1268 -1268
		f 4 -1269 1269 -1188 -1192
		f 4 -1270 -863 -1263 -1271
		f 4 -1185 -1181 -860 -1228
		f 4 -1183 -866 -1259 -1180
		f 4 -1178 -1176 -853 -1272
		f 4 -1252 -1158 -1163 1169
		f 4 -827 1272 -1139 1140
		f 4 -1273 1273 1276 1274
		f 4 -1275 1280 1135 -1276
		f 4 -1277 1277 1278 1279
		f 4 -1280 1281 1133 -1281
		f 4 1282 1283 1284 -1279
		f 4 1285 1131 -1282 -1285
		f 4 1286 1287 1288 -1284
		f 4 1289 1129 -1286 -1289
		f 4 1290 1291 1292 -1288
		f 4 1293 1127 -1290 -1293
		f 4 1294 1296 1295 -1292
		f 4 1299 1125 -1294 -1296
		f 4 -1297 1297 1300 1298
		f 4 -1299 1303 1123 -1300
		f 4 -1301 1301 1304 1302
		f 4 -1303 1305 1121 -1304
		f 4 -1089 1306 1307 -1305
		f 4 1308 1119 -1306 -1308
		f 4 -1302 1310 1311 -1310
		f 4 1313 1312 1085 -1312
		f 4 1314 1317 1315 -1314
		f 4 -1311 -1298 1316 -1315
		f 4 1318 1321 1319 -1318
		f 4 -1317 -1295 1320 -1319
		f 4 1322 1325 1323 -1322
		f 4 -1321 -1291 1324 -1323
		f 4 1326 1329 1327 -1326
		f 4 -1325 -1287 1328 -1327
		f 4 1330 1331 1332 -1330
		f 4 -1329 -1283 1333 -1331
		f 4 1334 1337 1335 -1332
		f 4 -1334 -1278 1336 -1335
		f 4 1338 -829 1339 -1338
		f 4 -1337 -1274 1340 -1339
		f 4 1342 1341 -1366 -1340
		f 4 1344 1345 1349 -1344
		f 4 -1343 -828 1346 -1345
		f 4 1347 -1060 1348 -1346
		f 4 -1347 -824 -1056 -1348
		f 4 1350 -820 1351 -1349
		f 4 -1059 -1063 1352 -1351
		f 4 1353 1355 -1350 -1352
		f 4 1354 1356 1357 -1356
		f 4 1358 1360 1361 -1360
		f 4 -1361 1362 1366 1363
		f 4 1364 -1336 1365 -1362
		f 4 -1364 1369 -1333 -1365
		f 4 -1367 1367 1370 1368
		f 4 -1369 1373 -1328 -1370
		f 4 -1371 1371 1374 1372
		f 4 -1373 1377 -1324 -1374
		f 4 -1375 1375 1378 1376
		f 4 -1377 1379 -1320 -1378
		f 4 1380 1381 1382 -1379
		f 4 1383 -1316 -1380 -1383
		f 4 1384 1385 1386 -1382
		f 4 1083 -1313 -1384 -1387
		f 4 1387 -1079 1079 -1385
		f 4 -1388 -1381 1389 -1389
		f 4 -1390 -1376 1391 -1391
		f 4 -1392 -1372 1393 -1393
		f 4 -1394 -1368 1395 -1395
		f 4 -1396 -1363 1397 -1397
		f 4 -1398 -1359 -1357 -1399
		f 4 -1355 1400 1401 -1400
		f 4 1403 1402 -1426 -1402
		f 4 1404 1405 1408 -1404
		f 4 -1401 -1354 -819 -1405
		f 4 -1406 -818 1407 -1407
		f 4 -1409 1409 1068 1410
		f 4 1412 1411 -1403 -1411
		f 4 -1413 -1070 1070 1413
		f 4 1073 1414 -1429 -1414
		f 4 1075 1416 1415 -1415
		f 4 1417 1390 1418 -1417
		f 4 1392 -808 1419 -1419
		f 4 1421 1420 -1416 -1420
		f 4 1423 1424 1425 -1423
		f 4 -1422 -806 1426 -1424
		f 4 1427 1398 1399 -1425
		f 4 -1427 806 1396 -1428
		f 4 -1412 1428 -1421 1422
		f 4 1406 -1065 1066 -1410
		f 4 1359 -1342 1343 -1358
		f 4 -1309 -1093 1096 1117
		f 4 -1091 -1087 -795 -1113
		f 4 -1072 1431 1432 -1431
		f 4 -817 1433 -1489 -1433
		f 4 -1066 1434 1435 -1434
		f 4 -790 1437 1436 -1436
		f 4 -788 1439 1440 -1439
		f 4 1441 1444 -835 -1441
		f 4 1442 -1043 1443 -1442
		f 4 -1440 -843 -1047 -1443
		f 4 1445 1448 1446 -1445
		f 4 -1444 -839 1447 -1446
		f 4 1449 1450 1451 -1449
		f 4 -1448 1452 1453 -1450
		f 4 1454 1455 1456 -1454
		f 4 1457 836 1459 -1455
		f 4 -1453 -838 1458 -1458
		f 4 1461 1495 -673 1460
		f 4 -950 1462 1465 -1462
		f 4 -1463 -953 1463 1464
		f 4 1467 1493 1466 -1465
		f 4 1468 1469 1470 1492
		f 4 1472 1471 -1452 -1471
		f 4 -1473 1473 1474 1475
		f 4 1476 1489 1491 -1476
		f 4 -1477 -969 1477 1478
		f 4 1480 -1438 1481 -1479
		f 4 1479 1482 1487 -1481
		f 4 -1483 -974 1483 1484
		f 4 1486 1430 1485 -1485
		f 4 -1486 1488 -1437 -1488
		f 4 -1482 -789 1490 -1490
		f 4 -836 -1447 -1472 -1492
		f 4 -1478 -973 -975 -1480
		f 4 -1470 -960 961 -1474
		f 4 -1493 -1451 -1457 -1494
		f 4 -1468 -956 957 -1469
		f 4 -1456 1494 -1466 -1467
		f 4 -1495 -1460 668 -1496
		f 4 669 -948 -951 -1461
		f 4 -1487 -979 979 -1430
		f 4 -1168 -846 -1162 1024
		f 4 -995 -902 905 -999
		f 4 -805 -903 -994 -990
		f 4 -977 1497 1498 -1497
		f 4 1500 -886 1499 -1499
		f 4 -1501 -971 -966 -1502
		f 4 1502 -881 1503 1501
		f 4 -965 1504 1505 -1503
		f 4 -1505 -961 -959 -1507
		f 4 1508 -878 1507 1506
		f 4 -1509 -957 -955 -1510
		f 4 -954 -952 1511 -1511
		f 4 1510 -872 873 1509
		f 4 -1508 -880 -882 -1506
		f 4 1512 1514 -1538 733
		f 4 734 917 1513 -1513
		f 4 1515 1516 1517 -1515
		f 4 -1514 -921 1518 -1516
		f 4 1519 1522 1520 -1517
		f 4 -1519 -792 1521 -1520
		f 4 1524 -927 1523 -1522
		f 4 -929 1525 -1523 -1524
		f 4 1527 1526 -1521 -930
		f 4 1529 1530 1531 -1529
		f 4 -1528 -932 -935 -1530
		f 4 -1531 -934 -939 -1533
		f 4 1533 730 1534 1532
		f 4 -938 1535 729 -1534
		f 4 -1535 731 1536 -1532
		f 4 -1537 732 1537 1538
		f 4 -1518 -1527 1528 -1539
		f 4 -1541 1541 840 1542
		f 4 -1543 -834 1544 -1544
		f 4 -1545 1546 -768 -1546
		f 4 769 -867 1549 -1549
		f 4 -1550 1540 1551 -1551
		f 4 -779 1553 1552 1545
		f 4 -782 1555 1554 -1554
		f 3 -784 1556 -1556
		f 4 -1557 1558 1548 -1558
		f 4 1557 1550 829 -1555
		f 4 -1553 -830 -1552 1543
		f 4 -1547 -833 -1030 -1548
		f 4 -1167 -850 1559 855
		f 4 -1560 -854 -1175 -855;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Saxophone_roto";
	rename -uid "A4D2AA9C-40DB-CB82-4DB5-69BFEE8FBF5C";
createNode transform -n "Mouth_piece" -p "Saxophone_roto";
	rename -uid "8BE4F18E-4395-123D-1D6F-D5B946C3F454";
	setAttr ".t" -type "double3" 5.1325469972787285 -11.706157036234057 3.8851173177852969 ;
	setAttr ".r" -type "double3" -26.838832440286225 -3.1805546814635176e-15 -88.068758680764873 ;
	setAttr ".s" -type "double3" 0.68756430013741088 0.68756430013741088 0.68756430013741088 ;
	setAttr ".rp" -type "double3" 5.9369640350341797 10.771255493164062 -0.44765114784240723 ;
	setAttr ".rpt" -type "double3" -0.74230962950724555 0.68521596414082353 0.34666846476953506 ;
	setAttr ".sp" -type "double3" 5.9369640350341797 10.771255493164062 -0.44765114784240723 ;
createNode mesh -n "Mouth_pieceShape" -p "Mouth_piece";
	rename -uid "21D0545C-446B-BA17-8BB1-0199B59A176A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:97]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.12330400198698044 0.77628898620605469 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 152 ".uvst[0].uvsp[0:151]" -type "float2" 0.15969799 0.77455801
		 0.196062 0.77679002 0.19288599 0.87852401 0.15895 0.88179302 0.23221999 0.781596
		 0.22668201 0.87100601 0.268933 0.78592002 0.26167199 0.86764997 0.050301999 0.78441602
		 0.087076001 0.78059798 0.091374002 0.87007099 0.056433 0.86623198 0.123304 0.77628899
		 0.125063 0.87805498 0.477911 0.87925398 0.47789899 0.91127002 0.34599099 0.90745902
		 0.345081 0.87924302 0.477038 0.94261497 0.347563 0.93573499 0.47454399 0.97335398
		 0.34761599 0.96411699 0.47455999 0.78515297 0.47704801 0.81589299 0.347572 0.822752
		 0.34762999 0.79437 0.47790399 0.847238 0.34599599 0.85102701 0.324541 0.90785801
		 0.32469401 0.87924099 0.32364699 0.93594199 0.32271001 0.963884 0.32365701 0.82253999
		 0.32272401 0.794599 0.32454601 0.85062498 0.50727201 0.87925601 0.50802398 0.91296798
		 0.50886399 0.94651198 0.50528902 0.97957897 0.50530601 0.77893299 0.50887501 0.81200099
		 0.50802898 0.84554499 0.19553 0.89999801 0.158788 0.90518302 0.229203 0.89078403
		 0.26219299 0.88634002 0.088578999 0.88981199 0.055654 0.88491303 0.122122 0.89949101
		 0.64134198 0.87926799 0.62751502 0.92843401 0.59649199 0.91898298 0.60404301 0.879264
		 0.59302402 0.96499097 0.57731998 0.95636302 0.56275302 0.99949098 0.55532098 0.99328601
		 0.56277299 0.759031 0.59303802 0.79353601 0.57733297 0.80216098 0.55533999 0.76523501
		 0.62752301 0.83009899 0.59649801 0.83954501 0.56546301 0.91562998 0.56614298 0.87926102
		 0.56243497 0.95339501 0.55119002 0.99145901 0.56244802 0.80512702 0.55120897 0.767061
		 0.56546903 0.842893 0.53661299 0.91540301 0.53413701 0.87925899 0.53930801 0.95117497
		 0.53412098 0.98725998 0.53931999 0.80734301 0.53413898 0.77125698 0.53661901 0.84311497
		 0.84136099 0.274138 0.84136099 0.247124 0.84798902 0.247124 0.84798902 0.274138 0.84136099
		 0.220063 0.84798902 0.220063 0.84136099 0.192908 0.84798902 0.192908 0.84136099 0.16575301
		 0.84798902 0.16575301 0.84136099 0.13869201 0.84798902 0.13869201 0.84136099 0.111678
		 0.84798902 0.111678 0.84136099 0.084894001 0.84798902 0.084894001 0.84136099 0.30092099
		 0.84798902 0.30092099 0.776779 0.071804002 0.796556 0.071877003 0.78667498 0.095810004
		 0.76279902 0.085793003 0.76280499 0.10565 0.77679402 0.119743 0.79657102 0.119817
		 0.81055099 0.105828 0.81054401 0.085970998 0.79661101 0.11972 0.77675402 0.119646
		 0.78667498 0.095810004 0.76270902 0.105609 0.76270199 0.085832 0.776739 0.071900003
		 0.79659599 0.071974002 0.81064099 0.086011 0.88299298 0.247124 0.88299298 0.220063
		 0.88962102 0.220063 0.88962102 0.247124 0.88299298 0.274138 0.88962102 0.274138 0.88299298
		 0.30092099 0.88962102 0.30092099 0.88299298 0.111678 0.88299298 0.084894001 0.88962102
		 0.084894001 0.88962102 0.111678 0.88299298 0.13869201 0.88962102 0.13869201 0.88299298
		 0.16575301 0.88962102 0.16575301 0.88299298 0.192908 0.88962102 0.192908 0.75221097
		 0.0078370003 0.82450801 0.0078149997 0.82159698 0.037257999 0.75108701 0.014174 0.83914798
		 0.063006997 0.83587903 0.0074729999 0.89472699 0.0074720001 0.89146 0.063005999 0.75108701
		 0.014162 0.82159299 0.03726 0.80652201 0.062720999 0.748245 0.019936001 0.83914697
		 0.063014999 0.83586103 0.0074820002 0.89471 0.0074629998 0.89145899 0.062997997 0.89520299
		 0.066248998 0.83540499 0.066249996 0.752213 0.0078250002 0.82450902 0.0078159999
		 0.80653203 0.062723003 0.74824601 0.019949;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[54:59]" -type "float3"  -0.0098175267 -0.51068991 
		0.3644079 -0.022902967 -0.79156721 0.059968442 -0.084559873 -0.55896628 -0.084076092 
		-0.0015137001 -0.20534043 0.30639094 -0.020510217 -0.83971214 0.31229225 -0.024244672 
		-1.0695174 0.52115881;
	setAttr -s 106 ".vt[0:105]"  5.45422792 12.44697571 0.055093735 5.90972805 12.32116699 -0.17584288
		 5.90972805 12.069549561 -0.63771582 5.45422792 11.94374084 -0.86865234 4.99872828 12.069549561 -0.63771582
		 4.99872828 12.32116699 -0.17584288 5.45422792 13.058807373 -1.8982296 5.73439741 12.89753723 -1.89823055
		 5.73439741 12.57498169 -1.89823055 5.45422792 12.41371155 -1.89823055 5.17405796 12.57498169 -1.89823055
		 5.17405796 12.89753723 -1.89823055 5.45422792 13.058914185 -3.31417084 5.71606159 12.90844727 -3.29959297
		 5.71606159 12.60752869 -3.27043343 5.45422792 12.45706177 -3.25585556 5.19239426 12.60752869 -3.27043343
		 5.19239426 12.90844727 -3.29959297 5.45422792 13.034667969 -3.52979088 5.71154594 12.88613892 -3.52734184
		 5.71154594 12.58905029 -3.52244568 5.45422792 12.44050598 -3.51999664 5.19691038 12.58905029 -3.52244568
		 5.19691038 12.88613892 -3.52734184 5.45422792 12.72988892 -0.15777087 5.88050652 12.59667969 -0.36358523
		 5.88050652 12.33024597 -0.77521372 5.45422792 12.19703674 -0.98102808 5.027949333 12.33024597 -0.77521324
		 5.027949333 12.59667969 -0.36358523 5.45422792 13.00053405762 -0.48621845 5.8512845 12.82183838 -0.62311554
		 5.8512845 12.46444702 -0.89690924 5.45422792 12.28575134 -1.033806801 5.057170868 12.46444702 -0.89690924
		 5.057170868 12.82183838 -0.62311554 5.45422792 13.12998962 -0.90780687 5.82206249 12.92433167 -0.94992638
		 5.82206249 12.51301575 -1.034165382 5.45422792 12.30735779 -1.076285362 5.086393356 12.51301575 -1.034165382
		 5.086393356 12.92433167 -0.94992638 5.45422792 13.11351013 -1.27447414 5.79284096 12.91850281 -1.27027512
		 5.79284096 12.52848816 -1.26187706 5.45422792 12.33348083 -1.25767899 5.11561489 12.52848816 -1.26187706
		 5.11561489 12.91850281 -1.27027512 5.45422792 13.097915649 -1.58229542 5.76361942 12.91976929 -1.57773304
		 5.76361942 12.56349182 -1.56860828 5.45422792 12.38534546 -1.56404591 5.1448369 12.56349182 -1.56860828
		 5.1448369 12.91976929 -1.57773304 5.45422792 10.78561401 0.38834906 5.93696404 10.78082275 0.10968244
		 5.93696404 10.77125549 -0.44765115 5.45422792 10.76647949 -0.72631788 4.97149181 10.77125549 -0.44765091
		 4.97149181 10.78082275 0.10968244 5.68465805 12.51228333 -3.98728561 5.78010511 12.74139404 -3.98728561
		 5.68465805 12.97050476 -3.98728561 5.45422792 13.065414429 -3.98728561 5.2237978 12.97050476 -3.98728561
		 5.12835121 12.74139404 -3.98728561 5.2237978 12.51228333 -3.98728561 5.45422792 12.41737366 -3.98728561
		 5.45422792 13.065414429 -3.52979088 5.2237978 12.51228333 -3.52979088 5.45422792 12.41737366 -3.52979088
		 5.45422792 12.74139404 -3.98728561 5.69995785 12.98571777 -3.59088326 5.80174255 12.74139404 -3.59088326
		 5.69995785 12.49707031 -3.59088326 5.45422792 12.39585876 -3.59088326 5.208498 12.49707031 -3.59088326
		 5.10671329 12.74139404 -3.59088326 5.208498 12.98571777 -3.59088326 5.45422792 13.086929321 -3.59088326
		 5.69995785 12.98571777 -3.92619324 5.80174255 12.74139404 -3.92619324 5.69995785 12.49707031 -3.92619324
		 5.45422792 12.39585876 -3.92619324 5.208498 12.49707031 -3.92619324 5.10671329 12.74139404 -3.92619324
		 5.208498 12.98571777 -3.92619324 5.45422792 13.086929321 -3.92619324 5.45422792 12.74139404 -3.52979088
		 5.68465805 12.97050476 -3.52979088 5.2237978 12.97050476 -3.52979088 5.12835121 12.74139404 -3.52979088
		 5.68465805 12.51228333 -3.52979088 5.78010511 12.74139404 -3.52979088 5.2083931 12.55854797 -3.98286438
		 5.23569775 12.76849365 -4.71322632 5.2083931 12.92422485 -3.98286438 5.6727581 12.76849365 -4.71322632
		 5.70006275 12.92422485 -3.98286438 5.70006275 12.55854797 -3.98286438 5.73523808 12.74139404 -3.94396973
		 5.17321777 12.74139404 -3.94396973 5.20442867 12.74139404 -4.71322632 5.23569775 12.71429443 -4.71322632
		 5.6727581 12.71429443 -4.71322632 5.70402718 12.74139404 -4.71322632;
	setAttr -s 204 ".ed";
	setAttr ".ed[0:165]"  55 1 0 1 0 0 0 54 0 56 2 0 2 1 0 57 3 0 3 2 0 58 4 0
		 4 3 0 59 5 0 5 4 0 0 5 0 6 7 0 7 13 0 13 12 0 12 6 0 7 8 0 8 14 0 14 13 0 8 9 0 9 15 0
		 15 14 0 9 10 0 10 16 0 16 15 0 10 11 0 11 17 0 17 16 0 11 6 0 12 17 0 13 19 0 19 18 0
		 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0 18 23 0 48 49 0
		 49 7 0 6 48 0 49 50 0 50 8 0 50 51 0 51 9 0 51 52 0 52 10 0 52 53 0 53 11 0 53 48 0
		 1 25 0 25 24 0 24 0 0 2 26 0 26 25 0 3 27 0 27 26 0 4 28 0 28 27 0 5 29 0 29 28 0
		 24 29 0 25 31 0 31 30 0 30 24 0 26 32 0 32 31 0 27 33 0 33 32 0 28 34 0 34 33 0 29 35 0
		 35 34 0 30 35 0 31 37 0 37 36 0 36 30 0 32 38 0 38 37 0 33 39 0 39 38 0 34 40 0 40 39 0
		 35 41 0 41 40 0 36 41 0 37 43 0 43 42 0 42 36 0 38 44 0 44 43 0 39 45 0 45 44 0 40 46 0
		 46 45 0 41 47 0 47 46 0 42 47 0 43 49 0 48 42 0 44 50 0 45 51 0 46 52 0 47 53 0 55 54 0
		 56 55 0 57 56 0 58 57 0 59 58 0 54 59 0 60 61 0 61 81 0 81 82 0 82 60 0 61 62 0 62 80 0
		 80 81 0 62 63 0 63 87 0 87 80 0 63 64 0 64 86 0 86 87 0 64 65 0 65 85 0 85 86 0 65 66 0
		 66 84 0 84 85 0 66 67 0 67 83 0 83 84 0 67 60 0 82 83 0 60 71 0 71 61 0 71 62 0 71 63 0
		 71 64 0 71 65 0 71 66 0 71 67 0 89 68 0 68 88 0 68 90 0 91 69 0 69 88 0 69 70 0 70 88 0
		 70 92 0 73 72 0 72 89 0 93 73 0 74 73 0 92 74 0 75 74 0 70 75 0 76 75 0 69 76 0 77 76 0
		 91 77 0 78 77 0;
	setAttr ".ed[166:203]" 90 78 0 79 78 0 68 79 0 72 79 0 80 72 0 73 81 0 74 82 0
		 75 83 0 76 84 0 77 85 0 78 86 0 79 87 0 89 88 0 90 88 0 91 88 0 88 92 0 93 89 0 92 93 0
		 90 91 0 103 94 0 94 101 0 101 102 0 95 96 0 96 98 0 98 97 0 97 95 0 105 100 0 100 99 0
		 99 104 0 99 94 0 102 95 0 97 105 0 98 100 0 101 96 0 102 103 0 104 105 0 103 104 0
		 102 105 0;
	setAttr -s 379 ".n";
	setAttr ".n[0:165]" -type "float3"  0 1.015748143 9.073730469 7.68496847
		 0.65843892 4.88589764 7.3122654 1.54814196 5.24387312 0 2.45454431 8.79428482 7.68496847
		 0.65843892 4.88589764 8.050732613 -0.097193137 -4.30586147 8.32409668 -0.49988952
		 -3.71802759 7.3122654 1.54814196 5.24387312 8.050732613 -0.097193137 -4.30586147
		 0 -0.45316017 -9.11914539 0 -1.57861006 -8.99289894 8.32409668 -0.49988952 -3.71802759
		 0 -0.45316017 -9.11914539 -8.050732613 -0.097193137 -4.30586147 -8.32409668 -0.49988952
		 -3.71802759 0 -1.57861006 -8.99289894 -8.050732613 -0.097193137 -4.30586147 -7.68496847
		 0.65843892 4.88589764 -7.3122654 1.54814196 5.24387312 -8.32409668 -0.49988952 -3.71802759
		 -7.68496847 0.65843892 4.88589764 0 1.015748143 9.073730469 0 2.45454431 8.79428482
		 -7.3122654 1.54814196 5.24387312 0 9.1275816 -0.22684486 7.90706587 4.55748606 -0.26807776
		 7.77350616 4.78729868 -0.13644473 0 9.12941647 -0.13433561 7.90706587 4.55748606
		 -0.26807776 7.88096189 -4.59681082 -0.35208657 8.014621735 -4.37121677 -0.15024991
		 7.77350616 4.78729868 -0.13644473 7.88096189 -4.59681082 -0.35208657 0 -9.12188435
		 -0.3942599 0 -9.12895966 -0.1623203 8.014621735 -4.37121677 -0.15024991 0 -9.12188435
		 -0.3942599 -7.88096189 -4.59681082 -0.35208657 -8.014621735 -4.37121677 -0.15024991
		 0 -9.12895966 -0.1623203 -7.88096189 -4.59681082 -0.35208657 -7.90706587 4.55748606
		 -0.26807776 -7.77350616 4.78729868 -0.13644473 -8.014621735 -4.37121677 -0.15024991
		 -7.90706587 4.55748606 -0.26807776 0 9.1275816 -0.22684486 0 9.12941647 -0.13433561
		 -7.77350616 4.78729868 -0.13644473 0 9.12941647 -0.13433561 7.77350616 4.78729868
		 -0.13644473 8.081912994 4.20932579 -0.57323408 0 9.074743271 -1.0066360235 7.77350616
		 4.78729868 -0.13644473 8.014621735 -4.37121677 -0.15024991 7.71974611 -4.87074137
		 0.21366055 8.081912994 4.20932579 -0.57323408 8.014621735 -4.37121677 -0.15024991
		 0 -9.12895966 -0.1623203 0 -9.11244297 0.57233924 7.71974611 -4.87074137 0.21366055
		 0 -9.12895966 -0.1623203 -8.014621735 -4.37121677 -0.15024991 -7.71974611 -4.87074137
		 0.21366055 0 -9.11244297 0.57233924 -8.014621735 -4.37121677 -0.15024991 -7.77350616
		 4.78729868 -0.13644473 -8.081912994 4.20932579 -0.57323408 -7.71974611 -4.87074137
		 0.21366055 -7.77350616 4.78729868 -0.13644473 0 9.12941647 -0.13433561 0 9.074743271
		 -1.0066360235 -8.081912994 4.20932579 -0.57323408 0 9.097624779 -0.77301639 7.83354759
		 4.60962963 -0.86668515 7.90706587 4.55748606 -0.26807776 0 9.1275816 -0.22684486
		 7.83354759 4.60962963 -0.86668515 7.87577581 -4.49412107 -1.067344069 7.88096189
		 -4.59681082 -0.35208657 7.90706587 4.55748606 -0.26807776 7.87577581 -4.49412107
		 -1.067344069 -9.1304028e-06 -9.054784775 -1.17268145 0 -9.12188435 -0.3942599 7.88096189
		 -4.59681082 -0.35208657 -9.1304028e-06 -9.054784775 -1.17268145 -7.87578487 -4.49411201
		 -1.067344069 -7.88096189 -4.59681082 -0.35208657 0 -9.12188435 -0.3942599 -7.87578487
		 -4.49411201 -1.067344069 -7.83354759 4.60962057 -0.86668515 -7.90706587 4.55748606
		 -0.26807776 -7.88096189 -4.59681082 -0.35208657 -7.83354759 4.60962057 -0.86668515
		 0 9.097624779 -0.77301639 0 9.1275816 -0.22684486 -7.90706587 4.55748606 -0.26807776
		 0 2.45454431 8.79428482 7.3122654 1.54814196 5.24387312 7.35726023 4.065357685 3.56481051
		 0 6.31766367 6.59176683 7.3122654 1.54814196 5.24387312 8.32409668 -0.49988952 -3.71802759
		 8.28722858 -1.17949271 -3.64621711 7.35726023 4.065357685 3.56481051 8.32409668 -0.49988952
		 -3.71802759 0 -1.57861006 -8.99289894 0 -4.2068696 -8.10348797 8.28722858 -1.17949271
		 -3.64621711 0 -1.57861006 -8.99289894 -8.32409668 -0.49988952 -3.71802759 -8.28722858
		 -1.17949271 -3.64621711 0 -4.2068696 -8.10348797 -8.32409668 -0.49988952 -3.71802759
		 -7.3122654 1.54814196 5.24387312 -7.35726023 4.065357685 3.56481051 -8.28722858 -1.17949271
		 -3.64621711 -7.3122654 1.54814196 5.24387312 0 2.45454431 8.79428482 0 6.31766367
		 6.59176683 -7.35726023 4.065357685 3.56481051 0 6.31766367 6.59176683 7.35726023
		 4.065357685 3.56481051 6.90489435 5.45731449 2.4298923 0 8.030353546 4.3448391 7.35726023
		 4.065357685 3.56481051 8.28722858 -1.17949271 -3.64621711 8.71208382 -1.22648704
		 -2.44123244 6.90489435 5.45731449 2.4298923 8.28722858 -1.17949271 -3.64621711 0
		 -4.2068696 -8.10348797 9.1304028e-06 -6.51529074 -6.3965044 8.71208382 -1.22648704
		 -2.44123244 0 -4.2068696 -8.10348797 -8.28722858 -1.17949271 -3.64621711 -8.71208382
		 -1.22648704 -2.44123244 9.1304028e-06 -6.51529074 -6.3965044 -8.28722858 -1.17949271
		 -3.64621711 -7.35726023 4.065357685 3.56481051 -6.90489435 5.45731449 2.4298923 -8.71208382
		 -1.22648704 -2.44123244 -7.35726023 4.065357685 3.56481051 0 6.31766367 6.59176683
		 0 8.030353546 4.3448391 -6.90489435 5.45731449 2.4298923 0 8.030353546 4.3448391
		 6.90489435 5.45731449 2.4298923 7.064292908 5.77391148 0.34910095 0 9.048794746 1.21800494
		 6.90489435 5.45731449 2.4298923 8.71208382 -1.22648704 -2.44123244 8.57742023 -2.73450089
		 -1.52138078 7.064292908 5.77391148 0.34910095 8.71208382 -1.22648704 -2.44123244
		 9.1304028e-06 -6.51529074 -6.3965044 0 -8.8430233 -2.27269411 8.57742023 -2.73450089
		 -1.52138078 9.1304028e-06 -6.51529074 -6.3965044 -8.71208382 -1.22648704 -2.44123244
		 -8.57742023 -2.73450089 -1.52138078 0 -8.8430233 -2.27269411 -8.71208382 -1.22648704
		 -2.44123244 -6.90489435 5.45731449 2.4298923 -7.064301968 5.77391148 0.34910095 -8.57742023
		 -2.73450089 -1.52138078 -6.90489435 5.45731449 2.4298923 0 8.030353546 4.3448391;
	setAttr ".n[166:331]" -type "float3"  0 9.048794746 1.21800494 -7.064301968
		 5.77391148 0.34910095 0 9.048794746 1.21800494 7.064292908 5.77391148 0.34910095
		 7.69403505 4.85699034 -0.75869989 0 9.11719036 -0.49106959 7.064292908 5.77391148
		 0.34910095 8.57742023 -2.73450089 -1.52138078 7.96519852 -4.28882408 -1.2352339 7.69403505
		 4.85699034 -0.75869989 8.57742023 -2.73450089 -1.52138078 0 -8.8430233 -2.27269411
		 0 -9.019550323 -1.41845369 7.96519852 -4.28882408 -1.2352339 0 -8.8430233 -2.27269411
		 -8.57742023 -2.73450089 -1.52138078 -7.96519852 -4.28882408 -1.2352339 0 -9.019550323
		 -1.41845369 -8.57742023 -2.73450089 -1.52138078 -7.064301968 5.77391148 0.34910095
		 -7.69403505 4.85699034 -0.75869989 -7.96519852 -4.28882408 -1.2352339 -7.064301968
		 5.77391148 0.34910095 0 9.048794746 1.21800494 0 9.11719036 -0.49106959 -7.69403505
		 4.85699034 -0.75869989 0 9.11719036 -0.49106959 7.69403505 4.85699034 -0.75869989
		 7.83354759 4.60962963 -0.86668515 0 9.097624779 -0.77301639 7.69403505 4.85699034
		 -0.75869989 7.96519852 -4.28882408 -1.2352339 7.87577581 -4.49412107 -1.067344069
		 7.83354759 4.60962963 -0.86668515 7.96519852 -4.28882408 -1.2352339 0 -9.019550323
		 -1.41845369 -9.1304028e-06 -9.054784775 -1.17268145 7.87577581 -4.49412107 -1.067344069
		 0 -9.019550323 -1.41845369 -7.96519852 -4.28882408 -1.2352339 -7.87578487 -4.49411201
		 -1.067344069 -9.1304028e-06 -9.054784775 -1.17268145 -7.96519852 -4.28882408 -1.2352339
		 -7.69403505 4.85699034 -0.75869989 -7.83354759 4.60962057 -0.86668515 -7.87578487
		 -4.49411201 -1.067344069 -7.69403505 4.85699034 -0.75869989 0 9.11719036 -0.49106959
		 0 9.097624779 -0.77301639 -7.83354759 4.60962057 -0.86668515 2.72601867 -2.74371314
		 -8.2707386 3.86466217 0 -8.27216244 9.11928177 0 -0.45043012 6.43025017 -6.4663887
		 -0.4493984 3.86466217 0 -8.27216244 2.72601867 2.74371314 -8.2707386 6.43025017 6.4663887
		 -0.44938928 9.11928177 0 -0.45043012 2.72601867 2.74371314 -8.2707386 0 3.87076116
		 -8.26930523 0 9.1193819 -0.44836667 6.43025017 6.4663887 -0.44938928 0 3.87076116
		 -8.26930523 -2.72601867 2.74371314 -8.2707386 -6.43025017 6.4663887 -0.44938928 0
		 9.1193819 -0.44836667 -2.72601867 2.74371314 -8.2707386 -3.86465287 -9.1304028e-06
		 -8.27216244 -9.11928177 0 -0.45043012 -6.43025017 6.4663887 -0.44938928 -3.86465287
		 -9.1304028e-06 -8.27216244 -2.72601867 -2.74370432 -8.2707386 -6.43025017 -6.4663887
		 -0.4493984 -9.11928177 0 -0.45043012 -2.72601867 -2.74370432 -8.2707386 0 -3.87075186
		 -8.26931477 0 -9.11939144 -0.44837579 -6.43025017 -6.4663887 -0.4493984 0 -3.87075186
		 -8.26931477 2.72601867 -2.74371314 -8.2707386 6.43025017 -6.4663887 -0.4493984 0
		 -9.11939144 -0.44837579 3.86466217 0 -8.27216244 2.72601867 -2.74371314 -8.2707386
		 0 0 -9.13040257 2.72601867 2.74371314 -8.2707386 3.86466217 0 -8.27216244 0 0 -9.13040257
		 0 3.87076116 -8.26930523 2.72601867 2.74371314 -8.2707386 0 0 -9.13040257 -2.72601867
		 2.74371314 -8.2707386 0 3.87076116 -8.26930523 0 0 -9.13040257 -3.86465287 -9.1304028e-06
		 -8.27216244 -2.72601867 2.74371314 -8.2707386 0 0 -9.13040257 -2.72601867 -2.74370432
		 -8.2707386 -3.86465287 -9.1304028e-06 -8.27216244 0 0 -9.13040257 0 -3.87075186 -8.26931477
		 -2.72601867 -2.74370432 -8.2707386 0 0 -9.13040257 2.72601867 -2.74371314 -8.2707386
		 0 -3.87075186 -8.26931477 0 0 -9.13040257 2.72600937 2.74368596 8.27074814 0 3.87070632
		 8.26933193 0 0 9.13040257 0 3.87070632 8.26933193 -2.72600937 2.74367666 8.27075672
		 0 0 9.13040257 -3.86463451 -9.1304028e-06 8.27217197 -2.72600937 -2.74369502 8.27074814
		 0 0 9.13040257 -2.72600937 -2.74369502 8.27074814 0 -3.87072468 8.26932335 0 0 9.13040257
		 0 -3.87072468 8.26932335 2.72600937 -2.74369502 8.27074814 0 0 9.13040257 9.11928177
		 0 0.45043012 6.43025017 6.4663887 0.4493984 2.72600937 2.74368596 8.27074814 3.86463451
		 -9.1304028e-06 8.27217197 6.43025017 -6.46637964 0.4493984 9.11928177 0 0.45043012
		 3.86463451 -9.1304028e-06 8.27217197 2.72600937 -2.74369502 8.27074814 0 -9.11939144
		 0.44836667 6.43025017 -6.46637964 0.4493984 2.72600937 -2.74369502 8.27074814 0 -3.87072468
		 8.26932335 -6.43025017 -6.46637964 0.4493984 0 -9.11939144 0.44836667 0 -3.87072468
		 8.26932335 -2.72600937 -2.74369502 8.27074814 -9.11928177 0 0.45043012 -6.43025017
		 -6.46637964 0.4493984 -2.72600937 -2.74369502 8.27074814 -3.86463451 -9.1304028e-06
		 8.27217197 -6.43025017 6.4663887 0.4493984 -9.11928177 0 0.45043012 -3.86463451 -9.1304028e-06
		 8.27217197 -2.72600937 2.74367666 8.27075672 0 9.1193819 0.44838494 -6.43025017 6.4663887
		 0.4493984 -2.72600937 2.74367666 8.27075672 0 3.87070632 8.26933193 6.43025017 6.4663887
		 0.4493984 0 9.1193819 0.44838494 0 3.87070632 8.26933193 2.72600937 2.74368596 8.27074814
		 9.11928177 0 -0.45043012 6.43025017 6.4663887 -0.44938928 6.43025017 6.4663887 0.4493984
		 9.11928177 0 0.45043012 6.43025017 -6.4663887 -0.4493984 9.11928177 0 -0.45043012
		 9.11928177 0 0.45043012 6.43025017 -6.46637964 0.4493984 0 -9.11939144 -0.44837579
		 6.43025017 -6.4663887 -0.4493984 6.43025017 -6.46637964 0.4493984 0 -9.11939144 0.44836667
		 -6.43025017 -6.4663887 -0.4493984;
	setAttr ".n[332:378]" -type "float3"  0 -9.11939144 -0.44837579 0 -9.11939144
		 0.44836667 -6.43025017 -6.46637964 0.4493984 -9.11928177 0 -0.45043012 -6.43025017
		 -6.4663887 -0.4493984 -6.43025017 -6.46637964 0.4493984 -9.11928177 0 0.45043012
		 -6.43025017 6.4663887 -0.44938928 -9.11928177 0 -0.45043012 -9.11928177 0 0.45043012
		 -6.43025017 6.4663887 0.4493984 0 9.1193819 -0.44836667 -6.43025017 6.4663887 -0.44938928
		 -6.43025017 6.4663887 0.4493984 0 9.1193819 0.44838494 6.43025017 6.4663887 -0.44938928
		 0 9.1193819 -0.44836667 0 9.1193819 0.44838494 6.43025017 6.4663887 0.4493984 -1.98018336
		 -8.6111021 -2.30045962 -1.97358215 -8.71617413 -1.87016201 -9.1077776 0 -0.64239687
		 -9.040887833 0 -1.27535284 -1.98018336 8.6111021 -2.30045056 -1.97358215 8.71617413
		 -1.87016201 1.97358215 8.71617413 -1.87016201 1.98018336 8.6111021 -2.30045056 9.040887833
		 0 -1.27535284 9.1077776 0 -0.64239687 1.97358215 -8.71617413 -1.87016201 1.98018336
		 -8.6111021 -2.30045056 1.98018336 -8.6111021 -2.30045056 1.97358215 -8.71617413 -1.87016201
		 -1.97358215 -8.71617413 -1.87016201 -1.98018336 -8.6111021 -2.30045962 9.040887833
		 0 -1.27535284 -9.040887833 0 -1.27535284 -1.98018336 8.6111021 -2.30045056 1.98018336
		 8.6111021 -2.30045056 1.98018336 8.6111021 -2.30045056 1.97358215 8.71617413 -1.87016201
		 9.1077776 0 -0.64239687 9.040887833 0 -1.27535284 -9.040887833 0 -1.27535284 -9.1077776
		 0 -0.64239687 -1.97358215 8.71617413 -1.87016201 -1.98018336 8.6111021 -2.30045056;
	setAttr -s 98 -ch 379 ".fc[0:97]" -type "polyFaces" 
		f 4 -109 0 1 2
		mu 0 4 0 1 2 3
		f 4 -110 3 4 -1
		mu 0 4 1 4 5 2
		f 4 -111 5 6 -4
		mu 0 4 4 6 7 5
		f 4 -112 7 8 -6
		mu 0 4 8 9 10 11
		f 4 -113 9 10 -8
		mu 0 4 9 12 13 10
		f 4 -114 -3 11 -10
		mu 0 4 12 0 3 13
		f 4 12 13 14 15
		mu 0 4 14 15 16 17
		f 4 16 17 18 -14
		mu 0 4 15 18 19 16
		f 4 19 20 21 -18
		mu 0 4 18 20 21 19
		f 4 22 23 24 -21
		mu 0 4 22 23 24 25
		f 4 25 26 27 -24
		mu 0 4 23 26 27 24
		f 4 28 -16 29 -27
		mu 0 4 26 14 17 27
		f 4 -15 30 31 32
		mu 0 4 17 16 28 29
		f 4 -19 33 34 -31
		mu 0 4 16 19 30 28
		f 4 -22 35 36 -34
		mu 0 4 19 21 31 30
		f 4 -25 37 38 -36
		mu 0 4 25 24 32 33
		f 4 -28 39 40 -38
		mu 0 4 24 27 34 32
		f 4 -30 -33 41 -40
		mu 0 4 27 17 29 34
		f 4 42 43 -13 44
		mu 0 4 35 36 15 14
		f 4 45 46 -17 -44
		mu 0 4 36 37 18 15
		f 4 47 48 -20 -47
		mu 0 4 37 38 20 18
		f 4 49 50 -23 -49
		mu 0 4 39 40 23 22
		f 4 51 52 -26 -51
		mu 0 4 40 41 26 23
		f 4 53 -45 -29 -53
		mu 0 4 41 35 14 26
		f 4 -2 54 55 56
		mu 0 4 3 2 42 43
		f 4 -5 57 58 -55
		mu 0 4 2 5 44 42
		f 4 -7 59 60 -58
		mu 0 4 5 7 45 44
		f 4 -9 61 62 -60
		mu 0 4 11 10 46 47
		f 4 -11 63 64 -62
		mu 0 4 10 13 48 46
		f 4 -12 -57 65 -64
		mu 0 4 13 3 43 48
		f 4 -56 66 67 68
		mu 0 4 49 50 51 52
		f 4 -59 69 70 -67
		mu 0 4 50 53 54 51
		f 4 -61 71 72 -70
		mu 0 4 53 55 56 54
		f 4 -63 73 74 -72
		mu 0 4 57 58 59 60
		f 4 -65 75 76 -74
		mu 0 4 58 61 62 59
		f 4 -66 -69 77 -76
		mu 0 4 61 49 52 62
		f 4 -68 78 79 80
		mu 0 4 52 51 63 64
		f 4 -71 81 82 -79
		mu 0 4 51 54 65 63
		f 4 -73 83 84 -82
		mu 0 4 54 56 66 65
		f 4 -75 85 86 -84
		mu 0 4 60 59 67 68
		f 4 -77 87 88 -86
		mu 0 4 59 62 69 67
		f 4 -78 -81 89 -88
		mu 0 4 62 52 64 69
		f 4 -80 90 91 92
		mu 0 4 64 63 70 71
		f 4 -83 93 94 -91
		mu 0 4 63 65 72 70
		f 4 -85 95 96 -94
		mu 0 4 65 66 73 72
		f 4 -87 97 98 -96
		mu 0 4 68 67 74 75
		f 4 -89 99 100 -98
		mu 0 4 67 69 76 74
		f 4 -90 -93 101 -100
		mu 0 4 69 64 71 76
		f 4 -92 102 -43 103
		mu 0 4 71 70 36 35
		f 4 -95 104 -46 -103
		mu 0 4 70 72 37 36
		f 4 -97 105 -48 -105
		mu 0 4 72 73 38 37
		f 4 -99 106 -50 -106
		mu 0 4 75 74 40 39
		f 4 -101 107 -52 -107
		mu 0 4 74 76 41 40
		f 4 -102 -104 -54 -108
		mu 0 4 76 71 35 41
		f 4 114 115 116 117
		mu 0 4 77 78 79 80
		f 4 118 119 120 -116
		mu 0 4 78 81 82 79
		f 4 121 122 123 -120
		mu 0 4 81 83 84 82
		f 4 124 125 126 -123
		mu 0 4 83 85 86 84
		f 4 127 128 129 -126
		mu 0 4 85 87 88 86
		f 4 130 131 132 -129
		mu 0 4 87 89 90 88
		f 4 133 134 135 -132
		mu 0 4 89 91 92 90
		f 4 136 -118 137 -135
		mu 0 4 93 77 80 94
		f 3 -115 138 139
		mu 0 3 95 96 97
		f 3 -119 -140 140
		mu 0 3 98 95 97
		f 3 -122 -141 141
		mu 0 3 99 98 97
		f 3 -125 -142 142
		mu 0 3 100 99 97
		f 3 -128 -143 143
		mu 0 3 101 100 97
		f 3 -131 -144 144
		mu 0 3 102 101 97
		f 3 -134 -145 145
		mu 0 3 103 102 97
		f 3 -137 -146 -139
		mu 0 3 96 103 97
		f 3 146 147 -179
		mu 0 3 104 105 106
		f 3 148 179 -148
		mu 0 3 105 107 106
		f 3 149 150 -181
		mu 0 3 108 109 106
		f 3 151 152 -151
		mu 0 3 109 110 106
		f 3 153 -182 -153
		mu 0 3 110 111 106
		f 4 154 155 -183 156
		mu 0 4 112 113 114 115
		f 4 157 -157 -184 158
		mu 0 4 116 112 115 117
		f 4 159 -159 -154 160
		mu 0 4 118 116 117 119
		f 4 161 -161 -152 162
		mu 0 4 120 121 122 123
		f 4 163 -163 -150 164
		mu 0 4 124 120 123 125
		f 4 165 -165 -185 166
		mu 0 4 126 124 125 127
		f 4 167 -167 -149 168
		mu 0 4 128 126 127 129
		f 4 169 -169 -147 -156
		mu 0 4 113 128 129 114
		f 4 -121 170 -155 171
		mu 0 4 79 82 113 112
		f 4 -117 -172 -158 172
		mu 0 4 80 79 112 116
		f 4 -138 -173 -160 173
		mu 0 4 94 80 116 118
		f 4 -136 -174 -162 174
		mu 0 4 90 92 121 120
		f 4 -133 -175 -164 175
		mu 0 4 88 90 120 124
		f 4 -130 -176 -166 176
		mu 0 4 86 88 124 126
		f 4 -127 -177 -168 177
		mu 0 4 84 86 126 128
		f 4 -124 -178 -170 -171
		mu 0 4 82 84 128 113
		f 4 185 186 187 200
		mu 0 4 130 131 132 133
		f 4 188 189 190 191
		mu 0 4 134 135 136 137
		f 4 192 193 194 201
		mu 0 4 138 139 140 141
		f 4 -195 195 -186 202
		mu 0 4 142 143 144 145
		f 4 -204 196 -192 197
		mu 0 4 146 147 134 137
		f 4 -191 198 -193 -198
		mu 0 4 148 149 139 138
		f 4 -188 199 -189 -197
		mu 0 4 133 132 150 151;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Saxophone" -p "Saxophone_roto";
	rename -uid "53355634-4391-485A-C94A-8CA023AB57EA";
	setAttr ".t" -type "double3" 3.5924072929707278 -1.2723016566107752 2.7175115457456522 ;
	setAttr ".s" -type "double3" 0.68756430013741088 0.68756430013741088 0.68756430013741088 ;
	setAttr ".rp" -type "double3" 5.4542279243469238 5.9421958923339844 0 ;
	setAttr ".sp" -type "double3" 5.4542279243469238 5.9421958923339844 0 ;
createNode mesh -n "SaxophoneShape" -p "Saxophone";
	rename -uid "87F02944-407F-21C6-9A02-179FED491739";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:589]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.061083998531103134 0.21974599361419678 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 843 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.57707298 0.44801301 0.48863801
		 0.428307 0.505566 0.31189001 0.57732499 0.31333601 0.41328299 0.37763399 0.43683299
		 0.301117 0.350216 0.31736299 0.374138 0.27706999 0.80441701 0.318212 0.74112499 0.37824601
		 0.71785998 0.301642 0.78064603 0.27782899 0.66558099 0.428637 0.64908803 0.31215799
		 0.51310903 0.225343 0.57748401 0.227908 0.45047599 0.216758 0.38816401 0.20167901
		 0.70453399 0.217232 0.76690203 0.20238701 0.64186901 0.225584 0.51911497 0.143638
		 0.57762802 0.15075301 0.46112001 0.13074 0.40331101 0.112746 0.69421101 0.131175
		 0.75208598 0.113397 0.636168 0.143857 0.53624898 0.083599001 0.57770199 0.111482
		 0.50162399 0.036430001 0.45580599 0 0.65405899 0.036715001 0.700014 0.00045600001
		 0.61925799 0.083754003 0.77733302 0.74396402 0.72147399 0.75990301 0.72253001 0.70569301
		 0.77695799 0.717058 0.67119998 0.789002 0.67307502 0.68028003 0.61458802 0.80201799
		 0.61930799 0.66611302 0.94163197 0.79746002 0.88467997 0.78602701 0.87977499 0.67739898
		 0.93312699 0.66174001 0.83361399 0.75834 0.83104801 0.70418 0.16184001 0.084500998
		 0.20977101 0.061413001 0.21771 0.124541 0.16184101 0.12216 0.25108999 0.022868 0.27079701
		 0.130998 0.301909 2.9999999e-05 0.32365 0.133333 0.021768 1.4e-05 0.072585002 0.022857999
		 0.052864 0.130981 0 0.133315 0.113906 0.061407998 0.105967 0.124537 0.212282 0.21480601
		 0.16189 0.213055 0.26260599 0.21981899 0.31304801 0.22529501 0.061083999 0.21974599
		 0.010509 0.22527599 0.111402 0.214854 0.20936599 0.30630699 0.16181099 0.30507201
		 0.256836 0.309356 0.30454999 0.313779 0.114311 0.30609301 0.206916 0.39739001 0.16166499
		 0.39648399 0.25218901 0.39969999 0.29747999 0.40316701 0.071209997 0.399243 0.025965
		 0.40251899 0.116439 0.397138 0.204735 0.48820701 0.161395 0.487407 0.248074 0.49019399
		 0.29139799 0.49318901 0.074771002 0.48952001 0.031484 0.49216899 0.118072 0.48787001
		 0.20236599 0.58501399 0.160935 0.58416998 0.243717 0.587026 0.284969 0.58999097 0.078198001
		 0.586169 0.036961999 0.58865201 0.119522 0.58459699 0.19981299 0.68135601 0.16039
		 0.68006301 0.238896 0.684039 0.27788299 0.68746102 0.081745997 0.68299299 0.042661
		 0.68588698 0.120922 0.68083298 0.196062 0.77679002 0.15969799 0.77455801 0.23221999
		 0.781596 0.268933 0.78592002 0.087076001 0.78059798 0.050301999 0.78441602 0.123304
		 0.77628899 0.46687299 0.492044 0.38012299 0.42372501 0.30311599 0.33547699 0.851448
		 0.336501 0.774113 0.42446101 0.68710798 0.49245501 0.57693303 0.523009 0.28773001
		 0.69366199 0.28770399 0.56135398 0.32534599 0.57984602 0.32487899 0.68046898 0.388055
		 0.77786899 0.40220401 0.74617797 0.51956898 0.767542 0.50188297 0.74005997 0.52040702
		 0.50845802 0.59260899 0.618864 0.560049 0.62166101 0.50397098 0.53902501 0.39244199
		 0.48051399 0.404704 0.51798099 0.359505 0.59662801 0.359543 0.67342502 0.41844299
		 0.72210401 0.49483699 0.71765703 0.53801 0.629776 0.49484101 0.56659102 0.420313
		 0.54972303 0.392676 0.61292398 0.39331499 0.66624701 0.43440801 0.69856399 0.48897299
		 0.69487703 0.51639599 0.63905698 0.485966 0.59361398 0.43527299 0.58083999 0.83318198
		 0.694475 0.77895802 0.70792699 0.77894801 0.56433398 0.82459903 0.55300897 0.88124901
		 0.66600299 0.86506701 0.52903801 0.93331701 0.64575201 0.90890199 0.511989 0.67666101
		 0.66601598 0.62458998 0.64577103 0.64898801 0.51200497 0.69282597 0.52904898 0.72473198
		 0.69448203 0.73329598 0.55301499 0.936019 0.076939002 0.93602097 0.099302001 0.92518598
		 0.099302001 0.92518502 0.07694 0.93602198 0.121664 0.925188 0.121665 0.936023 0.14402699
		 0.92518902 0.14402799 0.93602401 0.166389 0.92518997 0.16639 0.93601501 0.0098510003
		 0.93601698 0.032214001 0.925183 0.032214999 0.92518097 0.0098519996 0.93601799 0.054577
		 0.92518401 0.054577 0.36521801 0.48869801 0.334299 0.49575201 0.34243399 0.460123
		 0.309506 0.47597599 0.30950901 0.44426301 0.33430499 0.424492 0.36522299 0.43155199
		 0.37898099 0.46012601 0.936019 0.076939002 0.93602002 0.099302001 0.92518598 0.099302001
		 0.92518502 0.07694 0.93602198 0.121664 0.92518699 0.121665 0.936023 0.14402699 0.92518902
		 0.14402799 0.93602401 0.166389 0.92518997 0.16639 0.93601501 0.0098510003 0.93601698
		 0.032214001 0.925183 0.032214999 0.92518097 0.0098519996 0.93601799 0.054575998 0.92518401
		 0.054577 0.36521801 0.48869801 0.334299 0.49575201 0.34243399 0.460123 0.309506 0.47597599
		 0.30950901 0.44426301 0.33430499 0.424492 0.36522299 0.43155199 0.37898099 0.46012601
		 0.92518502 0.07694 0.92518401 0.054577 0.93601799 0.054577 0.936019 0.076939002 0.925183
		 0.032214999 0.93601698 0.032214001 0.92518097 0.0098519996 0.93601602 0.0098510003
		 0.92518997 0.16639 0.92518902 0.14402799 0.936023 0.14402699 0.93602401 0.166389
		 0.92518699 0.121665 0.93602198 0.121664 0.92518598 0.099302001 0.93602097 0.099302001
		 0.36521801 0.48869801 0.334299 0.49575201 0.34243399 0.460123 0.309506 0.47597599
		 0.30950901 0.44426301 0.33430499 0.424492 0.36522299 0.43155199 0.37898099 0.46012601
		 0.92518401 0.054577 0.925183 0.032214999 0.93601698 0.032214001 0.93601799 0.054577
		 0.92518097 0.0098519996 0.93601602 0.0098510003 0.92518997 0.16639 0.92518902 0.14402799
		 0.936023 0.14402699 0.93602401 0.16639 0.925188 0.121665 0.93602198 0.121664 0.92518598
		 0.099302001 0.93602002 0.099302001 0.92518502 0.07694 0.936019 0.076939002 0.36521801
		 0.48869801 0.334299 0.49575201 0.34243399 0.460123;
	setAttr ".uvst[0].uvsp[250:499]" 0.309506 0.47597599 0.30950901 0.44426301
		 0.33430499 0.424492 0.36522299 0.43155199 0.37898099 0.46012601 0.92518502 0.07694
		 0.92518401 0.054577 0.93601799 0.054577 0.936019 0.076939002 0.925183 0.032214999
		 0.93601698 0.032214001 0.92518097 0.0098519996 0.93601501 0.0098510003 0.92518997
		 0.16639 0.92518902 0.14402799 0.936023 0.14402699 0.93602401 0.16639 0.92518699 0.121665
		 0.93602198 0.121664 0.92518598 0.099302001 0.93602002 0.099302001 0.36521801 0.48869801
		 0.334299 0.49575201 0.34243399 0.460123 0.309506 0.47597599 0.30950901 0.44426301
		 0.33430499 0.424492 0.36522299 0.43155199 0.37898099 0.46012601 0.92518502 0.07694
		 0.92518401 0.054577 0.93601799 0.054577 0.936019 0.076939002 0.925183 0.032214999
		 0.93601698 0.032214001 0.92518097 0.0098519996 0.93601501 0.0098510003 0.92518997
		 0.16639 0.92518902 0.14402799 0.936023 0.14402699 0.93602401 0.16639 0.92518699 0.121665
		 0.93602198 0.121664 0.92518598 0.099302001 0.93602002 0.099302001 0.36521801 0.48869801
		 0.334299 0.49575201 0.34243399 0.460123 0.309506 0.47597599 0.30950901 0.44426301
		 0.33430499 0.424492 0.36522299 0.43155199 0.37898099 0.46012601 0.91724002 0.096222997
		 0.917238 0.124264 0.905904 0.124263 0.90590602 0.096221998 0.91723597 0.15230399
		 0.90590203 0.152303 0.917234 0.180345 0.9059 0.180344 0.91723198 0.20838501 0.90589797
		 0.20838501 0.917247 0.012101 0.91724497 0.040142 0.90591002 0.040141001 0.90591198
		 0.0121 0.917243 0.068181999 0.90590799 0.068181001 0.36521801 0.48869801 0.334299
		 0.49575201 0.34243399 0.460123 0.309506 0.47597599 0.30950901 0.44426301 0.33430499
		 0.424492 0.36522299 0.43155199 0.37898099 0.46012601 0.54997098 0.050466999 0.56560302
		 0.018011 0.593943 0.018012 0.59394199 0.050469 0.56559998 0.082924999 0.59394002
		 0.082927004 0.91724098 0.096222997 0.917238 0.124264 0.905904 0.124263 0.90590602
		 0.096221998 0.91723597 0.15230399 0.90590203 0.152303 0.917234 0.180345 0.9059 0.180344
		 0.91723198 0.208386 0.90589797 0.20838501 0.917247 0.012101 0.91724497 0.040142 0.90591002
		 0.040141001 0.90591198 0.0121 0.917243 0.068181999 0.90590799 0.068181001 0.36521801
		 0.48869801 0.334299 0.49575201 0.34243399 0.460123 0.309506 0.47597599 0.30950901
		 0.44426301 0.33430499 0.424492 0.36522299 0.43155199 0.37898099 0.46012601 0.309506
		 0.47597599 0.34243399 0.460123 0.334299 0.49575201 0.36522299 0.43155199 0.37898099
		 0.46012601 0.36521801 0.48869801 0.30950901 0.44426301 0.33430499 0.424492 0.922153
		 0.34435299 0.922153 0.303718 0.939623 0.303718 0.939623 0.34435299 0.922153 0.26049301
		 0.939623 0.26049301 0.922153 0.218436 0.939623 0.218436 0.922153 0.17522 0.939623
		 0.17522 0.922153 0.46909899 0.922153 0.42846999 0.939623 0.42846999 0.939623 0.46909899
		 0.922153 0.38641101 0.939623 0.38641101 0.36521801 0.48869801 0.334299 0.49575201
		 0.34243399 0.460123 0.309506 0.47597599 0.30950901 0.44426301 0.33430499 0.424492
		 0.36522299 0.43155199 0.37898099 0.46012601 0.34470701 0.096897997 0.31471401 0.055943001
		 0.345121 0.055939 0.392804 0.096891001 0.393217 0.055932 0.422786 0.055927999 0.91724002
		 0.096222997 0.917238 0.124264 0.905904 0.124263 0.90590602 0.096221998 0.91723597
		 0.15230399 0.90590203 0.152303 0.917234 0.180345 0.9059 0.180344 0.91723198 0.20838501
		 0.90589797 0.20838501 0.917247 0.012101 0.91724402 0.040142 0.90591002 0.040141001
		 0.90591198 0.0121 0.91724199 0.068181999 0.90590799 0.068181001 0.36521801 0.48869801
		 0.334299 0.49575201 0.34243399 0.460123 0.309506 0.47597599 0.30950901 0.44426301
		 0.33430499 0.424492 0.36522299 0.43155199 0.37898099 0.46012601 0.30950499 0.47597501
		 0.342435 0.460123 0.33429801 0.49575201 0.36522499 0.43155301 0.37898099 0.46012801
		 0.365217 0.48869899 0.30950999 0.444262 0.33430699 0.424492 0.91724002 0.096222997
		 0.917238 0.124264 0.905904 0.124263 0.90590602 0.096221998 0.91723597 0.15230399
		 0.90590203 0.152303 0.917234 0.180345 0.9059 0.180344 0.91723198 0.208386 0.90589797
		 0.20838501 0.917247 0.012101 0.91724402 0.040142 0.90591002 0.040141001 0.90591198
		 0.0121 0.91724199 0.068181999 0.90590799 0.068181001 0.36521801 0.48869801 0.334299
		 0.49575201 0.34243399 0.460123 0.309506 0.47597599 0.30950901 0.44426301 0.33430499
		 0.424492 0.36522299 0.43155199 0.37898099 0.46012601 0.40214401 0.012087 0.426171
		 0.042134002 0.39112899 0.041225001 0.363671 0.012083 0.339652 0.042135999 0.95354098
		 0.036203001 0.94848698 0.036203001 0.94848698 0.0076979999 0.95354098 0.0076979999
		 0.98542702 0.036203001 0.98101997 0.036203001 0.98101997 0.0076979999 0.98542702
		 0.0076979999 0.97644198 0.036203001 0.97644198 0.0076979999 0.97209001 0.036203001
		 0.97209001 0.0076979999 0.96729201 0.036203001 0.96729201 0.0076979999 0.962726 0.036203001
		 0.962726 0.0076979999 0.95836401 0.036203001 0.95836401 0.0076979999 0.97644198 0.85287702
		 0.98101997 0.85287702 0.98101997 0.89145797 0.97644198 0.89145797 0.98542702 0.85287702
		 0.98542702 0.89145797 0.94848698 0.85287702 0.95292401 0.85287702 0.95292401 0.89145797
		 0.94848698 0.89145797 0.95836401 0.85287702 0.95836401 0.89145797 0.962726 0.85287702
		 0.962726 0.89145797 0.96729201 0.85287702 0.96729201 0.89145797 0.97209001 0.85287702
		 0.97209001 0.89145797 0.95354098 0.83963102 0.94848698 0.83963102 0.94848698 0.047828998
		 0.95354098 0.047828998 0.98542702 0.83963102 0.98101997 0.83963102 0.98101997 0.047828998
		 0.98542702 0.047828998;
	setAttr ".uvst[0].uvsp[500:749]" 0.97644198 0.83963102 0.97644198 0.047828998
		 0.97209001 0.83963102 0.97209001 0.047828998 0.96729201 0.83963102 0.96729201 0.047828998
		 0.962726 0.83963102 0.962726 0.047828998 0.95836401 0.83963102 0.95836401 0.047828998
		 0.98101997 0.842776 0.97644198 0.842776 0.97209001 0.842776 0.96729201 0.842776 0.962726
		 0.842776 0.95836401 0.842776 0.95354098 0.842776 0.94848698 0.842776 0.98542702 0.842776
		 0.97644198 0.84890097 0.98101997 0.84890097 0.97209001 0.84890097 0.96729201 0.84890097
		 0.962726 0.84890097 0.95836401 0.84890097 0.95292401 0.84890097 0.94848698 0.84890097
		 0.98542702 0.84890097 0.97644198 0.84607798 0.98101997 0.84607798 0.97209001 0.84607798
		 0.96729201 0.84607798 0.962726 0.84607798 0.95836401 0.84607798 0.95292401 0.84607798
		 0.94848698 0.84607798 0.98542702 0.84607798 0.94848698 0.044422001 0.95354098 0.044422001
		 0.95836401 0.044422001 0.962726 0.044422001 0.96729201 0.044422001 0.97209001 0.044422001
		 0.97644198 0.044422001 0.98101997 0.044422001 0.98542702 0.044422001 0.95354098 0.039016999
		 0.94848698 0.039016999 0.95836401 0.039016999 0.962726 0.039016999 0.96729201 0.039016999
		 0.97209001 0.039016999 0.97644198 0.039016999 0.98101997 0.039016999 0.98542702 0.039016999
		 0.95354098 0.042112999 0.94848698 0.042112999 0.95836401 0.042112999 0.962726 0.042112999
		 0.96729201 0.042112999 0.97209001 0.042112999 0.97644198 0.042112999 0.98101997 0.042112999
		 0.98542702 0.042112999 0.97209001 0.85287797 0.97644198 0.85287797 0.97644198 0.89145797
		 0.97209001 0.89145797 0.98101997 0.85287797 0.98101997 0.89145797 0.98542702 0.85287797
		 0.98542702 0.89145797 0.94848698 0.85287797 0.95292401 0.85287797 0.95292401 0.89145797
		 0.94848698 0.89145797 0.95836401 0.85287797 0.95836401 0.89145797 0.962726 0.85287797
		 0.962726 0.89145797 0.96729201 0.85287797 0.96729201 0.89145797 0.98542702 0.83963102
		 0.98101997 0.83963102 0.98101997 0.047828 0.98542702 0.047828 0.97644198 0.83963102
		 0.97644198 0.047828 0.97209001 0.83963102 0.97209001 0.047828 0.96729201 0.83963102
		 0.96729201 0.047828 0.962726 0.83963102 0.962726 0.047828 0.95836401 0.83963102 0.95836401
		 0.047828 0.95354098 0.83963102 0.95354098 0.047828 0.94848698 0.83963102 0.94848698
		 0.047828 0.97644198 0.842776 0.97209001 0.842776 0.96729201 0.842776 0.962726 0.842776
		 0.95836401 0.842776 0.95354098 0.842776 0.94848698 0.842776 0.98542702 0.842776 0.98101997
		 0.842776 0.97209001 0.84890097 0.97644198 0.84890097 0.96729201 0.84890097 0.962726
		 0.84890097 0.95836401 0.84890097 0.95292401 0.84890097 0.94848698 0.84890097 0.98101997
		 0.84890097 0.98542702 0.84890097 0.97209001 0.84607798 0.97644198 0.84607798 0.96729201
		 0.84607798 0.962726 0.84607798 0.95836401 0.84607798 0.95292401 0.84607798 0.94848698
		 0.84607798 0.98101997 0.84607798 0.98542702 0.84607798 0.97209001 0.036201999 0.96729201
		 0.036201999 0.96729201 0.0076979999 0.97209001 0.0076979999 0.962726 0.036201999
		 0.962726 0.0076979999 0.95836401 0.036201999 0.95836401 0.0076979999 0.95354098 0.036201999
		 0.95354098 0.0076979999 0.94848698 0.036201999 0.94848698 0.0076979999 0.98542702
		 0.036201999 0.98101997 0.036201999 0.98101997 0.0076979999 0.98542702 0.0076979999
		 0.97644198 0.036201999 0.97644198 0.0076979999 0.95836401 0.85287797 0.962726 0.85287797
		 0.962726 0.89145797 0.95836401 0.89145797 0.96729201 0.85287797 0.96729201 0.89145797
		 0.97209001 0.85287797 0.97209001 0.89145797 0.97644198 0.85287797 0.97644198 0.89145797
		 0.98101997 0.85287797 0.98101997 0.89145797 0.98542702 0.85287797 0.98542702 0.89145797
		 0.94848698 0.85287797 0.95292401 0.85287797 0.95292401 0.89145797 0.94848698 0.89145797
		 0.97209001 0.83963102 0.96729201 0.83963102 0.96729201 0.047828 0.97209001 0.047828
		 0.962726 0.83963102 0.962726 0.047828 0.95836401 0.83963102 0.95836401 0.047828 0.95354098
		 0.83963102 0.95354098 0.047828 0.94848698 0.83963102 0.94848698 0.047828 0.98542702
		 0.83963102 0.98101997 0.83963102 0.98101997 0.047828 0.98542702 0.047828 0.97644198
		 0.83963102 0.97644198 0.047828 0.962726 0.842776 0.95836401 0.842776 0.95354098 0.842776
		 0.94848698 0.842776 0.98542702 0.842776 0.98101997 0.842776 0.97644198 0.842776 0.97209001
		 0.842776 0.96729201 0.842776 0.95836401 0.84890097 0.962726 0.84890097 0.95292401
		 0.84890097 0.94848698 0.84890097 0.98101997 0.84890097 0.98542702 0.84890097 0.97644198
		 0.84890097 0.97209001 0.84890097 0.96729201 0.84890097 0.95836401 0.84607798 0.962726
		 0.84607798 0.95292401 0.84607798 0.94848698 0.84607798 0.98101997 0.84607798 0.98542702
		 0.84607798 0.97644198 0.84607798 0.97209001 0.84607798 0.96729201 0.84607798 0.96729201
		 0.044420999 0.97209001 0.044420999 0.97644198 0.044420999 0.98101997 0.044420999
		 0.98542702 0.044420999 0.94848698 0.044420999 0.95354098 0.044420999 0.95836401 0.044420999
		 0.962726 0.044420999 0.97209001 0.039016999 0.96729201 0.039016999 0.97644198 0.039016999
		 0.98101997 0.039016999 0.98542702 0.039016999 0.95354098 0.039016999 0.94848698 0.039016999
		 0.95836401 0.039016999 0.962726 0.039016999 0.97209001 0.042112 0.96729201 0.042112
		 0.97644198 0.042112 0.98101997 0.042112 0.98542702 0.042112 0.95354098 0.042112 0.94848698
		 0.042112 0.95836401 0.042112 0.962726 0.042112 0.98101997 0.036201999 0.97644198
		 0.036201999 0.97644198 0.0076979999 0.98101997 0.0076979999 0.97209001 0.036201999
		 0.97209001 0.0076979999 0.96729201 0.036201999 0.96729201 0.0076979999 0.962726 0.036201999
		 0.962726 0.0076979999 0.95836401 0.036201999 0.95836401 0.0076979999 0.95354098 0.036201999
		 0.95354098 0.0076979999 0.94848698 0.036201999;
	setAttr ".uvst[0].uvsp[750:842]" 0.94848698 0.0076979999 0.98542702 0.036201999
		 0.98542702 0.0076979999 0.96729201 0.85287797 0.97209001 0.85287797 0.97209001 0.89145797
		 0.96729201 0.89145797 0.97644198 0.85287797 0.97644198 0.89145797 0.98101997 0.85287797
		 0.98101997 0.89145797 0.98542702 0.85287797 0.98542702 0.89145797 0.94848698 0.85287797
		 0.95292401 0.85287797 0.95292401 0.89145797 0.94848698 0.89145797 0.95836401 0.85287797
		 0.95836401 0.89145797 0.962726 0.85287797 0.962726 0.89145797 0.98101997 0.83963102
		 0.97644198 0.83963102 0.97644198 0.047828 0.98101997 0.047828 0.97209001 0.83963102
		 0.97209001 0.047828 0.96729201 0.83963102 0.96729201 0.047828 0.962726 0.83963102
		 0.962726 0.047828 0.95836401 0.83963102 0.95836401 0.047828 0.95354098 0.83963102
		 0.95354098 0.047828 0.94848698 0.83963102 0.94848698 0.047828 0.98542702 0.83963102
		 0.98542702 0.047828 0.97209001 0.842776 0.96729201 0.842776 0.962726 0.842776 0.95836401
		 0.842776 0.95354098 0.842776 0.94848698 0.842776 0.98542702 0.842776 0.98101997 0.842776
		 0.97644198 0.842776 0.96729201 0.84890097 0.97209001 0.84890097 0.962726 0.84890097
		 0.95836401 0.84890097 0.95292401 0.84890097 0.94848698 0.84890097 0.98101997 0.84890097
		 0.98542702 0.84890097 0.97644198 0.84890097 0.96729201 0.84607798 0.97209001 0.84607798
		 0.962726 0.84607798 0.95836401 0.84607798 0.95292401 0.84607798 0.94848698 0.84607798
		 0.98101997 0.84607798 0.98542702 0.84607798 0.97644198 0.84607798 0.97644198 0.044420999
		 0.98101997 0.044420999 0.98542702 0.044420999 0.94848698 0.044420999 0.95354098 0.044420999
		 0.95836401 0.044420999 0.962726 0.044420999 0.96729201 0.044420999 0.97209001 0.044420999
		 0.98101997 0.039016999 0.97644198 0.039016999 0.98542702 0.039016999 0.95354098 0.039016999
		 0.94848698 0.039016999 0.95836401 0.039016999 0.962726 0.039016999 0.96729201 0.039016999
		 0.97209001 0.039016999 0.98101997 0.042112 0.97644198 0.042112 0.98542702 0.042112
		 0.95354098 0.042112 0.94848698 0.042112 0.95836401 0.042112 0.962726 0.042112 0.96729201
		 0.042112 0.97209001 0.042112;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[45]" -type "float3" 0 0.42845848 0 ;
	setAttr ".pt[46]" -type "float3" 0 -0.16529535 0 ;
	setAttr ".pt[47]" -type "float3" 0 0.87242872 0 ;
	setAttr ".pt[56]" -type "float3" 0 -0.38129133 0 ;
	setAttr ".pt[57]" -type "float3" 0 -0.65713739 0 ;
	setAttr ".pt[58]" -type "float3" 0 -1.1920929e-07 0 ;
	setAttr ".pt[77]" -type "float3" 0 -0.29698327 0 ;
	setAttr ".pt[79]" -type "float3" 0 -0.18944487 0 ;
	setAttr ".pt[80]" -type "float3" 0 0.13873678 0 ;
	setAttr ".pt[81]" -type "float3" 0 -0.17763171 0 ;
	setAttr ".pt[82]" -type "float3" 0 0.17186736 0 ;
	setAttr -s 630 ".vt";
	setAttr ".vt[0:165]"  5.45422792 6.12660217 1.055052757 7.21067333 5.6884613 1.96959686
		 7.21067333 4.81214905 3.79868317 5.45422745 4.37400818 4.71322632 3.69778252 4.81214905 3.79868317
		 3.69778252 5.6884613 1.96959686 5.45422792 3.25569153 1.80107784 6.31004333 3.23052979 2.29454231
		 6.31004333 3.18022156 3.28147125 5.45422745 3.15507507 3.77493668 4.59841251 3.18022156 3.28147125
		 4.59841251 3.23052979 2.29454231 5.45422792 2.068374634 1.74014473 6.27620792 2.0038452148 2.21030807
		 6.27620792 1.87480164 3.15063667 5.45422745 1.81027222 3.62080002 4.63224792 1.87480164 3.15063477
		 4.63224792 2.0038452148 2.21030807 5.45422792 1.012084961 1.53751564 6.24286747 0.85778809 1.9658947
		 6.24286747 0.54917908 2.82265091 5.45422745 0.39486694 3.25102806 4.66558838 0.54917908 2.82265091
		 4.66558838 0.85778809 1.9658947 5.45422792 0.48231506 1.28356361 6.21002197 0.090209961 1.47503471
		 6.21002197 -0.69400787 1.85797787 5.45422745 -1.086112976 2.049448013 4.6984334 -0.69400787 1.85797691
		 4.6984334 0.090209961 1.47503471 5.45422792 0.52038574 0.88109303 6.17767143 0.16333008 0.66436672
		 6.17767143 -0.55077362 0.23091364 5.45422745 -0.90782928 0.014187001 4.73078394 -0.55077362 0.23091376
		 4.73078394 0.16333008 0.66436672 5.45422792 1.045562744 0.66066837 6.14360476 1.012313843 0.26404715
		 6.14360476 0.9458313 -0.52919483 5.45422745 0.9125824 -0.92581558 4.76485157 0.9458313 -0.52919483
		 4.76485157 1.012313843 0.26404715 5.45422792 2.34495544 0.58351326 6.11010408 2.34191895 0.20485497
		 6.11010408 2.33584595 -0.55246162 5.45422792 2.33280945 -0.93111944 4.79835129 2.33584595 -0.55246115
		 4.79835129 2.34191895 0.20485497 5.45422792 3.69673157 0.5426898 6.077170849 3.6973877 0.18303382
		 6.077170849 3.69868469 -0.53627729 5.45422792 3.69934082 -0.89593267 4.831285 3.6973877 0.18303382
		 5.45422792 5.055679321 0.51013994 6.044803619 5.057266235 0.16917467 6.044803619 5.060440063 -0.51275635
		 5.45422792 5.062026978 -0.85372162 4.86365223 5.060440063 -0.51275587 4.86365223 5.057266235 0.16917467
		 5.45422792 6.4158783 0.4864459 6.018672466 6.41731262 0.16056669 6.018672466 6.42016602 -0.49119163
		 5.45422792 6.42160034 -0.81707048 4.88978338 6.42016602 -0.49119139 4.88978338 6.41731262 0.16056669
		 5.45422792 7.87059021 0.45990181 5.99143648 7.87127686 0.14974511 5.99143648 7.87266541 -0.47056818
		 5.45422792 7.87335205 -0.780725 4.91701937 7.87266541 -0.47056818 4.91701937 7.87127686 0.14974511
		 5.45422792 9.32453918 0.42933369 5.96420002 9.32409668 0.13490129 5.96420002 9.32324219 -0.45396328
		 5.45422792 9.32281494 -0.74839592 4.94425583 9.32324219 -0.45396328 4.94425583 9.32409668 0.13490129
		 5.45422792 10.78561401 0.38834906 5.93696404 10.78082275 0.10968244 5.93696404 10.77125549 -0.44765115
		 5.45422792 10.76647949 -0.72631788 4.97149181 10.77125549 -0.44765091 4.97149181 10.78082275 0.10968244
		 6.59500694 4.87988281 2.19839287 6.59500694 4.30508423 3.38357735 5.45422745 4.017684937 3.97616959
		 4.31344891 4.30508423 3.38357735 4.31344891 4.87988281 2.19839287 5.45422792 5.1672821 1.60579967
		 5.45422792 5.73184204 1.54962826 6.73573923 5.41215515 2.21688461 6.73573923 4.77281189 3.55139542
		 5.45422745 4.453125 4.21865082 4.17271614 4.77281189 3.55139542 4.17271614 5.41215515 2.21688461
		 5.45422792 5.24183655 1.85081577 6.44651365 4.99430847 2.36747742 6.44651365 4.49925232 3.4008007
		 5.45422745 4.25172424 3.9174633 4.46194267 4.49925232 3.4008007 4.46194267 4.99430847 2.36747742
		 5.45422792 4.75082397 2.12717628 6.18112755 4.56948853 2.5056591 6.18112755 4.20683289 3.26262093
		 5.45422745 4.025512695 3.64110184 4.7273283 4.20683289 3.26262093 4.7273283 4.56948853 2.5056591
		 5.45422792 2.59680176 2.2468605 6.066198349 2.44413757 2.56550026 6.066198349 2.13882446 3.20277977
		 5.45422792 1.98617554 3.52141953 4.8422575 2.13882446 3.20277977 4.8422575 2.44413757 2.56550026
		 4.96497297 9.96720886 -0.0091898441 4.96497297 10.017303467 -0.22860849 4.96497202 9.87696838 -0.40456843
		 4.96497202 9.6519165 -0.40456843 4.96497202 9.51158142 -0.22860849 4.96497202 9.56167603 -0.0091898441
		 4.96497202 9.76445007 0.088460505 4.85593557 9.96720886 -0.0091898441 4.85593557 10.017303467 -0.22860849
		 4.85593557 9.87696838 -0.40456843 4.85593557 9.6519165 -0.40456843 4.85593557 9.51158142 -0.22860849
		 4.85593557 9.56167603 -0.0091898441 4.85593557 9.76445007 0.088460505 4.85593557 9.76445007 -0.17089617
		 4.94690704 9.29077148 -0.002287304 4.94690704 9.34085083 -0.22170591 4.94690704 9.20053101 -0.39766598
		 4.94690704 8.97546387 -0.39766598 4.94690704 8.83514404 -0.22170591 4.94690704 8.88522339 -0.002287304
		 4.94690704 9.087997437 0.09536314 4.85593557 9.29077148 -0.002287304 4.85593557 9.34085083 -0.22170591
		 4.85593557 9.20053101 -0.39766598 4.85593557 8.97546387 -0.39766598 4.85593557 8.83514404 -0.22170591
		 4.85593557 8.88522339 -0.002287304 4.85593557 9.087997437 0.09536314 4.85593557 9.087997437 -0.1639936
		 4.94690704 8.68334961 0.032225311 4.94690704 8.73342896 -0.18719327 4.94690704 8.59310913 -0.36315322
		 4.94690704 8.36804199 -0.36315322 4.94690704 8.22772217 -0.18719327 4.94690704 8.27780151 0.032225311
		 4.94690704 8.48057556 0.12987566 4.85593557 8.68334961 0.032225311 4.85593557 8.73342896 -0.18719327
		 4.85593557 8.59310913 -0.36315322 4.85593557 8.36804199 -0.36315322 4.85593557 8.22772217 -0.18719327
		 4.85593557 8.27780151 0.032225311 4.85593557 8.48057556 0.12987566 4.85593557 8.48057556 -0.12948096
		 4.91589165 6.57269287 0.02365537 4.91589165 6.63508606 -0.24969673 4.91589165 6.46026611 -0.46890807
		 4.91589165 6.17988586 -0.46890807 4.91589165 6.0050811768 -0.24969673 4.91589165 6.067459106 0.02365537
		 4.91589165 6.32008362 0.14530838 4.80255985 6.57269287 0.02365537;
	setAttr ".vt[166:331]" 4.80255985 6.63508606 -0.24969673 4.8025589 6.46026611 -0.46890807
		 4.80255985 6.17988586 -0.46890807 4.8025589 6.0050811768 -0.24969673 4.80255985 6.067459106 0.02365537
		 4.80255985 6.32008362 0.14530838 4.80255985 6.32008362 -0.17779875 4.91589165 7.42170715 0.037460327
		 4.91589165 7.48410034 -0.2358917 4.91589165 7.3092804 -0.45510316 4.91589165 7.028900146 -0.45510316
		 4.91589165 6.8540802 -0.2358917 4.91589165 6.91647339 0.037460327 4.91589165 7.1690979 0.15911353
		 4.80255985 7.42170715 0.037460327 4.80255985 7.48410034 -0.2358917 4.8025589 7.3092804 -0.45510316
		 4.80255985 7.028900146 -0.45510316 4.8025589 6.8540802 -0.2358917 4.80255985 6.91647339 0.037460327
		 4.80255985 7.1690979 0.15911353 4.80255985 7.1690979 -0.1639936 4.91589165 5.8341217 0.030557916
		 4.91589165 5.89651489 -0.24279428 4.91589165 5.72169495 -0.46200562 4.91589165 5.4413147 -0.46200562
		 4.91589165 5.26651001 -0.24279428 4.91589165 5.32888794 0.030557796 4.91589165 5.58151245 0.15221095
		 4.80255985 5.8341217 0.030557916 4.80255985 5.89651489 -0.24279428 4.8025589 5.72169495 -0.46200562
		 4.80255985 5.4413147 -0.46200562 4.8025589 5.26651001 -0.24279428 4.80255985 5.32888794 0.030557796
		 4.80255985 5.58151245 0.15221095 4.80255985 5.58151245 -0.17089617 4.82710648 1.85551453 0.20658433
		 4.82710648 1.94924927 -0.20413435 4.82710648 1.68658447 -0.53350496 4.82710648 1.26530457 -0.53350496
		 4.82710648 1.0026397705 -0.20413435 4.82710648 1.096389771 0.20658422 4.82710648 1.47595215 0.38937116
		 4.65682125 1.85551453 0.20658433 4.65682125 1.94924927 -0.20413435 4.65682125 1.68659973 -0.53350496
		 4.65682125 1.26530457 -0.53350496 4.65682125 1.0026397705 -0.20413435 4.65682125 1.096389771 0.20658422
		 4.65682125 1.47595215 0.38937116 4.65682125 1.47595215 -0.096105635 4.82710648 1.096389771 -0.069498479
		 4.82710648 1.47595215 -0.069496691 4.82710648 1.85551453 -0.069498479 4.24559975 4.40527344 2.90981674
		 4.35754681 4.55795288 2.34527016 4.54329681 4.21266174 1.89714241 4.66297674 3.62939453 1.90288162
		 4.62646484 3.24737549 2.35816574 4.46125603 3.35426331 2.92015839 4.29175472 3.86958313 3.16566467
		 4.016936302 4.35778809 2.85162735 4.12888336 4.51046753 2.28708267 4.31463242 4.16516113 1.83895493
		 4.43431282 3.58189392 1.84469414 4.3978014 3.19987488 2.29997826 4.23259163 3.30677795 2.8619709
		 4.063090324 3.82209778 3.10747719 4.22689247 3.84915161 2.44168472 4.45555687 3.89663696 2.4998703
		 4.60624075 2.63641357 2.91278076 4.68353224 2.7681427 2.37910271 4.79104137 2.39726257 1.88327122
		 4.84766531 1.80459595 1.89301872 4.81076336 1.43643188 2.40100479 4.70827198 1.56846619 2.93034554
		 4.61722231 2.10281372 3.17679596 4.36956882 2.6131897 2.87569237 4.44692612 2.74423218 2.30001831
		 4.55436993 2.3740387 1.84618187 4.61099339 1.78137207 1.85593033 4.57415676 1.41252136 2.32192039
		 4.47160053 1.54524231 2.89325523 4.38055038 2.079589844 3.13970757 4.4868803 2.078598022 2.46181488
		 4.71933031 2.39344788 2.38526726 4.77595329 1.80078125 2.39501381 4.71274424 1.040618896 2.62955666
		 4.68041849 1.16107178 2.047319412 4.69990396 0.78239441 1.58821869 4.75652695 0.18972778 1.59796619
		 4.80764961 -0.17063904 2.069221497 4.81477594 -0.027328491 2.64712143 4.77253866 0.51173401 2.89649391
		 4.4732914 1.017883301 2.63814735 4.44096565 1.13833618 2.05591011 4.46045017 0.75965881 1.59680939
		 4.51707363 0.16699219 1.60655689 4.5681963 -0.19337463 2.077812195 4.5753231 -0.050064087 2.65571213
		 4.53308582 0.48898315 2.90508461 4.50976944 0.47549438 2.21943283 4.74922228 0.49822998 2.21084213
		 4.73272848 0.095474243 1.35984993 4.70687056 0.19181824 0.89412117 4.72245693 -0.11108398 0.52688837
		 4.76774931 -0.58515167 0.53468513 4.80864239 -0.87340546 0.91164064 4.81434298 -0.7587738 1.37389946
		 4.78055763 -0.32758331 1.57337093 4.5411911 0.077285767 1.36672115 4.51533318 0.17362976 0.90099287
		 4.53091908 -0.12927246 0.53376007 4.57621193 -0.60334015 0.54155684 4.61710548 -0.89159393 0.91851234
		 4.6228056 -0.77696228 1.38077068 4.58902073 -0.34577179 1.58024216 4.57036972 -0.35657501 1.031793594
		 4.79490852 -0.49072266 0.95738316 4.76303864 10.53153992 -0.50659752 4.78273439 10.5120697 -0.55322742
		 4.80243111 10.53153992 -0.59985685 4.81058931 10.5785675 -0.61917114 4.80243111 10.62557983 -0.59985685
		 4.78273439 10.64506531 -0.55322742 4.76303864 10.62557983 -0.50659752 4.75487947 10.5785675 -0.48728323
		 5.068974495 10.53153992 -0.37737036 5.088670731 10.5120697 -0.42399979 5.10836744 10.53153992 -0.47062922
		 5.11652565 10.5785675 -0.48994374 5.10836744 10.62557983 -0.47062922 5.088670731 10.64506531 -0.42399979
		 5.068974495 10.62557983 -0.37737036 5.060816765 10.5785675 -0.35805583 4.9732151 1.07131958 -0.88698626
		 4.9888587 1.11833191 -0.90094614 4.9732151 1.1653595 -0.88698626 4.93544722 1.18482971 -0.85328388
		 4.89767885 1.1653595 -0.81958199 4.88203526 1.11833191 -0.8056221 4.89767885 1.07131958 -0.81958199
		 4.93544722 1.051834106 -0.85328388 5.26264048 1.094009399 -0.55133724 5.27828407 1.14103699 -0.56529713
		 5.26264048 1.18804932 -0.55133724 5.22487259 1.20753479 -0.51763487 5.18710423 1.18804932 -0.48393273
		 5.17146015 1.14103699 -0.46997309 5.18710423 1.094009399 -0.48393273 5.22487259 1.074539185 -0.51763487
		 4.86718893 1.20753479 -0.88211679 4.90618515 1.20935059 -0.92055273 4.90655184 1.21116638 -0.97530556
		 4.86807489 1.21192932 -1.014302254 4.81329298 1.21116638 -1.014698029 4.77429676 1.20935059 -0.97626209
		 4.77393007 1.20753479 -0.92150879 4.81240749 1.20677185 -0.88251257 4.71683168 10.47547913 -0.52615643
		 4.7558279 10.47731018 -0.56459284 4.75619459 10.47912598 -0.61934566 4.71771717 10.47987366 -0.65834188
		 4.66293573 10.47912598 -0.65873814 4.62393951 10.47731018 -0.6203022;
	setAttr ".vt[332:497]" 4.62357235 10.47547913 -0.5655489 4.66204977 10.47473145 -0.52655268
		 4.9537096 1.12658691 -0.9371376 4.9400239 1.078857422 -0.92946959 4.90370321 1.055099487 -0.89906549
		 4.86602354 1.069198608 -0.8637352 4.84905672 1.11291504 -0.84417534 4.86274147 1.16064453 -0.85184288
		 4.89906216 1.18441772 -0.88224745 4.93674231 1.17030334 -0.91757727 4.93295765 1.14105225 -0.96220064
		 4.90967226 1.099212646 -0.97228956 4.86768198 1.075469971 -0.95221043 4.83158588 1.083755493 -0.9137249
		 4.82252741 1.11921692 -0.87937737 4.8458128 1.16105652 -0.86928797 4.88780212 1.18478394 -0.88936758
		 4.92389917 1.17649841 -0.92785311 4.90754652 1.17202759 -0.97860956 4.86942863 1.15834045 -1.010036469
		 4.81736898 1.14997864 -1.003651619 4.78186274 1.15182495 -0.96319485 4.78370905 1.16281128 -0.91236496
		 4.82182598 1.17649841 -0.88093805 4.87388563 1.18486023 -0.8873229 4.90939188 1.18301392 -0.92778015
		 4.76438284 10.51391602 -0.56068707 4.74067545 10.53263855 -0.51575422 4.72200489 10.57754517 -0.50087786
		 4.71930885 10.62231445 -0.52477217 4.7341671 10.64073181 -0.57344007 4.75787497 10.62199402 -0.61837244
		 4.77654505 10.57710266 -0.63324928 4.77924061 10.53233337 -0.60935545 4.75637817 10.51225281 -0.5636692
		 4.7235446 10.52488708 -0.52244186 4.68228436 10.55506897 -0.51673985 4.65676785 10.58512878 -0.54990292
		 4.66194153 10.59745789 -0.60250473 4.69477558 10.58482361 -0.64373207 4.73603487 10.55462646 -0.64943409
		 4.76155138 10.52456665 -0.61627102 4.7568326 10.5087738 -0.56314993 4.7184763 10.51089478 -0.52429819
		 4.66488504 10.51809692 -0.52388477 4.6274519 10.52616882 -0.56215191 4.62810421 10.53038025 -0.61668348
		 4.66645956 10.52827454 -0.65553522 4.72005081 10.52105713 -0.65594864 4.75748396 10.51298523 -0.6176815
		 4.50937176 0.70433044 0.26060033 4.50831795 0.75431824 0.23821592 4.50937176 0.80552673 0.25769567
		 4.51191521 0.82792664 0.30762792 4.51445866 0.8084259 0.35876369 4.51551247 0.75842285 0.38114762
		 4.51445866 0.70722961 0.36166811 4.51191521 0.68481445 0.31173563 4.95232773 0.72833252 0.24515641
		 4.95127344 0.77832031 0.22277248 4.95232773 0.82952881 0.24225199 4.95487118 0.85192871 0.29218459
		 4.9574151 0.83242798 0.34331989 4.95846796 0.78242493 0.36570382 4.9574151 0.73123169 0.34622455
		 4.95487118 0.70881653 0.29629207 4.44663525 0.85336304 0.34196973 4.44117641 0.85375977 0.28745461
		 4.39877319 0.85472107 0.25277114 4.34426594 0.85568237 0.25823641 4.30958366 0.85609436 0.30064917
		 4.3150425 0.85569763 0.35516429 4.35744572 0.85473633 0.38984776 4.41195297 0.85375977 0.38438249
		 4.62945509 10.83627319 0.39601111 4.62399626 10.83666992 0.34149599 4.58159351 10.83763123 0.30681252
		 4.52708626 10.83860779 0.31227779 4.49240398 10.83900452 0.35469031 4.49786282 10.83860779 0.40920544
		 4.54026508 10.83764648 0.4438889 4.59477329 10.83668518 0.43842363 4.4580822 0.76333618 0.24261951
		 4.45546627 0.7124176 0.25955439 4.45635033 0.6882019 0.3076272 4.46021652 0.7048645 0.3586781
		 4.46479988 0.75263977 0.38280177 4.46741676 0.80354309 0.36586738 4.46653271 0.82777405 0.31779432
		 4.46266651 0.81111145 0.26674366 4.42554665 0.77891541 0.24260402 4.40307999 0.73422241 0.25569224
		 4.39236736 0.70999146 0.30170059 4.39968395 0.72039795 0.35367799 4.42074394 0.7593689 0.38117671
		 4.44321156 0.80406189 0.36808872 4.45392323 0.82829285 0.32208037 4.44660664 0.81788635 0.27010298
		 4.39682484 0.81251526 0.25113392 4.34843636 0.79808044 0.26151276 4.32074261 0.79034424 0.30629516
		 4.32996464 0.79386902 0.3592484 4.37070084 0.80656433 0.38935304 4.41908932 0.82099915 0.3789742
		 4.44678307 0.82873535 0.33419204 4.43756104 0.82521057 0.28123856 5.0153265 10.56074524 0.61591339
		 4.97953367 10.54016113 0.58069706 4.94374037 10.55870056 0.5443573 4.92891502 10.60549927 0.52818203
		 4.94374037 10.65316772 0.541646 4.97953367 10.67375183 0.57686234 5.0153265 10.6552124 0.6132021
		 5.030152321 10.6084137 0.62937784 5.37183523 10.55052185 0.25955153 5.33604193 10.52992249 0.22433496
		 5.30024958 10.54846191 0.18799531 5.28542376 10.59527588 0.17181981 5.30024958 10.64292908 0.18528378
		 5.33604193 10.66352844 0.22050035 5.37183523 10.64498901 0.25683999 5.38666105 10.59817505 0.2730155
		 4.74196434 1.047531128 0.55097055 4.73491573 1.094192505 0.52987623 4.74196434 1.14199829 0.54825878
		 4.7589798 1.16293335 0.59535074 4.77599621 1.14472961 0.64356565 4.78304482 1.098068237 0.66465998
		 4.77599621 1.050262451 0.64627695 4.7589798 1.029327393 0.59918547 5.1618433 1.066253662 0.408499
		 5.15479469 1.1129303 0.38740468 5.1618433 1.16072083 0.40578771 5.17885971 1.18165588 0.45287943
		 5.19587564 1.16346741 0.50109434 5.20292377 1.11679077 0.52218866 5.19587564 1.068984985 0.50380564
		 5.17885971 1.048065186 0.45671391 4.70658445 1.1872406 0.64706993 4.68564463 1.18760681 0.59644651
		 4.63505268 1.18884277 0.57546234 4.584445 1.19020081 0.59641027 4.56346703 1.19088745 0.64701843
		 4.58440781 1.19052124 0.69764185 4.63499928 1.18928528 0.71862602 4.68560648 1.18792725 0.69767809
		 4.97981977 10.50544739 0.65296841 4.95887947 10.50582886 0.60234451 4.90828753 10.50704956 0.58136082
		 4.85767984 10.50840759 0.60230827 4.83670235 10.5091095 0.65291691 4.85764265 10.50872803 0.70354033
		 4.9082346 10.50750732 0.7245245 4.9588418 10.50614929 0.70357656 4.68815851 1.10302734 0.54858112
		 4.69011402 1.055526733 0.56551552 4.70461941 1.032943726 0.61127329 4.72317648 1.04850769 0.65905046
		 4.73491573 1.093078613 0.68086004 4.73296022 1.14057922 0.66392612 4.71845579 1.16316223 0.61816788
		 4.69989777 1.14759827 0.5703907 4.65712976 1.11784363 0.5579567 4.63902092 1.076309204 0.57693529
		 4.64182711 1.05380249 0.6240592 4.66390371 1.06350708 0.6717248;
	setAttr ".vt[498:629]" 4.69231939 1.099716187 0.69200945 4.71042824 1.14125061 0.67303133
		 4.70762253 1.16375732 0.62590742 4.68554544 1.15406799 0.57824183 4.63236523 1.14944458 0.5744276
		 4.58890629 1.13638306 0.59830475 4.57523537 1.12942505 0.64916229 4.59936142 1.13267517 0.69720793
		 4.64715052 1.14421082 0.71429777 4.69060946 1.15727234 0.69042015 4.70428038 1.16423035 0.63956308
		 4.68015528 1.16099548 0.59151697 4.96571684 10.54241943 0.59483433 4.99842834 10.56234741 0.63314962
		 5.0051875114 10.60810852 0.65474081 4.98203468 10.65289307 0.64696074 4.94253254 10.67047119 0.61436605
		 4.90982151 10.65054321 0.57605076 4.90306187 10.6047821 0.55445957 4.92621469 10.55999756 0.56223965
		 4.95994234 10.54092407 0.60117483 4.98578644 10.55493164 0.64672375 4.97554636 10.58642578 0.68621016
		 4.93522024 10.61694336 0.69650316 4.88843012 10.62861633 0.67157364 4.86258459 10.61459351 0.6260252
		 4.87282515 10.58311462 0.58653879 4.91315174 10.55259705 0.57624578 4.9605937 10.53742981 0.60104942
		 4.98216009 10.54100037 0.65112257 4.96238041 10.54966736 0.70070314 4.91284084 10.55836487 0.72074747
		 4.8625617 10.5619812 0.69951391 4.84099531 10.55841064 0.64944077 4.86077499 10.54974365 0.59986019
		 4.91031504 10.54104614 0.57981586 4.59607792 9.39710999 0.11428469 4.58627892 9.38114929 0.084932745
		 4.57647896 9.395401 0.054713577 4.57242012 9.4315033 0.041329503 4.57647896 9.46833801 0.052620471
		 4.58627892 9.48428345 0.08197242 4.59607792 9.470047 0.11219144 4.60013723 9.43392944 0.12557566
		 5.075023651 9.39259338 -0.043159008 5.065223217 9.37663269 -0.072510958 5.055423737 9.3908844 -0.10272998
		 5.051364899 9.42698669 -0.11611414 5.055423737 9.46380615 -0.10482317 5.065223217 9.47976685 -0.075471163
		 5.075023651 9.46551514 -0.045252115 5.079082489 9.42941284 -0.031867921 4.55572605 2.052856445 0.056301892
		 4.56058788 2.088912964 0.041302115 4.55572605 2.1257782 0.054208666 4.54398823 2.14186096 0.087460458
		 4.53225136 2.12771606 0.12157941 4.52738953 2.091659546 0.13657892 4.53225136 2.054794312 0.1236726
		 4.54398823 2.038711548 0.090420783 4.97112131 2.070220947 0.047426492 4.97598362 2.10627747 0.032426924
		 4.97112131 2.1431427 0.045333266 4.95938396 2.15921021 0.078585267 4.94764709 2.14508057 0.1127041
		 4.94278526 2.10900879 0.12770355 4.94764709 2.072143555 0.11479735 4.95938396 2.05607605 0.081545472
		 4.47359943 2.16012573 0.11009425 4.48372459 2.16049194 0.073743105 4.45401478 2.16123962 0.050486833
		 4.40187359 2.16192627 0.05394876 4.35784435 2.16213989 0.082100868 4.34771919 2.16177368 0.11845219
		 4.37742901 2.161026 0.14170837 4.4295702 2.16033936 0.13824654 4.5484066 9.3540802 0.13117886
		 4.55853176 9.35444641 0.094827712 4.52882195 9.35519409 0.07157141 4.47668076 9.35588074 0.075033367
		 4.43265152 9.35610962 0.10318559 4.42252636 9.35572815 0.13953674 4.45223618 9.35499573 0.16279292
		 4.50437737 9.35430908 0.15933108 4.51264477 2.095397949 0.044058084 4.50590134 2.058685303 0.055415183
		 4.49351501 2.041152954 0.087494969 4.48273945 2.053085327 0.1215055 4.47988892 2.087478638 0.13752389
		 4.48663139 2.12419128 0.12616694 4.49901867 2.14172363 0.094087183 4.50979328 2.12979126 0.060076654
		 4.48231411 2.10662842 0.043916672 4.45816326 2.074401855 0.052635372 4.43558502 2.056854248 0.083300948
		 4.42780495 2.064285278 0.11795008 4.4393816 2.092315674 0.13628566 4.4635334 2.1245575 0.12756705
		 4.48611164 2.14208984 0.096901536 4.49389076 2.13467407 0.062252343 4.45300007 2.13082886 0.049454898
		 4.40529442 2.12039185 0.056235641 4.36715794 2.11476135 0.086002767 4.36093044 2.11720276 0.12131917
		 4.3902607 2.12631226 0.14149714 4.43796635 2.13674927 0.13471651 4.47610188 2.14237976 0.10494936
		 4.48232937 2.1399231 0.069632769 4.56751442 9.38276672 0.091235101 4.57317543 9.3981781 0.12196273
		 4.56639576 9.43345642 0.13686526 4.55114651 9.46792603 0.12721288 4.53636074 9.48139954 0.098659933
		 4.53069878 9.46598816 0.067932367 4.53747845 9.43070984 0.053029865 4.5527277 9.39624023 0.062682211
		 4.55947781 9.38156128 0.094154 4.55580997 9.39233398 0.12817347 4.52593803 9.41642761 0.15121543
		 4.48735809 9.43971252 0.14978254 4.46267128 9.44856262 0.1247139 4.46633911 9.43777466 0.090694487
		 4.49621105 9.41368103 0.067652464 4.53479099 9.39039612 0.069085538 4.56012535 9.37886047 0.094214916
		 4.55074024 9.38154602 0.13032246 4.50810719 9.38792419 0.15802276 4.45720005 9.39428711 0.16108918
		 4.42784023 9.3968811 0.13772559 4.43722534 9.39421082 0.10161799 4.4798584 9.38781738 0.073917747
		 4.53076553 9.38145447 0.070851326;
	setAttr -s 1209 ".ed";
	setAttr ".ed[0:165]"  88 83 0 83 7 0 7 6 0 6 88 0 83 84 0 84 8 0 8 7 0 84 85 0
		 85 9 0 9 8 0 85 86 0 86 10 0 10 9 0 86 87 0 87 11 0 11 10 0 87 88 0 6 11 0 7 13 0
		 13 12 0 12 6 0 8 14 0 14 13 0 9 15 0 15 14 0 10 16 0 16 15 0 11 17 0 17 16 0 12 17 0
		 13 19 0 19 18 0 18 12 0 14 20 0 20 19 0 15 21 0 21 20 0 16 22 0 22 21 0 17 23 0 23 22 0
		 18 23 0 19 25 0 25 24 0 24 18 0 20 26 0 26 25 0 21 27 0 27 26 0 22 28 0 28 27 0 23 29 0
		 29 28 0 24 29 0 25 31 0 31 30 0 30 24 0 26 32 0 32 31 0 27 33 0 33 32 0 28 34 0 34 33 0
		 29 35 0 35 34 0 30 35 0 31 37 0 37 36 0 36 30 0 32 38 0 38 37 0 33 39 0 39 38 0 34 40 0
		 40 39 0 35 41 0 41 40 0 36 41 0 37 43 0 43 42 0 42 36 0 38 44 0 44 43 0 39 45 0 45 44 0
		 40 46 0 46 45 0 41 47 0 47 46 0 42 47 0 43 49 0 49 48 0 48 42 0 44 50 0 50 49 0 45 51 0
		 51 50 0 47 52 0 48 52 0 49 54 0 54 53 0 53 48 0 50 55 0 55 54 0 51 56 0 56 55 0 57 56 0
		 52 58 0 58 57 0 53 58 0 54 60 0 60 59 0 59 53 0 55 61 0 61 60 0 56 62 0 62 61 0 57 63 0
		 63 62 0 58 64 0 64 63 0 59 64 0 60 66 0 66 65 0 65 59 0 61 67 0 67 66 0 62 68 0 68 67 0
		 63 69 0 69 68 0 64 70 0 70 69 0 65 70 0 66 72 0 72 71 0 71 65 0 67 73 0 73 72 0 68 74 0
		 74 73 0 69 75 0 75 74 0 70 76 0 76 75 0 71 76 0 72 78 0 78 77 0 77 71 0 73 79 0 79 78 0
		 74 80 0 80 79 0 75 81 0 81 80 0 76 82 0 82 81 0 77 82 0 1 2 0 2 84 0 83 1 0 2 3 0
		 3 85 0 3 4 0 4 86 0 4 5 0;
	setAttr ".ed[166:331]" 5 87 0 5 0 0 0 88 0 0 1 0 0 89 0 89 90 0 90 1 0 90 91 0
		 91 2 0 91 92 0 92 3 0 92 93 0 93 4 0 93 94 0 94 5 0 94 89 0 89 95 0 95 96 0 96 90 0
		 96 97 0 97 91 0 97 98 0 98 92 0 98 99 0 99 93 0 99 100 0 100 94 0 100 95 0 95 101 0
		 101 102 0 102 96 0 102 103 0 103 97 0 103 104 0 104 98 0 104 105 0 105 99 0 105 106 0
		 106 100 0 106 101 0 101 107 0 107 108 0 108 102 0 108 109 0 109 103 0 109 110 0 110 104 0
		 110 111 0 111 105 0 111 112 0 112 106 0 112 107 0 113 114 0 114 121 0 121 120 0 120 113 0
		 114 115 0 115 122 0 122 121 0 115 116 0 116 123 0 123 122 0 116 117 0 117 124 0 124 123 0
		 117 118 0 118 125 0 125 124 0 118 119 0 119 126 0 126 125 0 119 113 0 120 126 0 121 127 0
		 127 120 0 122 127 0 123 127 0 124 127 0 125 127 0 126 127 0 128 129 0 129 136 0 136 135 0
		 135 128 0 129 130 0 130 137 0 137 136 0 130 131 0 131 138 0 138 137 0 131 132 0 132 139 0
		 139 138 0 132 133 0 133 140 0 140 139 0 133 134 0 134 141 0 141 140 0 134 128 0 135 141 0
		 136 142 0 142 135 0 137 142 0 138 142 0 139 142 0 140 142 0 141 142 0 143 144 0 144 151 0
		 151 150 0 150 143 0 144 145 0 145 152 0 152 151 0 145 146 0 146 153 0 153 152 0 146 147 0
		 147 154 0 154 153 0 147 148 0 148 155 0 155 154 0 148 149 0 149 156 0 156 155 0 149 143 0
		 150 156 0 151 157 0 157 150 0 152 157 0 153 157 0 154 157 0 155 157 0 156 157 0 158 159 0
		 159 166 0 166 165 0 165 158 0 159 160 0 160 167 0 167 166 0 160 161 0 161 168 0 168 167 0
		 161 162 0 162 169 0 169 168 0 162 163 0 163 170 0 170 169 0 163 164 0 164 171 0 171 170 0
		 164 158 0 165 171 0 166 172 0 172 165 0 167 172 0 168 172 0 169 172 0 170 172 0 171 172 0
		 173 174 0 174 181 0;
	setAttr ".ed[332:497]" 181 180 0 180 173 0 174 175 0 175 182 0 182 181 0 175 176 0
		 176 183 0 183 182 0 176 177 0 177 184 0 184 183 0 177 178 0 178 185 0 185 184 0 178 179 0
		 179 186 0 186 185 0 179 173 0 180 186 0 181 187 0 187 180 0 182 187 0 183 187 0 184 187 0
		 185 187 0 186 187 0 188 189 0 189 196 0 196 195 0 195 188 0 189 190 0 190 197 0 197 196 0
		 190 191 0 191 198 0 198 197 0 191 192 0 192 199 0 199 198 0 192 193 0 193 200 0 200 199 0
		 193 194 0 194 201 0 201 200 0 194 188 0 195 201 0 196 202 0 202 195 0 197 202 0 198 202 0
		 199 202 0 200 202 0 201 202 0 203 204 0 204 211 0 211 210 0 210 203 0 204 205 0 205 212 0
		 212 211 0 205 206 0 206 213 0 213 212 0 206 207 0 207 214 0 214 213 0 207 208 0 208 215 0
		 215 214 0 208 209 0 209 216 0 216 215 0 209 203 0 210 216 0 211 217 0 217 210 0 212 217 0
		 213 217 0 214 217 0 215 217 0 216 217 0 208 218 0 218 219 0 219 209 0 219 220 0 220 203 0
		 221 222 0 222 229 0 229 228 0 228 221 0 222 223 0 223 230 0 230 229 0 223 224 0 224 231 0
		 231 230 0 224 225 0 225 232 0 232 231 0 225 226 0 226 233 0 233 232 0 226 227 0 227 234 0
		 234 233 0 227 221 0 228 234 0 229 235 0 235 228 0 230 235 0 231 235 0 232 235 0 233 235 0
		 234 235 0 225 236 0 236 226 0 221 236 0 236 222 0 227 236 0 224 236 0 223 236 0 237 238 0
		 238 245 0 245 244 0 244 237 0 238 239 0 239 246 0 246 245 0 239 240 0 240 247 0 247 246 0
		 240 241 0 241 248 0 248 247 0 241 242 0 242 249 0 249 248 0 242 243 0 243 250 0 250 249 0
		 243 237 0 244 250 0 245 251 0 251 244 0 246 251 0 247 251 0 248 251 0 249 251 0 250 251 0
		 238 252 0 252 239 0 252 253 0 253 240 0 253 241 0 254 255 0 255 262 0 262 261 0 261 254 0
		 255 256 0 256 263 0 263 262 0 256 257 0 257 264 0 264 263 0 257 258 0;
	setAttr ".ed[498:663]" 258 265 0 265 264 0 258 259 0 259 266 0 266 265 0 259 260 0
		 260 267 0 267 266 0 260 254 0 261 267 0 262 268 0 268 261 0 263 268 0 264 268 0 265 268 0
		 266 268 0 267 268 0 258 269 0 269 259 0 254 269 0 269 255 0 260 269 0 257 269 0 256 269 0
		 270 271 0 271 278 0 278 277 0 277 270 0 271 272 0 272 279 0 279 278 0 272 273 0 273 280 0
		 280 279 0 273 274 0 274 281 0 281 280 0 274 275 0 275 282 0 282 281 0 275 276 0 276 283 0
		 283 282 0 276 270 0 277 283 0 278 284 0 284 277 0 279 284 0 280 284 0 281 284 0 282 284 0
		 283 284 0 273 285 0 285 274 0 285 276 0 286 287 0 287 295 0 295 294 0 294 286 0 287 288 0
		 288 296 0 296 295 0 288 289 0 289 297 0 297 296 0 289 290 0 290 298 0 298 297 0 290 291 0
		 291 299 0 299 298 0 291 292 0 292 300 0 300 299 0 292 293 0 293 301 0 301 300 0 293 286 0
		 294 301 0 302 303 0 303 311 0 311 310 0 310 302 0 303 304 0 304 312 0 312 311 0 304 305 0
		 305 313 0 313 312 0 305 306 0 306 314 0 314 313 0 306 307 0 307 315 0 315 314 0 307 308 0
		 308 316 0 316 315 0 308 309 0 309 317 0 317 316 0 309 302 0 310 317 0 318 319 0 319 327 0
		 327 326 0 326 318 0 319 320 0 320 328 0 328 327 0 320 321 0 321 329 0 329 328 0 321 322 0
		 322 330 0 330 329 0 322 323 0 323 331 0 331 330 0 323 324 0 324 332 0 332 331 0 324 325 0
		 325 333 0 333 332 0 325 318 0 326 333 0 350 351 0 351 321 0 320 350 0 351 352 0 352 322 0
		 352 353 0 353 323 0 353 354 0 354 324 0 354 355 0 355 325 0 355 356 0 356 318 0 356 357 0
		 357 319 0 357 350 0 302 335 0 335 334 0 334 303 0 309 336 0 336 335 0 308 337 0 337 336 0
		 307 338 0 338 337 0 306 339 0 339 338 0 305 340 0 340 339 0 304 341 0 341 340 0 334 341 0
		 335 343 0 343 342 0 342 334 0 336 344 0 344 343 0 337 345 0 345 344 0;
	setAttr ".ed[664:829]" 338 346 0 346 345 0 339 347 0 347 346 0 340 348 0 348 347 0
		 341 349 0 349 348 0 342 349 0 343 351 0 350 342 0 344 352 0 345 353 0 346 354 0 347 355 0
		 348 356 0 349 357 0 374 375 0 375 326 0 327 374 0 375 376 0 376 333 0 376 377 0 377 332 0
		 377 378 0 378 331 0 378 379 0 379 330 0 379 380 0 380 329 0 380 381 0 381 328 0 381 374 0
		 286 359 0 359 358 0 358 287 0 293 360 0 360 359 0 292 361 0 361 360 0 291 362 0 362 361 0
		 290 363 0 363 362 0 289 364 0 364 363 0 288 365 0 365 364 0 358 365 0 359 367 0 367 366 0
		 366 358 0 360 368 0 368 367 0 361 369 0 369 368 0 362 370 0 370 369 0 363 371 0 371 370 0
		 364 372 0 372 371 0 365 373 0 373 372 0 366 373 0 367 375 0 374 366 0 368 376 0 369 377 0
		 370 378 0 371 379 0 372 380 0 373 381 0 382 383 0 383 391 0 391 390 0 390 382 0 383 384 0
		 384 392 0 392 391 0 384 385 0 385 393 0 393 392 0 385 386 0 386 394 0 394 393 0 386 387 0
		 387 395 0 395 394 0 387 388 0 388 396 0 396 395 0 388 389 0 389 397 0 397 396 0 389 382 0
		 390 397 0 398 399 0 399 407 0 407 406 0 406 398 0 399 400 0 400 408 0 408 407 0 400 401 0
		 401 409 0 409 408 0 401 402 0 402 410 0 410 409 0 402 403 0 403 411 0 411 410 0 403 404 0
		 404 412 0 412 411 0 404 405 0 405 413 0 413 412 0 405 398 0 406 413 0 430 431 0 431 401 0
		 400 430 0 431 432 0 432 402 0 432 433 0 433 403 0 433 434 0 434 404 0 434 435 0 435 405 0
		 435 436 0 436 398 0 436 437 0 437 399 0 437 430 0 382 415 0 415 414 0 414 383 0 389 416 0
		 416 415 0 388 417 0 417 416 0 387 418 0 418 417 0 386 419 0 419 418 0 385 420 0 420 419 0
		 384 421 0 421 420 0 414 421 0 415 423 0 423 422 0 422 414 0 416 424 0 424 423 0 417 425 0
		 425 424 0 418 426 0 426 425 0 419 427 0 427 426 0 420 428 0 428 427 0;
	setAttr ".ed[830:995]" 421 429 0 429 428 0 422 429 0 423 431 0 430 422 0 424 432 0
		 425 433 0 426 434 0 427 435 0 428 436 0 429 437 0 438 439 0 439 447 0 447 446 0 446 438 0
		 439 440 0 440 448 0 448 447 0 440 441 0 441 449 0 449 448 0 441 442 0 442 450 0 450 449 0
		 442 443 0 443 451 0 451 450 0 443 444 0 444 452 0 452 451 0 444 445 0 445 453 0 453 452 0
		 445 438 0 446 453 0 454 455 0 455 463 0 463 462 0 462 454 0 455 456 0 456 464 0 464 463 0
		 456 457 0 457 465 0 465 464 0 457 458 0 458 466 0 466 465 0 458 459 0 459 467 0 467 466 0
		 459 460 0 460 468 0 468 467 0 460 461 0 461 469 0 469 468 0 461 454 0 462 469 0 470 471 0
		 471 479 0 479 478 0 478 470 0 471 472 0 472 480 0 480 479 0 472 473 0 473 481 0 481 480 0
		 473 474 0 474 482 0 482 481 0 474 475 0 475 483 0 483 482 0 475 476 0 476 484 0 484 483 0
		 476 477 0 477 485 0 485 484 0 477 470 0 478 485 0 502 503 0 503 473 0 472 502 0 503 504 0
		 504 474 0 504 505 0 505 475 0 505 506 0 506 476 0 506 507 0 507 477 0 507 508 0 508 470 0
		 508 509 0 509 471 0 509 502 0 454 487 0 487 486 0 486 455 0 461 488 0 488 487 0 460 489 0
		 489 488 0 459 490 0 490 489 0 458 491 0 491 490 0 457 492 0 492 491 0 456 493 0 493 492 0
		 486 493 0 487 495 0 495 494 0 494 486 0 488 496 0 496 495 0 489 497 0 497 496 0 490 498 0
		 498 497 0 491 499 0 499 498 0 492 500 0 500 499 0 493 501 0 501 500 0 494 501 0 495 503 0
		 502 494 0 496 504 0 497 505 0 498 506 0 499 507 0 500 508 0 501 509 0 526 527 0 527 478 0
		 479 526 0 527 528 0 528 485 0 528 529 0 529 484 0 529 530 0 530 483 0 530 531 0 531 482 0
		 531 532 0 532 481 0 532 533 0 533 480 0 533 526 0 438 511 0 511 510 0 510 439 0 445 512 0
		 512 511 0 444 513 0 513 512 0 443 514 0 514 513 0 442 515 0 515 514 0;
	setAttr ".ed[996:1161]" 441 516 0 516 515 0 440 517 0 517 516 0 510 517 0 511 519 0
		 519 518 0 518 510 0 512 520 0 520 519 0 513 521 0 521 520 0 514 522 0 522 521 0 515 523 0
		 523 522 0 516 524 0 524 523 0 517 525 0 525 524 0 518 525 0 519 527 0 526 518 0 520 528 0
		 521 529 0 522 530 0 523 531 0 524 532 0 525 533 0 534 535 0 535 543 0 543 542 0 542 534 0
		 535 536 0 536 544 0 544 543 0 536 537 0 537 545 0 545 544 0 537 538 0 538 546 0 546 545 0
		 538 539 0 539 547 0 547 546 0 539 540 0 540 548 0 548 547 0 540 541 0 541 549 0 549 548 0
		 541 534 0 542 549 0 550 551 0 551 559 0 559 558 0 558 550 0 551 552 0 552 560 0 560 559 0
		 552 553 0 553 561 0 561 560 0 553 554 0 554 562 0 562 561 0 554 555 0 555 563 0 563 562 0
		 555 556 0 556 564 0 564 563 0 556 557 0 557 565 0 565 564 0 557 550 0 558 565 0 566 567 0
		 567 575 0 575 574 0 574 566 0 567 568 0 568 576 0 576 575 0 568 569 0 569 577 0 577 576 0
		 569 570 0 570 578 0 578 577 0 570 571 0 571 579 0 579 578 0 571 572 0 572 580 0 580 579 0
		 572 573 0 573 581 0 581 580 0 573 566 0 574 581 0 598 599 0 599 569 0 568 598 0 599 600 0
		 600 570 0 600 601 0 601 571 0 601 602 0 602 572 0 602 603 0 603 573 0 603 604 0 604 566 0
		 604 605 0 605 567 0 605 598 0 550 583 0 583 582 0 582 551 0 557 584 0 584 583 0 556 585 0
		 585 584 0 555 586 0 586 585 0 554 587 0 587 586 0 553 588 0 588 587 0 552 589 0 589 588 0
		 582 589 0 583 591 0 591 590 0 590 582 0 584 592 0 592 591 0 585 593 0 593 592 0 586 594 0
		 594 593 0 587 595 0 595 594 0 588 596 0 596 595 0 589 597 0 597 596 0 590 597 0 591 599 0
		 598 590 0 592 600 0 593 601 0 594 602 0 595 603 0 596 604 0 597 605 0 622 623 0 623 574 0
		 575 622 0 623 624 0 624 581 0 624 625 0 625 580 0 625 626 0 626 579 0;
	setAttr ".ed[1162:1208]" 626 627 0 627 578 0 627 628 0 628 577 0 628 629 0 629 576 0
		 629 622 0 534 607 0 607 606 0 606 535 0 541 608 0 608 607 0 540 609 0 609 608 0 539 610 0
		 610 609 0 538 611 0 611 610 0 537 612 0 612 611 0 536 613 0 613 612 0 606 613 0 607 615 0
		 615 614 0 614 606 0 608 616 0 616 615 0 609 617 0 617 616 0 610 618 0 618 617 0 611 619 0
		 619 618 0 612 620 0 620 619 0 613 621 0 621 620 0 614 621 0 615 623 0 622 614 0 616 624 0
		 617 625 0 618 626 0 619 627 0 620 628 0 621 629 0;
	setAttr -s 2266 ".n";
	setAttr ".n[0:165]" -type "float3"  0 -3.14470243 -8.57175922 5.80666208
		 -3.74937248 -5.96565866 7.52099562 -0.9311915 -5.092317581 0 -0.56835842 -9.11269855
		 5.80666208 -3.74937248 -5.96565866 7.30571938 -5.28736115 1.42637885 7.98008156 -1.45821667
		 4.19001484 7.52099562 -0.9311915 -5.092317581 7.30571938 -5.28736115 1.42637885 0
		 -6.18843174 6.71323776 0 -1.56163669 8.99585724 7.98008156 -1.45821667 4.19001484
		 0 -6.18843174 6.71323776 -7.30571938 -5.28736115 1.42637885 -7.98008156 -1.45821667
		 4.19001484 0 -1.56163669 8.99585724 -7.30571938 -5.28736115 1.42637885 -5.80666208
		 -3.74937248 -5.96565866 -7.52099562 -0.9311915 -5.092317581 -7.98008156 -1.45821667
		 4.19001484 -5.80666208 -3.74937248 -5.96565866 0 -3.14470243 -8.57175922 0 -0.56835842
		 -9.11269855 -7.52099562 -0.9311915 -5.092317581 0 -0.56835842 -9.11269855 7.52099562
		 -0.9311915 -5.092317581 8.090961456 0.34427094 -4.21687651 0 1.070713162 -9.06740284
		 7.52099562 -0.9311915 -5.092317581 7.98008156 -1.45821667 4.19001484 7.70327473 -1.031160355
		 4.79171753 8.090961456 0.34427094 -4.21687651 7.98008156 -1.45821667 4.19001484 0
		 -1.56163669 8.99585724 0 -1.67746496 8.97498512 7.70327473 -1.031160355 4.79171753
		 0 -1.56163669 8.99585724 -7.98008156 -1.45821667 4.19001484 -7.70327473 -1.031160355
		 4.79171753 0 -1.67746496 8.97498512 -7.98008156 -1.45821667 4.19001484 -7.52099562
		 -0.9311915 -5.092317581 -8.090961456 0.34427094 -4.21688557 -7.70327473 -1.031160355
		 4.79171753 -7.52099562 -0.9311915 -5.092317581 0 -0.56835842 -9.11269855 0 1.070713162
		 -9.06740284 -8.090961456 0.34427094 -4.21688557 0 1.070713162 -9.06740284 8.090961456
		 0.34427094 -4.21687651 8.37173939 0.95897532 -3.51548815 0 2.82202482 -8.68334103
		 8.090961456 0.34427094 -4.21687651 7.70327473 -1.031160355 4.79171753 7.23822737
		 -2.70212436 4.86527205 8.37173939 0.95897532 -3.51548815 7.70327473 -1.031160355
		 4.79171753 0 -1.67746496 8.97498512 0 -4.1779995 8.11840725 7.23822737 -2.70212436
		 4.86527205 0 -1.67746496 8.97498512 -7.70327473 -1.031160355 4.79171753 -7.23822737
		 -2.70212436 4.86527205 0 -4.1779995 8.11840725 -7.70327473 -1.031160355 4.79171753
		 -8.090961456 0.34427094 -4.21688557 -8.37173939 0.95897532 -3.51548815 -7.23822737
		 -2.70212436 4.86527205 -8.090961456 0.34427094 -4.21688557 0 1.070713162 -9.06740284
		 0 2.82202482 -8.68334103 -8.37173939 0.95897532 -3.51548815 0 2.82202482 -8.68334103
		 8.37173939 0.95897532 -3.51548815 8.87420368 1.68171978 -1.33587837 0 7.63610268
		 -5.0054144859 8.37173939 0.95897532 -3.51548815 7.23822737 -2.70212436 4.86527205
		 6.67462587 -5.77210331 2.34445906 8.87420368 1.68171978 -1.33587837 7.23822737 -2.70212436
		 4.86527205 0 -4.1779995 8.11840725 0 -8.38289642 3.61819577 6.67462587 -5.77210331
		 2.34445906 0 -4.1779995 8.11840725 -7.23822737 -2.70212436 4.86527205 -6.67462587
		 -5.77210331 2.34445906 0 -8.38289642 3.61819577 -7.23822737 -2.70212436 4.86527205
		 -8.37173939 0.95897532 -3.51548815 -8.87420368 1.68171978 -1.33587837 -6.67462587
		 -5.77210331 2.34445906 -8.37173939 0.95897532 -3.51548815 0 2.82202482 -8.68334103
		 0 7.63610268 -5.0054144859 -8.87420368 1.68171978 -1.33587837 0 7.63610268 -5.0054144859
		 8.87420368 1.68171978 -1.33587837 8.8693552 1.85260427 1.12549555 0 7.17205906 5.65028572
		 8.87420368 1.68171978 -1.33587837 6.67462587 -5.77210331 2.34445906 6.59961939 -5.20696831
		 -3.56325817 8.8693552 1.85260427 1.12549555 6.67462587 -5.77210331 2.34445906 0 -8.38289642
		 3.61819577 0 -7.63921595 -5.00065755844 6.59961939 -5.20696831 -3.56325817 0 -8.38289642
		 3.61819577 -6.67462587 -5.77210331 2.34445906 -6.59961939 -5.20696831 -3.56324935
		 0 -7.63921595 -5.00065755844 -6.67462587 -5.77210331 2.34445906 -8.87420368 1.68171978
		 -1.33587837 -8.8693552 1.85260427 1.12549555 -6.59961939 -5.20696831 -3.56324935
		 -8.87420368 1.68171978 -1.33587837 0 7.63610268 -5.0054144859 0 7.17205906 5.65028572
		 -8.8693552 1.85260427 1.12549555 0 7.17205906 5.65028572 8.8693552 1.85260427 1.12549555
		 8.35382557 0.85923481 3.5832355 0 1.88312721 8.9340992 8.8693552 1.85260427 1.12549555
		 6.59961939 -5.20696831 -3.56325817 7.18547153 -1.50571299 -5.42826176 8.35382557
		 0.85923481 3.5832355 6.59961939 -5.20696831 -3.56325817 0 -7.63921595 -5.00065755844
		 0 -2.37235236 -8.81680965 7.18547153 -1.50571299 -5.42826176 0 -7.63921595 -5.00065755844
		 -6.59961939 -5.20696831 -3.56324935 -7.18547153 -1.50571299 -5.42826176 0 -2.37235236
		 -8.81680965 -6.59961939 -5.20696831 -3.56324935 -8.8693552 1.85260427 1.12549555
		 -8.35382557 0.85923481 3.5832355 -7.18547153 -1.50571299 -5.42826176 -8.8693552 1.85260427
		 1.12549555 0 7.17205906 5.65028572 0 1.88312721 8.9340992 -8.35382557 0.85923481
		 3.5832355 0 1.88312721 8.9340992 8.35382557 0.85923481 3.5832355 7.94653654 0.33244708
		 4.48399544 0 0.41060334 9.12116241 8.35382557 0.85923481 3.5832355 7.18547153 -1.50571299
		 -5.42826176 7.85938644 0.17527634 -4.64365911 7.94653654 0.33244708 4.48399544 7.18547153
		 -1.50571299 -5.42826176 0 -2.37235236 -8.81680965 0 0.096554011 -9.1298914 7.85938644
		 0.17527634 -4.64365911 0 -2.37235236 -8.81680965 -7.18547153 -1.50571299 -5.42826176
		 -7.85938644 0.17527634 -4.64365911 0 0.096554011 -9.1298914 -7.18547153 -1.50571299
		 -5.42826176 -8.35382557 0.85923481 3.5832355 -7.94653654 0.33244708 4.48399544 -7.85938644
		 0.17527634 -4.64365911 -8.35382557 0.85923481 3.5832355 0 1.88312721 8.9340992;
	setAttr ".n[166:331]" -type "float3"  0 0.41060334 9.12116241 -7.94653654 0.33244708
		 4.48399544 0 0.41060334 9.12116241 7.94653654 0.33244708 4.48399544 7.91118336 0.25047433
		 4.55134106 0 0.2478539 9.12703323 7.94653654 0.33244708 4.48399544 7.85938644 0.17527634
		 -4.64365911 7.89703131 0.25566038 -4.57556438 7.91118336 0.25047433 4.55134106 7.85938644
		 0.17527634 -4.64365911 0 0.096554011 -9.1298914 0 0.25823519 -9.12674999 7.89703131
		 0.25566038 -4.57556438 -7.94653654 0.33244708 4.48399544 0 0.41060334 9.12116241
		 0 0.2478539 9.12703323 -7.91118336 0.25047433 4.55134106 0 0.2478539 9.12703323 7.91118336
		 0.25047433 4.55134106 7.90620756 0.20858404 4.56208801 0 0.18975715 9.12843037 7.91118336
		 0.25047433 4.55134106 7.89703131 0.25566038 -4.57556438 7.90320349 0.24621956 -4.56541157
		 7.90620756 0.20858404 4.56208801 7.89703131 0.25566038 -4.57556438 0 0.25823519 -9.12674999
		 0 0.26502821 -9.1265583 7.90320349 0.24621956 -4.56541157 -7.91118336 0.25047433
		 4.55134106 0 0.2478539 9.12703323 0 0.18975715 9.12843037 -7.90620756 0.20858404
		 4.56208801 0 0.18975715 9.12843037 7.90620756 0.20858404 4.56208801 7.90386105 0.1814211
		 4.56731081 0 0.1628316 9.12895107 7.90620756 0.20858404 4.56208801 7.90320349 0.24621956
		 -4.56541157 7.90666389 0.21862748 -4.56082773 7.90386105 0.1814211 4.56731081 7.90320349
		 0.24621956 -4.56541157 0 0.26502821 -9.1265583 0 0.23723525 -9.12731647 7.90666389
		 0.21862748 -4.56082773 0 0.26502821 -9.1265583 -7.90320349 0.24621956 -4.56541157
		 -7.90666389 0.21862748 -4.56082773 0 0.23723525 -9.12731647 -7.90320349 0.24621956
		 -4.56541157 -7.90620756 0.20858404 4.56208801 -7.90386105 0.1814211 4.56731081 -7.90666389
		 0.21862748 -4.56082773 -7.90620756 0.20858404 4.56208801 0 0.18975715 9.12843037
		 0 0.1628316 9.12895107 -7.90386105 0.1814211 4.56731081 0 0.1628316 9.12895107 7.90386105
		 0.1814211 4.56731081 7.9023633 0.18825977 4.56962013 0 0.17889199 9.12864971 7.90386105
		 0.1814211 4.56731081 7.90666389 0.21862748 -4.56082773 7.90824318 0.20701361 -4.55862761
		 7.9023633 0.18825977 4.56962013 7.90666389 0.21862748 -4.56082773 0 0.23723525 -9.12731647
		 0 0.21640879 -9.12783718 7.90824318 0.20701361 -4.55862761 0 0.23723525 -9.12731647
		 -7.90666389 0.21862748 -4.56082773 -7.90824318 0.20701361 -4.55862761 0 0.21640879
		 -9.12783718 -7.90666389 0.21862748 -4.56082773 -7.90386105 0.1814211 4.56731081 -7.9023633
		 0.18825977 4.56962013 -7.90824318 0.20701361 -4.55862761 -7.90386105 0.1814211 4.56731081
		 0 0.1628316 9.12895107 0 0.17889199 9.12864971 -7.9023633 0.18825977 4.56962013 0
		 0.17889199 9.12864971 7.9023633 0.18825977 4.56962013 7.897223 0.21045579 4.57753658
		 0 0.22310139 9.12767315 7.9023633 0.18825977 4.56962013 7.90824318 0.20701361 -4.55862761
		 7.91331053 0.18515544 -4.55075693 7.897223 0.21045579 4.57753658 7.90824318 0.20701361
		 -4.55862761 0 0.21640879 -9.12783718 0 0.17250982 -9.1287775 7.91331053 0.18515544
		 -4.55075693 0 0.21640879 -9.12783718 -7.90824318 0.20701361 -4.55862761 -7.91331053
		 0.18515544 -4.55075693 0 0.17250982 -9.1287775 -7.90824318 0.20701361 -4.55862761
		 -7.9023633 0.18825977 4.56962013 -7.897223 0.21045579 4.57753658 -7.91331053 0.18515544
		 -4.55075693 -7.9023633 0.18825977 4.56962013 0 0.17889199 9.12864971 0 0.22310139
		 9.12767315 -7.897223 0.21045579 4.57753658 0 0.22310139 9.12767315 7.897223 0.21045579
		 4.57753658 7.68496847 0.65843892 4.88589764 0 1.015748143 9.073730469 7.897223 0.21045579
		 4.57753658 7.91331053 0.18515544 -4.55075693 8.050732613 -0.097193137 -4.30586147
		 7.68496847 0.65843892 4.88589764 7.91331053 0.18515544 -4.55075693 0 0.17250982 -9.1287775
		 0 -0.45316017 -9.11914539 8.050732613 -0.097193137 -4.30586147 0 0.17250982 -9.1287775
		 -7.91331053 0.18515544 -4.55075693 -8.050732613 -0.097193137 -4.30586147 0 -0.45316017
		 -9.11914539 -7.91331053 0.18515544 -4.55075693 -7.897223 0.21045579 4.57753658 -7.68496847
		 0.65843892 4.88589764 -8.050732613 -0.097193137 -4.30586147 -7.897223 0.21045579
		 4.57753658 0 0.22310139 9.12767315 0 1.015748143 9.073730469 -7.68496847 0.65843892
		 4.88589764 4.58368111 -5.17568731 -5.9637599 5.89529991 -6.96717262 -0.2611843 7.30571938
		 -5.28736115 1.42637885 5.80666208 -3.74937248 -5.96565866 5.89529991 -6.96717262
		 -0.2611843 0 -8.22594452 3.96207428 0 -6.18843174 6.71323776 7.30571938 -5.28736115
		 1.42637885 0 -8.22594452 3.96207428 -5.89529991 -6.96717262 -0.2611843 -7.30571938
		 -5.28736115 1.42637885 0 -6.18843174 6.71323776 -5.89529991 -6.96717262 -0.2611843
		 -4.58367205 -5.17568731 -5.9637599 -5.80666208 -3.74937248 -5.96565866 -7.30571938
		 -5.28736115 1.42637885 -4.58367205 -5.17568731 -5.9637599 0 -4.53455973 -7.9247694
		 0 -3.14470243 -8.57175922 -5.80666208 -3.74937248 -5.96565866 0 -4.53455973 -7.9247694
		 4.58368111 -5.17568731 -5.9637599 5.80666208 -3.74937248 -5.96565866 0 -3.14470243
		 -8.57175922 -1.81036699 7.49225283 4.89417887 0 7.135921 5.69587374 0 6.57496691
		 6.33514833 -2.61418033 7.031350136 5.20484972 -2.16677237 8.40815067 2.82354045 -1.81036699
		 7.49225283 4.89417887 -2.61418033 7.031350136 5.20484972 -3.29948092 8.25609303 2.077166557
		 0 9.015751839 1.44240272 -2.16677237 8.40815067 2.82354045 -3.29948092 8.25609303
		 2.077166557 0 9.12736225 -0.23579264;
	setAttr ".n[332:497]" -type "float3"  2.16677237 8.40815067 2.82354045 0 9.015751839
		 1.44240272 0 9.12736225 -0.23579264 3.29948092 8.25609303 2.077166557 1.81036699
		 7.49225283 4.89417887 2.16677237 8.40815067 2.82354045 3.29948092 8.25609303 2.077166557
		 2.61418033 7.031350136 5.20484972 0 7.135921 5.69587374 1.81036699 7.49225283 4.89417887
		 2.61418033 7.031350136 5.20484972 0 6.57496691 6.33514833 -2.61418033 7.031350136
		 5.20484972 0 6.57496691 6.33514833 0 4.69164848 7.83279896 -4.91931486 5.26100159
		 5.61127186 -3.29948092 8.25609303 2.077166557 -2.61418033 7.031350136 5.20484972
		 -4.91931486 5.26100159 5.61127186 -6.18453312 6.66149616 -0.86039436 0 9.12736225
		 -0.23579264 -3.29948092 8.25609303 2.077166557 -6.18453312 6.66149616 -0.86039436
		 0 7.41091013 -5.33315945 3.29948092 8.25609303 2.077166557 0 9.12736225 -0.23579264
		 0 7.41091013 -5.33315945 6.18454218 6.66148663 -0.86039436 2.61418033 7.031350136
		 5.20484972 3.29948092 8.25609303 2.077166557 6.18454218 6.66148663 -0.86039436 4.91931486
		 5.26101112 5.61127186 0 6.57496691 6.33514833 2.61418033 7.031350136 5.20484972 4.91931486
		 5.26101112 5.61127186 0 4.69164848 7.83279896 -4.91931486 5.26100159 5.61127186 0
		 4.69164848 7.83279896 0 1.87978554 8.93480206 -6.57128763 1.97112608 6.02469635 -6.18453312
		 6.66149616 -0.86039436 -4.91931486 5.26100159 5.61127186 -6.57128763 1.97112608 6.02469635
		 -8.22431087 2.0030369759 -3.42240357 0 7.41091013 -5.33315945 -6.18453312 6.66149616
		 -0.86039436 -8.22431087 2.0030369759 -3.42240357 0 1.83670843 -8.94375896 6.18454218
		 6.66148663 -0.86039436 0 7.41091013 -5.33315945 0 1.83670843 -8.94375896 8.22431087
		 2.0030369759 -3.42240357 4.91931486 5.26101112 5.61127186 6.18454218 6.66148663 -0.86039436
		 8.22431087 2.0030369759 -3.42240357 6.57128763 1.97112608 6.02470541 0 4.69164848
		 7.83279896 4.91931486 5.26101112 5.61127186 6.57128763 1.97112608 6.02470541 0 1.87978554
		 8.93480206 -6.57128763 1.97112608 6.02469635 0 1.87978554 8.93480206 0 0.50652736
		 9.11634159 -8.086935043 0.5556215 4.20202112 -8.22431087 2.0030369759 -3.42240357
		 -6.57128763 1.97112608 6.02469635 -8.086935043 0.5556215 4.20202112 -7.081120014
		 0.55952936 -5.73663187 0 1.83670843 -8.94375896 -8.22431087 2.0030369759 -3.42240357
		 -7.081120014 0.55952936 -5.73663187 0 0.53491378 -9.11471653 8.22431087 2.0030369759
		 -3.42240357 0 1.83670843 -8.94375896 0 0.53491378 -9.11471653 7.081120014 0.55952936
		 -5.73662281 6.57128763 1.97112608 6.02470541 8.22431087 2.0030369759 -3.42240357
		 7.081120014 0.55952936 -5.73662281 8.086935043 0.5556215 4.20203018 0 1.87978554
		 8.93480206 6.57128763 1.97112608 6.02470541 8.086935043 0.5556215 4.20203018 0 0.50652736
		 9.11634159 0 8.90148544 2.031697035 0 8.90148544 2.031697035 0 8.90148544 2.031697035
		 0 8.90148544 2.031697035 0 7.13844061 -5.69270563 0 7.13844061 -5.69270563 0 7.13844061
		 -5.69270563 0 7.13844061 -5.69270563 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 -7.13843203 -5.69271469 0 -7.13843203 -5.69271469 0 -7.13843203
		 -5.69271469 0 -7.13843203 -5.69271469 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333
		 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333 -9.1304028e-06 -3.96152663 8.22620964
		 -9.1304028e-06 -3.96152663 8.22620964 -9.1304028e-06 -3.96152663 8.22620964 -9.1304028e-06
		 -3.96152663 8.22620964 0 3.96152663 8.22620964 0 3.96152663 8.22620964 0 3.96152663
		 8.22620964 0 3.96152663 8.22620964 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 0 8.90148544 2.031697035 0 8.90148544 2.031697035
		 0 8.90148544 2.031697035 0 8.90148544 2.031697035 0 7.13844061 -5.69270563 0 7.13844061
		 -5.69270563 0 7.13844061 -5.69270563 0 7.13844061 -5.69270563 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 -7.13844061 -5.69271469 0 -7.13843203
		 -5.69271469 0 -7.13843203 -5.69271469 0 -7.13844061 -5.69271469 -2.7391208e-05 -8.90148544
		 2.031706333 -2.7391208e-05 -8.90148544 2.031706333 -2.7391208e-05 -8.90148544 2.031706333
		 -2.7391208e-05 -8.90148544 2.031706333 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964
		 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964 0 3.96153545 8.22620964 0 3.96153545
		 8.22620964 0 3.96153545 8.22620964 0 3.96153545 8.22620964 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0;
	setAttr ".n[498:663]" -type "float3"  -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 0 8.90148544 2.031697035 0 8.90148544
		 2.031697035 0 8.90148544 2.031697035 0 8.90148544 2.031697035 0 7.13844061 -5.69270563
		 0 7.13844061 -5.69270563 0 7.13844061 -5.69270563 0 7.13844061 -5.69270563 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 -7.13844061 -5.69271469 0 -7.13844061
		 -5.69271469 0 -7.13844061 -5.69271469 0 -7.13843203 -5.69271469 1.8260806e-05 -8.90148544
		 2.031706333 1.8260806e-05 -8.90148544 2.031706333 1.8260806e-05 -8.90148544 2.031706333
		 1.8260806e-05 -8.90148544 2.031706333 9.1304028e-06 -3.96153545 8.22620964 9.1304028e-06
		 -3.96153545 8.22620964 9.1304028e-06 -3.96153545 8.22620964 9.1304028e-06 -3.96153545
		 8.22620964 0 3.96152663 8.22620964 0 3.96152663 8.22620964 0 3.96152663 8.22620964
		 0 3.96152663 8.22620964 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 0 8.90148544 2.031706333 0 8.90148544 2.031706333 0 8.90148544
		 2.031706333 0 8.90148544 2.031706333 0 7.13844061 -5.69271469 0 7.13844061 -5.69271469
		 0 7.13844061 -5.69271469 0 7.13844061 -5.69271469 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 9.1304028e-06 -7.13843203 -5.69271469 9.1304028e-06
		 -7.13843203 -5.69271469 9.1304028e-06 -7.13843203 -5.69271469 9.1304028e-06 -7.13843203
		 -5.69271469 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333
		 0 -8.90148544 2.031706333 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964 0 -3.96153545
		 8.22620964 0 -3.96153545 8.22620964 0 3.96153545 8.22620964 0 3.96153545 8.22620964
		 0 3.96153545 8.22620964 0 3.96153545 8.22620964 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 0 8.90148544 2.031706333 0 8.90148544 2.031706333
		 0 8.90148544 2.031706333 0 8.90148544 2.031706333 9.1304028e-06 7.13843203 -5.69271469
		 9.1304028e-06 7.13843203 -5.69271469 9.1304028e-06 7.13844061 -5.69271469 9.1304028e-06
		 7.13843203 -5.69271469 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 -7.13843203 -5.69271469 0 -7.13843203 -5.69271469 0 -7.13843203 -5.69271469 0 -7.13843203
		 -5.69271469 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333
		 0 -8.90148544 2.031706333 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964 0 -3.96153545
		 8.22620964 0 -3.96153545 8.22620964 0 3.96153545 8.22620964 0 3.96153545 8.22620964
		 0 3.96153545 8.22620964 0 3.96153545 8.22620964 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 0 8.90148544 2.031706333 0 8.90148544 2.031706333
		 0 8.90148544 2.031706333;
	setAttr ".n[664:829]" -type "float3"  0 8.90148544 2.031706333 0 7.13844061
		 -5.69271469 0 7.13844061 -5.69271469 0 7.13844061 -5.69271469 0 7.13844061 -5.69271469
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 -7.13844061 -5.69271469
		 0 -7.13844061 -5.69271469 0 -7.13843203 -5.69271469 0 -7.13844061 -5.69271469 0 -8.90148544
		 2.031706333 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333
		 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964 0 -3.96153545
		 8.22620964 0 3.96153545 8.22620964 0 3.96153545 8.22620964 0 3.96153545 8.22620964
		 0 3.96153545 8.22620964 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 0 8.90148544 2.031697035 0 8.90148544 2.031697035 0 8.90148544
		 2.031697035 0 8.90148544 2.031697035 3.6521611e-05 7.13844061 -5.69271469 3.6521611e-05
		 7.13844061 -5.69271469 3.6521611e-05 7.13844061 -5.69271469 3.6521611e-05 7.13844061
		 -5.69271469 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 -1.8260806e-05
		 -7.13844061 -5.69270563 -1.8260806e-05 -7.13844061 -5.69270563 -1.8260806e-05 -7.13844061
		 -5.69270563 -1.8260806e-05 -7.13844061 -5.69270563 0 -8.90148544 2.031706333 0 -8.90148544
		 2.031706333 0 -8.90148544 2.031706333 0 -8.90148544 2.031706333 0 -3.96153545 8.22620964
		 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964 0 -3.96153545 8.22620964 0 3.96153545
		 8.22620964 0 3.96153545 8.22620964 0 3.96153545 8.22620964 0 3.96153545 8.22620964
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257
		 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0
		 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0
		 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 -9.13040257 0 0 9.13040257
		 0 0 9.13040257 0 0 9.13040257 0 0 9.13040257 0 0 9.13040257 0 0 9.13040257 0 0 9.13040257
		 0 0 9.13040257 0 0 -2.27413678 8.63928699 1.8855468 -2.27413678 8.63928699 1.8855468
		 -2.27413678 8.63928699 1.8855468 -2.27413678 8.63928699 1.8855468 -0.075837128 7.21691704
		 -5.59237146 -0.075837128 7.21691704 -5.59237146 -0.075837128 7.21691704 -5.59237146
		 -0.075837128 7.21691704 -5.59237146 2.1795733 0.36005741 -8.85911942 2.1795733 0.36005741
		 -8.85911942 2.1795733 0.36005741 -8.85911942 2.1795733 0.36005741 -8.85911942 2.79371166
		 -6.76792908 -5.45477629 2.79371166 -6.76792908 -5.45477629 2.79371166 -6.76792908
		 -5.45477629 2.79371166 -6.76792908 -5.45477629 1.30413187 -8.79952526 2.057134628
		 1.30413187 -8.79952526 2.057134628 1.30413187 -8.79952526 2.057134628 1.30413187
		 -8.79952526 2.057134628 -1.16749537 -4.20488787 8.019981384 -1.16749537 -4.20488787
		 8.019981384 -1.16749537 -4.20488787 8.019981384 -1.16749537 -4.20488787 8.019981384
		 -2.75996542 3.55610013 7.94361448 -2.75996542 3.55610013 7.94361448 -2.75996542 3.55610013
		 7.94361448 -2.75996542 3.55610013 7.94360542 -8.67444801 -1.80162013 -2.20735693
		 -8.67444801 -1.8016293 -2.20734787 -8.67444801 -1.8016293 -2.20735693 -8.67444801
		 -1.8016293 -2.20734787 -8.67444801 -1.8016293 -2.20734787 -8.67444801 -1.8016293
		 -2.20735693 -8.67444801 -1.8016293 -2.20734787 -8.67444801 -1.8016293 -2.20734787
		 -8.67444801 -1.8016293 -2.20735693 -8.67444801 -1.8016293 -2.20734787 -8.67444801
		 -1.8016293 -2.20735693 -8.67444801 -1.8016293 -2.20735693 -8.67444801 -1.8016293
		 -2.20735693 -8.67444801 -1.80162013 -2.20735693 -8.67444801 -1.8016293 -2.20735693
		 -8.67444801 -1.80162013 -2.20735693 -8.67444801 -1.80162013 -2.20735693 -8.67444801
		 -1.8016293 -2.20735693 -8.67444801 -1.80162013 -2.20735693 -8.67444801 -1.80162013
		 -2.20735693 -8.67444801 -1.8016293 -2.20735693 8.67444801 1.80162013 2.20735693 8.67444801
		 1.80162013 2.20734787 8.67444801 1.80162013 2.20735693 8.67444801 1.80162013 2.20734787
		 8.67444801 1.80162013 2.20734787 8.67444801 1.80162013 2.20734787 8.67444801 1.80162013
		 2.20734787 8.67444801 1.80162013 2.20734787 8.67444801 1.80162013 2.20735693 8.67444801
		 1.80162013 2.20734787 8.67444801 1.80162013 2.20735693 8.67444801 1.80162013 2.20735693
		 8.67444801 1.80162013 2.20735693 8.67444801 1.80162013 2.20734787;
	setAttr ".n[830:995]" -type "float3"  8.67444801 1.80162013 2.20735693 8.67444801
		 1.80162013 2.20734787 8.67444801 1.80162013 2.20734787 8.67444801 1.80162013 2.20735693
		 8.67444801 1.80162013 2.20734787 8.67444801 1.80162013 2.20734787 8.67444801 1.80162013
		 2.20734787 -1.34625053 8.8277483 1.90334201 -1.34625053 8.8277483 1.90334201 -1.34625053
		 8.8277483 1.90334201 -1.34625053 8.8277483 1.90334201 0.63166863 7.2496767 -5.51429749
		 0.63166863 7.2496767 -5.51428843 0.63166863 7.2496767 -5.51428843 0.63166863 7.2496767
		 -5.51428843 1.41484725 -0.013175171 -9.020107269 1.41484725 -0.013175171 -9.020107269
		 1.41484725 -0.013175171 -9.020107269 1.41484725 -0.013175171 -9.020107269 2.0097932816
		 -7.17479801 -5.27705336 2.0097932816 -7.17479801 -5.27705336 2.0097932816 -7.17479801
		 -5.27705336 2.0097932816 -7.17479801 -5.27705336 0.34326661 -8.85618019 2.19418192
		 0.34326661 -8.85618019 2.19418192 0.34326661 -8.85618019 2.19418192 0.34326661 -8.85618019
		 2.19418192 -0.89802986 -3.93117714 8.19167805 -0.89802986 -3.93117714 8.19167805
		 -0.89802986 -3.93117714 8.19167805 -0.89802986 -3.93117714 8.19167805 -1.65145242
		 3.954916 8.061981201 -1.65145242 3.954916 8.061981201 -1.65145242 3.954916 8.061981201
		 -1.65145242 3.954916 8.061981201 -8.97822571 -0.88091952 -1.40699506 -8.97822571
		 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952
		 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506
		 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571
		 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952
		 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506
		 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571
		 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952
		 -1.40699506 -8.97822571 -0.88091952 -1.40699506 -8.97822571 -0.88091952 -1.40699506
		 -8.97822571 -0.88091952 -1.40699506 8.99555588 0.88068211 1.29172373 8.99555588 0.88068211
		 1.29172373 8.99555588 0.88068211 1.29172373 8.99555588 0.88068211 1.29172373 8.99555588
		 0.88068211 1.29172373 8.99555588 0.88068211 1.29172373 8.99555588 0.88068211 1.29172373
		 8.99556446 0.88067299 1.29172373 8.99556446 0.88067299 1.29172373 8.99556446 0.88067299
		 1.29172373 -0.7774446 8.89993286 1.88441455 -0.7774446 8.89993286 1.88441455 -0.7774446
		 8.89993286 1.88441455 -0.7774446 8.89993286 1.88441455 -0.87222737 6.9931035 -5.80517387
		 -0.87222737 6.9931035 -5.80517387 -0.87222737 6.9931035 -5.80517387 -0.87222737 6.9931035
		 -5.80517387 -0.31025109 -0.17968632 -9.12336349 -0.31025109 -0.17968632 -9.12336349
		 -0.31025109 -0.17968632 -9.12336349 -0.31025109 -0.17968632 -9.12336349 0.48535395
		 -7.21716309 -5.57147217 0.48535395 -7.21716309 -5.57147217 0.48535395 -7.21716309
		 -5.57147217 0.48535395 -7.21716309 -5.57147217 0.91550547 -8.81995964 2.17585707
		 0.91550547 -8.81995964 2.17585707 0.91550547 -8.81995964 2.17585707 0.91550547 -8.81995964
		 2.17585707 0.65625679 -3.78114605 8.28471756 0.65625679 -3.78114605 8.28471756 0.65625679
		 -3.78114605 8.28471756 0.65625679 -3.78114605 8.28471756 -0.097184002 4.10494709
		 8.15501118 -0.097184002 4.10494709 8.15501118 -0.097184002 4.10493755 8.15501118
		 -0.097184002 4.10493755 8.15501118 -9.083727837 -0.86249429 0.32589146 -9.083727837
		 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429
		 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146
		 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837
		 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86250353
		 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86250353 0.32589146
		 -9.083727837 -0.86250353 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837
		 -0.86250353 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429
		 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146
		 -9.083727837 -0.86249429 0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837
		 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429
		 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146
		 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837
		 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429
		 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146
		 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837
		 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429
		 -0.32589146 9.083727837 0.86249429 -0.32589146 9.083727837 0.86249429 -0.32589146
		 9.083727837 0.86249429 -0.32589146 -0.77745378 8.89993286 1.88442373 -0.77745378
		 8.89993286 1.88442373 -0.77745378 8.89993286 1.88442373 -0.77745378 8.89993286 1.88442373
		 -0.87222737 6.99309397 -5.80518293 -0.87222737 6.99309397 -5.80518293 -0.87222737
		 6.99309397 -5.80518293 -0.87222737 6.99309397 -5.80518293 -0.31025109 -0.17968632
		 -9.12336349 -0.31025109 -0.17968632 -9.12336349 -0.31025109 -0.17968632 -9.12336349
		 -0.31025109 -0.17968632 -9.12336349 0.48538134 -7.21716309 -5.57147217 0.48538134
		 -7.21716309 -5.57147217 0.48538134 -7.21716309 -5.57147217 0.48538134 -7.21716309
		 -5.57147217 0.91548717 -8.81995964 2.17585707 0.91548717 -8.81995964 2.17585707 0.91548717
		 -8.81995964 2.17585707 0.91548717 -8.81995964 2.17585707 0.65624768 -3.78115535 8.28470802
		 0.65624768 -3.78115535 8.28470802 0.65624768 -3.78115535 8.28470802 0.65624768 -3.78115535
		 8.28471756 -0.097211391 4.10493755 8.15501976 -0.097211391 4.10493755 8.15501976
		 -0.097211391 4.10493755 8.15501976 -0.097211391 4.10493755 8.15501976 -9.083727837
		 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146;
	setAttr ".n[996:1161]" -type "float3"  -9.083727837 -0.86249429 0.32589146 -9.083727837
		 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429
		 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146
		 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837
		 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429
		 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146
		 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837
		 -0.86249429 0.32589146 -9.083727837 -0.86249429 0.32589146 -9.083727837 -0.86249429
		 0.32589146 -9.083727837 -0.86249429 0.32589146 9.096273422 0.40718856 -0.67542148
		 9.096273422 0.40718856 -0.67542148 9.096273422 0.40718856 -0.67542148 9.11337376
		 0.55299199 -0.06933628 9.11337376 0.55299199 -0.06933628 9.11337376 0.55299199 -0.06933628
		 9.11337376 0.55299199 -0.06933628 -1.27581859 -8.52137756 3.020373583 -1.27581859
		 -8.52137756 3.020373583 -1.27581859 -8.52137756 3.020373583 -1.27581859 -8.52137756
		 3.020373583 1.27581859 -8.52137756 -3.020373583 1.27581859 -8.52137756 -3.020373583
		 1.27581859 -8.52137756 -3.020373583 1.27581859 -8.52137756 -3.020373583 3.24476242
		 -3.71843839 -7.68172741 3.24476242 -3.71843839 -7.68172741 3.24476242 -3.71843839
		 -7.68172741 3.24476242 -3.71843839 -7.68172741 3.244735 3.71843839 -7.68173647 3.244735
		 3.71843839 -7.68173647 3.244735 3.71843839 -7.68173647 3.244735 3.71843839 -7.68173647
		 1.27579117 8.52139568 -3.020328045 1.27579117 8.52139568 -3.020328045 1.27579117
		 8.52139568 -3.020328045 1.27579117 8.52139568 -3.020328045 -1.27579117 8.52139568
		 3.020328045 -1.27579117 8.52139568 3.020328045 -1.27579117 8.52139568 3.020328045
		 -1.27579117 8.52139568 3.020328045 -3.244735 3.71844769 7.68173647 -3.244735 3.71844769
		 7.68173647 -3.244735 3.71844769 7.68173647 -3.244735 3.71844769 7.68173647 -3.24476242
		 -3.71844769 7.68172741 -3.24476242 -3.71843839 7.68172741 -3.24476242 -3.71843839
		 7.68172741 -3.24476242 -3.71844769 7.68172741 6.43873215 -3.71601892 -5.3007741 6.43873215
		 -3.71601892 -5.3007741 6.43873215 -3.71601892 -5.3007741 6.43873215 -3.71601892 -5.3007741
		 6.18933582 3.71838379 -5.58838129 6.18933582 3.71838379 -5.58838129 6.18933582 3.71838379
		 -5.58838129 6.18933582 3.71838379 -5.58838129 2.19092226 8.51398182 -2.46498942 2.19092226
		 8.51398182 -2.46498942 2.19092226 8.51398182 -2.46498942 2.19092226 8.51398182 -2.46498942
		 -2.77004528 8.5090332 1.81314278 -2.77004528 8.5090332 1.81314278 -2.77004528 8.5090332
		 1.81314278 -2.77004528 8.5090332 1.81314278 -6.43875074 3.71598244 5.30078316 -6.43875074
		 3.71598244 5.30078316 -6.43875074 3.71598244 5.30078316 -6.43874168 3.71598244 5.30078316
		 -6.18934488 -3.71835637 5.58839083 -6.18934488 -3.71835637 5.58839083 -6.18934488
		 -3.71835637 5.58839083 -6.18934488 -3.71835637 5.58839083 -2.19092226 -8.51399136
		 2.46496224 -2.19092226 -8.51399136 2.46496224 -2.19092226 -8.51399136 2.46496224
		 -2.19092226 -8.51399136 2.46496224 2.77006388 -8.50902367 -1.8131336 2.77006388 -8.50902367
		 -1.8131336 2.77006388 -8.50902367 -1.8131336 2.77006388 -8.50902367 -1.8131336 6.41192532
		 -0.145566 6.49848175 6.41192532 -0.145566 6.49848175 6.41192532 -0.145566 6.49848175
		 6.41192532 -0.145566 6.49848175 9.12900543 0.145566 0.066012815 9.12900543 0.145566
		 0.066012815 9.12900543 0.145566 0.066012815 9.12900543 0.145566 0.066012815 6.49787903
		 0.35140178 -6.40455723 6.49787903 0.35140178 -6.40455723 6.49787903 0.35140178 -6.40455723
		 6.49787903 0.35140178 -6.40455723 -6.41195297 0.145566 -6.49845457 -6.41195297 0.145566
		 -6.49845457 -6.41195297 0.145566 -6.49845457 -6.41195297 0.145566 -6.49845457 -9.12900543
		 -0.145566 -0.066040203 -9.12900543 -0.145566 -0.066040203 -9.12900543 -0.145566 -0.066040203
		 -9.12900543 -0.145566 -0.066040203 -6.49786139 -0.35140178 6.40456629 -6.49786139
		 -0.35140178 6.40456629 -6.49786139 -0.35140178 6.40456629 -6.49786139 -0.35140178
		 6.40456629 -0.061128046 -0.35140178 9.12343597 -0.061128046 -0.35140178 9.12343597
		 -0.061128046 -0.35140178 9.12343597 -0.061128046 -0.35140178 9.12343597 5.74678469
		 -0.2342131 -7.091117859 5.8097024 -0.18809544 -7.04103756 6.1715312 0.086556211 -6.72822094
		 6.1715312 0.086556211 -6.72822094 -0.36385566 -3.82552004 -8.28234386 -0.36893216
		 -3.59001946 -8.3868866 -0.40212119 -1.2248435 -9.038934708 -0.40212119 -1.2248435
		 -9.038934708 -5.94611979 -4.8269515 -4.97076464 -5.90952492 -4.93037176 -4.91255808
		 -6.49593449 -1.88287163 -6.13366747 -6.49593449 -1.88287163 -6.13366747 -8.47828197
		 -3.19504738 1.1290108 -8.29544544 -3.57644272 1.32620931 -9.0072422028 -1.47285259
		 0.25408086 -9.0072422028 -1.47285259 0.25408086 -5.76613235 -0.30627933 7.072628975
		 -5.57012081 -0.14725514 7.23300457 -6.111444 -0.59871697 6.75692701 -6.111444 -0.59871697
		 6.75692701 0.50915688 0.87186217 9.07440567 0.42937544 2.81489396 8.67504215 0.54928499
		 -0.4572323 9.10239029 0.54928499 -0.4572323 9.10239029 6.68250513 1.0060060024 6.13972998
		 6.064486504 4.56398678 5.075060844 6.63572121 -0.24883085 6.26654243 6.63572121 -0.24883085
		 6.26654243 8.63942432 2.71666908 -1.15947902 8.44476414 3.18578005 -1.37878215 9.10796928
		 0.6135357 -0.18090066 9.10796928 0.6135357 -0.18090066 6.10750008 -3.25077939 -5.95777941
		 6.10750008 -3.25077939 -5.95777941 6.21472692 -2.95041656 -6.0030384064 6.24883842
		 -2.84922409 -6.016497135 2.43454885 -8.33869648 -2.81127834 2.43454885 -8.33869648
		 -2.81127834 2.14066863 -8.10060215 -3.62794709 2.072272778 -8.036745071 -3.80534196
		 -2.40554142 -8.66385746 1.58593261 -2.40554142 -8.66385746 1.58593261 -2.85549688
		 -8.66055202 0.4530597 -2.90953064 -8.64896584 0.30714676 -6.21303797 -4.16660452
		 5.23466969 -6.21303797 -4.16660452 5.23466969 -6.53650093 -4.47743082 4.53773689
		 -6.5587697 -4.49944401 4.48350239;
	setAttr ".n[1162:1327]" -type "float3"  -6.38200569 3.26630116 5.65380096 -6.38200569
		 3.26630116 5.65380096 -6.46367693 3.01569891 5.70006466 -6.4742136 2.98186183 5.70589924
		 -2.72952485 8.35257435 2.47960734 -2.72952485 8.35257435 2.47960734 -2.72738814 8.29165649
		 2.6784308 -2.72621059 8.26734257 2.7537384 2.10650253 8.67455864 -1.91803277 2.10650253
		 8.67455864 -1.91803277 2.1938715 8.72266579 -1.57043839 2.23132443 8.73953915 -1.41630805
		 5.93455172 4.178967 -5.53909588 5.93455172 4.178967 -5.53909588 6.23076963 4.37526131
		 -5.039717674 6.34072685 4.4478116 -4.83491325 6.24883842 -2.84922409 -6.016497135
		 6.21472692 -2.95041656 -6.0030384064 5.91534138 -1.42962933 -6.80655098 5.85458755
		 -1.30811274 -6.88309097 2.072272778 -8.036745071 -3.80534196 2.14066863 -8.10060215
		 -3.62794709 0.59075528 -6.48070478 -6.40435648 0.49861127 -6.36491346 -6.52713299
		 -2.90953064 -8.64896584 0.30714676 -2.85549688 -8.66055202 0.4530597 -4.54316044
		 -7.45494652 -2.6735189 -4.58918715 -7.39774418 -2.75262475 -6.5587697 -4.49944401
		 4.48350239 -6.53650093 -4.47743082 4.53773689 -7.34244156 -4.73136568 2.65838075
		 -7.36014557 -4.72784138 2.61533976 -6.4742136 2.98186183 5.70589924 -6.46367693 3.01569891
		 5.70006466 -5.99649239 1.37728477 6.74607086 -5.85411263 1.13532901 6.91408873 -2.72621059
		 8.26734257 2.7537384 -2.72738814 8.29165649 2.6784308 -2.20678186 7.76048613 4.27425194
		 -1.1175065 6.87639809 5.90174627 2.23132443 8.73953915 -1.41630805 2.1938715 8.72266579
		 -1.57043839 2.41289163 8.80549717 0.073855832 2.29315543 8.83063316 0.35431439 6.34072685
		 4.4478116 -4.83491325 6.23076963 4.37526131 -5.039717674 6.72189379 5.27686119 -3.21483302
		 6.68656826 5.39429665 -3.091225624 5.85458755 -1.30811274 -6.88309097 5.91534138
		 -1.42962933 -6.80655098 5.8097024 -0.18809544 -7.04103756 5.74678469 -0.2342131 -7.091117859
		 0.49861127 -6.36491346 -6.52713299 0.59075528 -6.48070478 -6.40435648 -0.36893216
		 -3.59001946 -8.3868866 -0.36385566 -3.82552004 -8.28234386 -4.58918715 -7.39774418
		 -2.75262475 -4.54316044 -7.45494652 -2.6735189 -5.90952492 -4.93037176 -4.91255808
		 -5.94611979 -4.8269515 -4.97076464 -7.36014557 -4.72784138 2.61533976 -7.34244156
		 -4.73136568 2.65838075 -8.29544544 -3.57644272 1.32620931 -8.47828197 -3.19504738
		 1.1290108 -5.85411263 1.13532901 6.91408873 -5.99649239 1.37728477 6.74607086 -5.57012081
		 -0.14725514 7.23300457 -5.76613235 -0.30627933 7.072628975 -1.1175065 6.87639809
		 5.90174627 -2.20678186 7.76048613 4.27425194 0.42937544 2.81489396 8.67504215 0.50915688
		 0.87186217 9.07440567 2.29315543 8.83063316 0.35431439 2.41289163 8.80549717 0.073855832
		 6.064486504 4.56398678 5.075060844 6.68250513 1.0060060024 6.13972998 6.68656826
		 5.39429665 -3.091225624 6.72189379 5.27686119 -3.21483302 8.44476414 3.18578005 -1.37878215
		 8.63942432 2.71666908 -1.15947902 6.45377922 -0.89951813 6.39560986 6.45377016 -0.89928079
		 6.39565516 6.43965483 -0.57333452 6.44720554 6.43965483 -0.57333452 6.44720554 -0.033809882
		 -0.96324831 9.079391479 -0.033243798 -0.90345335 9.085536003 -0.029628156 -0.52208555
		 9.11541939 -0.029628156 -0.52208555 9.11541939 -6.39063358 0.98693264 6.44592714
		 -6.41171598 0.85486132 6.44386387 -6.50984907 0.051942859 6.40182734 -6.50984907
		 0.051942859 6.40182734 -8.70933533 2.73924851 0.090445772 -8.74200439 2.63339067
		 0.083223619 -9.10274696 0.70869273 -0.045788966 -9.10273743 0.70869273 -0.045788966
		 -6.12488365 2.72859335 -6.19716024 -6.097501755 2.84076047 -6.17372274 -6.41949463
		 0.91177118 -6.42829657 -6.41949463 0.91177118 -6.42829657 0.072075397 1.12481999
		 -9.060564041 0.078886673 1.22052491 -9.048110008 0.032038581 0.5624876 -9.11299992
		 0.032038581 0.5624876 -9.11299992 6.45751381 -0.56195801 -6.43031454 6.44752502 -0.6430999
		 -6.43273401 6.5146699 0.031362932 -6.39705181 6.5146699 0.031362932 -6.39705181 9.1055584
		 -0.6678524 0.083561443 9.10870838 -0.62373435 0.081470579 9.12442207 -0.32357234
		 0.067199767 9.12442207 -0.32357234 0.067199767 -1.7361095 -8.53535557 2.73823524
		 -1.7361095 -8.53535557 2.73823524 -0.43342021 -8.50918865 3.2817862 -0.55607802 -8.52029133
		 3.23412561 -3.16942739 -3.78255248 7.68188238 -3.16942739 -3.78255248 7.68188238
		 -2.2877686 -3.62768221 8.060420036 -2.32209873 -3.63438416 8.04757309 -3.36402369
		 3.77823353 7.60083199 -3.36402369 3.77823353 7.60083199 -4.22216272 3.6167717 7.24269199
		 -4.23962021 3.61298251 7.23438311 -1.8346082 8.5198431 2.72227526 -1.8346082 8.5198431
		 2.72227526 -3.86857915 8.055188179 1.87413383 -3.89557767 8.045125961 1.86135125
		 0.62867391 8.50843906 -3.25200295 0.62867391 8.50843906 -3.25200295 -1.45026398 8.031805038
		 -4.092812538 -1.42607749 8.040452003 -4.084330559 2.97990775 3.75948 -7.76857567
		 2.97990775 3.75948 -7.76857567 2.052368402 3.56409812 -8.15164185 2.070747852 3.56834388
		 -8.14513206 3.20087266 -3.7971611 -7.66160393 3.20087266 -3.7971611 -7.66160393 3.93951297
		 -3.70538235 -7.35626459 3.96278644 -3.70194912 -7.34548187 0.73549044 -8.54519844
		 -3.13094282 0.73549044 -8.54519844 -3.13094282 1.87070084 -8.53401375 -2.65243673
		 1.9341023 -8.52871799 -2.62383127 -0.55607802 -8.52029133 3.23412561 -0.43342021
		 -8.50918865 3.2817862 3.86572123 -6.32444715 5.33120537 3.75455856 -6.43749094 5.27506256
		 -2.32209873 -3.63438416 8.04757309 -2.2877686 -3.62768221 8.060420036 -0.77041423
		 -2.54845047 8.73362255 -0.83854526 -2.63809299 8.70066166 -4.23962021 3.61298251
		 7.23438311 -4.22216272 3.6167717 7.24269199 -5.57792711 2.62158489 6.73633814 -5.50480223
		 2.70956564 6.76162958 -3.89557767 8.045125961 1.86135125 -3.86857915 8.055188179
		 1.87413383 -6.75914574 6.087111473 0.79072028 -6.68840313 6.16161537 0.81484276 -1.42607749
		 8.040452003 -4.084330559 -1.45026398 8.031805038 -4.092812538 -4.1779623 6.17795897
		 -5.26703691 -4.23265362 6.11910439 -5.29201794 2.070747852 3.56834388 -8.14513206
		 2.052368402 3.56409812 -8.15164185;
	setAttr ".n[1328:1493]" -type "float3"  0.84437048 2.70866179 -8.67839241 0.77815682
		 2.6237216 -8.7106142 3.96278644 -3.70194912 -7.34548187 3.93951297 -3.70538235 -7.35626459
		 5.37268496 -2.8149488 -6.82455587 5.45057678 -2.72547984 -6.79906368 1.9341023 -8.52871799
		 -2.62383127 1.87070084 -8.53401375 -2.65243673 6.20085812 -6.59954596 -1.16605282
		 6.097949505 -6.68938065 -1.19640231 3.75455856 -6.43749094 5.27506256 3.86572123
		 -6.32444715 5.33120537 6.45377016 -0.89928079 6.39565516 6.45377922 -0.89951813 6.39560986
		 -0.83854526 -2.63809299 8.70066166 -0.77041423 -2.54845047 8.73362255 -0.033243798
		 -0.90345335 9.085536003 -0.033809882 -0.96324831 9.079391479 -5.50480223 2.70956564
		 6.76162958 -5.57792711 2.62158489 6.73633814 -6.41171598 0.85486132 6.44386387 -6.39063358
		 0.98693264 6.44592714 -6.68840313 6.16161537 0.81484276 -6.75914574 6.087111473 0.79072028
		 -8.74200439 2.63339067 0.083223619 -8.70933533 2.73924851 0.090445772 -4.23265362
		 6.11910439 -5.29201794 -4.1779623 6.17795897 -5.26703691 -6.097501755 2.84076047
		 -6.17372274 -6.12488365 2.72859335 -6.19716024 0.77815682 2.6237216 -8.7106142 0.84437048
		 2.70866179 -8.67839241 0.078886673 1.22052491 -9.048110008 0.072075397 1.12481999
		 -9.060564041 5.45057678 -2.72547984 -6.79906368 5.37268496 -2.8149488 -6.82455587
		 6.44752502 -0.6430999 -6.43273401 6.45751381 -0.56195801 -6.43031454 6.097949505
		 -6.68938065 -1.19640231 6.20085812 -6.59954596 -1.16605282 9.10870838 -0.62373435
		 0.081470579 9.1055584 -0.6678524 0.083561443 -0.088254467 -3.73228025 -8.33225918
		 -0.088254467 -3.73228025 -8.33225918 -0.088254467 -3.73228025 -8.33225918 -0.088254467
		 -3.73228025 -8.33225918 -0.47317398 3.25095296 -8.51890278 -0.47317398 3.25095296
		 -8.51890278 -0.47317398 3.25095296 -8.51890278 -0.47317398 3.25095296 -8.51890278
		 -0.58027357 8.3241787 -3.7061584 -0.58027357 8.3241787 -3.7061584 -0.58027357 8.3241787
		 -3.7061584 -0.58027357 8.3241787 -3.7061584 -0.34769487 8.51875687 3.26713181 -0.34769487
		 8.51875687 3.26713181 -0.34769487 8.51875687 3.26713181 -0.34769487 8.51875687 3.26713181
		 0.088263601 3.73226213 8.33226871 0.088263601 3.73226213 8.33226871 0.088263601 3.73226213
		 8.33226871 0.088263601 3.73226213 8.33226871 0.47317398 -3.25091648 8.51891232 0.47317398
		 -3.25091648 8.51891232 0.47317398 -3.25091648 8.51891232 0.47317398 -3.25091648 8.51891232
		 0.58027357 -8.32416916 3.70616722 0.58027357 -8.32416916 3.70616722 0.58027357 -8.32416916
		 3.70616722 0.58027357 -8.32416916 3.70616722 0.34768572 -8.51875687 -3.2671411 0.34768572
		 -8.51875687 -3.2671411 0.34768572 -8.51875687 -3.2671411 0.34768572 -8.51875687 -3.2671411
		 9.083426476 -0.1614164 -0.91076684 9.083426476 -0.1614164 -0.91076684 9.083426476
		 -0.1614164 -0.91076684 9.083426476 -0.1614164 -0.91076684 5.77966356 -0.067583241
		 -7.067899704 5.77966356 -0.067583241 -7.067899704 5.77966356 -0.067583241 -7.067899704
		 5.77966356 -0.067583241 -7.067899704 -0.90972596 0.065839335 -9.084732056 -0.90972596
		 0.065839335 -9.084732056 -0.90972596 0.065839335 -9.084732056 -0.90972596 0.065839335
		 -9.084732056 -7.06622839 0.16069509 -5.77986431 -7.06622839 0.16069509 -5.77986431
		 -7.06622839 0.16069509 -5.77986431 -7.06622839 0.16069509 -5.77986431 -9.083426476
		 0.1614164 0.91076684 -9.083426476 0.1614164 0.91076684 -9.083426476 0.1614164 0.91076684
		 -9.083426476 0.1614164 0.91076684 -5.77968168 0.067583241 7.067881107 -5.77969074
		 0.067583241 7.067881107 -5.77968168 0.067583241 7.067881107 -5.77969074 0.067583241
		 7.067881107 0.90973502 -0.065839335 9.084732056 0.90973502 -0.065839335 9.084732056
		 0.90973502 -0.065839335 9.084732056 0.90973502 -0.065839335 9.084732056 7.06622839
		 -0.16069509 5.77986431 7.06622839 -0.16069509 5.77986431 7.06622839 -0.16069509 5.77986431
		 7.06622839 -0.16069509 5.77986431 -1.90692115 -0.46881875 -8.91673279 -1.85359049
		 -0.44006714 -8.92943382 -1.36641955 -0.17860894 -9.025814056 -1.36641955 -0.17860894
		 -9.025814056 -6.76681519 -3.71614671 -4.87490463 -6.82407188 -3.5461936 -4.92146969
		 -7.29939175 -1.29261851 -5.33031988 -7.29938221 -1.29261851 -5.33031988 -7.74584961
		 -4.53531742 1.67239749 -7.69370651 -4.61949062 1.6826967 -8.87784672 -1.71860647
		 1.26271641 -8.87784672 -1.71860647 1.26271641 -4.45045948 -2.82059145 7.45667171
		 -4.23650646 -3.11856222 7.46263409 -5.4636879 -1.16388893 7.22202969 -5.4636879 -1.16388893
		 7.22202969 1.91170549 -0.01497386 8.92800903 2.12444377 0.11055092 8.8791151 1.42689013
		 -0.29785198 9.013296127 1.42689013 -0.29785198 9.013296127 7.38460588 1.018158674
		 5.27211332 7.080252647 2.74120259 5.071491241 7.43342638 -0.27296251 5.29471159 7.43342638
		 -0.27296251 5.29471159 8.97978783 0.9079181 -1.37960374 7.91983891 4.21917725 -1.68489707
		 9.043562889 -0.26651645 -1.22768307 9.043562889 -0.26651645 -1.22768307 4.55167007
		 2.31326962 -7.56936884 4.23183203 2.81158876 -7.58623219 5.57583618 0.36307046 -7.22097063
		 5.57583618 0.36307046 -7.22097063 -0.81381106 -3.29085279 -8.47775269 -0.81381106
		 -3.29085279 -8.47775269 -0.78090507 -3.013562441 -8.58329105 -0.76821381 -2.9076314
		 -8.62088966 -0.70283097 -8.33907032 -3.65105629 -0.70283097 -8.33907032 -3.65105629
		 -1.56248581 -8.085656166 -3.94271779 -1.76613033 -8.012102127 -4.0064115524 -0.29325938
		 -8.50465107 3.30894923 -0.29325938 -8.50465107 3.30894923 -1.54090154 -8.51170826
		 2.92244077 -1.68794668 -8.50090694 2.87223291 0.17998762 -3.68881035 8.35011864 0.17998762
		 -3.68881035 8.35011864 -0.58108622 -3.99740911 8.18824577 -0.62718558 -4.01507616
		 8.1761837 0.40128118 3.30633783 8.50125408 0.40128118 3.30633783 8.50125408 0.38538516
		 3.069687128 8.59027481 0.38333997 3.039383173 8.60113144 0.23158354 8.35518551 3.67443013
		 0.23158354 8.35518551 3.67443013 0.39800337 8.29071617 3.80392671 0.46040055 8.26526928
		 3.85195255 -0.18336588 8.51752377 -3.28365803 -0.18336588 8.51752377 -3.28365803
		 0.16144377 8.57614136 -3.12855983 0.3175554 8.59774399 -3.056493759;
	setAttr ".n[1494:1659]" -type "float3"  -0.59793186 3.70158386 -8.32496452 -0.59793186
		 3.70158386 -8.32496452 -0.030084675 3.88962436 -8.2603941 0.22696355 3.96918702 -8.21938896
		 -0.76821381 -2.9076314 -8.62088966 -0.78090507 -3.013562441 -8.58329105 -1.55465186
		 -1.62669075 -8.84879303 -1.71600437 -1.43894231 -8.85149574 -1.76613033 -8.012102127
		 -4.0064115524 -1.56248581 -8.085656166 -3.94271779 -4.745399 -6.39965439 -4.45981836
		 -4.97207022 -6.22214079 -4.46404552 -1.68794668 -8.50090694 2.87223291 -1.54090154
		 -8.51170826 2.92244077 -5.1853199 -7.19894791 2.15683866 -5.25182581 -7.15446472
		 2.14387321 -0.62718558 -4.01507616 8.1761837 -0.58108622 -3.99740911 8.18824577 -2.60671163
		 -4.25904083 7.64394569 -2.59631228 -4.25974369 7.64709568 0.38333997 3.039383173
		 8.60113144 0.38538516 3.069687128 8.59027481 1.52389157 1.50458992 8.87571049 1.66889155
		 1.35557258 8.8736372 0.46040055 8.26526928 3.85195255 0.39800337 8.29071617 3.80392671
		 2.09271574 7.70904493 4.42214632 4.016500473 6.80859613 4.56891727 0.3175554 8.59774399
		 -3.056493759 0.16144377 8.57614136 -3.12855983 1.68200278 8.69701862 -2.21289921
		 1.83664441 8.73396015 -1.92584836 0.22696355 3.96918702 -8.21938896 -0.030084675
		 3.88962436 -8.2603941 1.74225426 4.78281498 -7.57981396 1.83910954 4.93227053 -7.46020508
		 -1.71600437 -1.43894231 -8.85149574 -1.55465186 -1.62669075 -8.84879303 -1.85359049
		 -0.44006714 -8.92943382 -1.90692115 -0.46881875 -8.91673279 -4.97207022 -6.22214079
		 -4.46404552 -4.745399 -6.39965439 -4.45981836 -6.82407188 -3.5461936 -4.92146969
		 -6.76681519 -3.71614671 -4.87490463 -5.25182581 -7.15446472 2.14387321 -5.1853199
		 -7.19894791 2.15683866 -7.69370651 -4.61949062 1.6826967 -7.74584961 -4.53531742
		 1.67239749 -2.59631228 -4.25974369 7.64709568 -2.60671163 -4.25904083 7.64394569
		 -4.23650646 -3.11856222 7.46263409 -4.45045948 -2.82059145 7.45667171 1.66889155
		 1.35557258 8.8736372 1.52389157 1.50458992 8.87571049 2.12444377 0.11055092 8.8791151
		 1.91170549 -0.01497386 8.92800903 4.016500473 6.80859613 4.56891727 2.09271574 7.70904493
		 4.42214632 7.080252647 2.74120259 5.071491241 7.38460588 1.018158674 5.27211332 1.83664441
		 8.73396015 -1.92584836 1.68200278 8.69701862 -2.21289921 7.91983891 4.21917725 -1.68489707
		 8.97978783 0.9079181 -1.37960374 1.83910954 4.93227053 -7.46020508 1.74225426 4.78281498
		 -7.57981396 4.23183203 2.81158876 -7.58623219 4.55167007 2.31326962 -7.56936884 2.32855392
		 -8.44555855 2.57190657 2.32855392 -8.44555855 2.57190657 2.32855392 -8.44555855 2.57190657
		 2.32855392 -8.44555855 2.57190657 -2.32851744 -8.57918167 -2.083247423 -2.32851744
		 -8.57918167 -2.083247423 -2.32851744 -8.57918167 -2.083247423 -2.32851744 -8.57918167
		 -2.083247423 -5.90138102 -3.87080693 -5.79265642 -5.90138102 -3.87080693 -5.79265642
		 -5.90138102 -3.87080693 -5.79265642 -5.90138102 -3.87080693 -5.79265642 -5.90133524
		 3.5321877 -6.0051751137 -5.90133524 3.5321877 -6.0051751137 -5.90133524 3.5321877
		 -6.0051751137 -5.90133524 3.5321877 -6.0051751137 -2.32848096 8.44559479 -2.57183337
		 -2.32848096 8.44559479 -2.57183337 -2.32848096 8.44559479 -2.57183337 -2.32848096
		 8.44559479 -2.57183337 2.32848096 8.57919979 2.083192587 2.32848096 8.57919979 2.083192587
		 2.32848096 8.57919979 2.083192587 2.32848096 8.57919979 2.083192587 5.90133524 3.87079763
		 5.79270172 5.90133524 3.87079763 5.79270172 5.90133524 3.87079763 5.79270172 5.90133524
		 3.87079763 5.79270172 5.90136242 -3.53219652 6.0051388741 5.90137196 -3.53219652
		 6.0051388741 5.90136242 -3.53219652 6.0051388741 5.90136242 -3.53219652 6.0051388741
		 -2.49080133 -3.92761612 -7.85709476 -2.49080133 -3.92761612 -7.85709476 -2.49080133
		 -3.92761612 -7.85709476 -2.49080133 -3.92761612 -7.85709476 -2.85147929 3.47641897
		 -7.94656372 -2.85147929 3.47641897 -7.94656372 -2.85147929 3.47641897 -7.94656372
		 -2.85147929 3.47641897 -7.94656372 -1.46586788 8.41971016 -3.21307993 -1.46586788
		 8.41971016 -3.21307993 -1.46586788 8.41971016 -3.21307993 -1.46586788 8.41971016
		 -3.21307993 0.64048856 8.59355259 3.017433643 0.64048856 8.59355259 3.017442703 0.64048856
		 8.59355259 3.017442703 0.64048856 8.59355259 3.017433643 2.49081016 3.9275887 7.85711336
		 2.49081016 3.9275887 7.85711336 2.49081016 3.9275887 7.85711336 2.49081016 3.9275887
		 7.85711336 2.85146117 -3.47639155 7.94657278 2.85146117 -3.47639155 7.94658232 2.85146117
		 -3.47639155 7.94658232 2.85146117 -3.47639155 7.94658232 1.46584058 -8.41972923 3.21305275
		 1.46584058 -8.41972923 3.21305275 1.46584058 -8.41972923 3.21305275 1.46584058 -8.41972923
		 3.21305275 -0.64044291 -8.59356213 -3.017415524 -0.64044291 -8.59356213 -3.017415524
		 -0.64044291 -8.59356213 -3.017415524 -0.64044291 -8.59356213 -3.017415524 8.43341541
		 -0.24507827 -3.49022412 8.43341541 -0.24507827 -3.49022412 8.43341541 -0.24507827
		 -3.49022412 8.43341541 -0.24507827 -3.49022412 3.495821 -0.097165741 -8.43410015
		 3.495821 -0.097165741 -8.43410015 3.495821 -0.097165741 -8.43410015 3.495821 -0.097165741
		 -8.43410015 -3.48924732 0.10765658 -8.43669319 -3.48924732 0.10765658 -8.43669319
		 -3.48924732 0.10765658 -8.43669319 -3.48924732 0.10765658 -8.43669319 -8.4301281
		 0.24940608 -3.49785733 -8.4301281 0.24940608 -3.49785733 -8.4301281 0.24940608 -3.49785733
		 -8.4301281 0.24940608 -3.49786615 -8.43339634 0.24507827 3.4902699 -8.43339634 0.24507827
		 3.4902699 -8.43339634 0.24507827 3.4902699 -8.43339634 0.24507827 3.4902699 -3.49585748
		 0.097165741 8.43409061 -3.49585748 0.097165741 8.43409061 -3.49585748 0.097165741
		 8.43409061 -3.49585748 0.097165741 8.43409061 3.48925638 -0.10765658 8.43669319 3.48925638
		 -0.10765658 8.43669319 3.48925638 -0.10765658 8.43669319 3.48925638 -0.10765658 8.43669319
		 8.4301281 -0.24940608 3.49785733 8.4301281 -0.24940608 3.49785733 8.4301281 -0.24940608
		 3.49785733 8.4301281 -0.24940608 3.49785733 -4.4074645 -0.46191618 -7.98280239 -4.33889532
		 -0.41813591 -8.022684097;
	setAttr ".n[1660:1825]" -type "float3"  -3.91192079 -0.15056033 -8.24854279 -3.91192079
		 -0.15056033 -8.24854279 -7.8181262 -3.88655663 -2.67130923 -7.91458893 -3.65651608
		 -2.71172953 -8.52683735 -1.30522764 -2.99227047 -8.52683735 -1.30522764 -2.99227047
		 -6.8517642 -4.70372772 3.7805438 -6.78516722 -4.80615282 3.77181506 -8.12868786 -1.76664162
		 3.76399016 -8.12868786 -1.76664162 3.76399016 -2.14326167 -2.94494748 8.37245083
		 -1.89496028 -3.32309222 8.29037857 -3.15384197 -1.22294426 8.48068333 -3.15384197
		 -1.22294426 8.48068333 4.38491249 -0.074065827 8.0082035065 4.60513783 0.079151459
		 7.88357306 3.96114278 -0.36012134 8.21851254 3.96114278 -0.36012134 8.21851254 8.5992136
		 0.9555788 2.91627789 8.20390415 2.88066006 2.78603268 8.64033794 -0.37110519 2.9276545
		 8.64033794 -0.37110519 2.9276545 8.20320129 0.89012295 -3.90888953 6.99453688 4.43496513
		 -3.84339714 8.30274963 -0.35626829 -3.78174877 8.30274963 -0.35626829 -3.78174877
		 2.17746401 2.46035147 -8.51877499 1.89905071 2.93409133 -8.43498516 3.25918841 0.36620218
		 -8.52102089 3.25918841 0.36620218 -8.52102089 -3.22420073 -3.46214843 -7.80911493
		 -3.22420073 -3.46214843 -7.80911493 -3.22542429 -3.16657877 -7.93307829 -3.2249403
		 -3.066062212 -7.97265816 -1.69578052 -8.42380047 -3.086779118 -1.69578052 -8.42380047
		 -3.086779118 -2.56558824 -8.18522358 -3.12794828 -2.75712585 -8.12077141 -3.13298821
		 0.56686103 -8.57454395 3.085464478 0.56686103 -8.57454395 3.085464478 -0.6577633
		 -8.57147598 3.075950384 -0.81333625 -8.55998039 3.070755243 2.51504254 -3.92658448
		 7.84989119 2.51504254 -3.92658448 7.84989119 1.74688351 -4.2357583 7.89753342 1.68896925
		 -4.25743341 7.89847374 2.8390348 3.48163247 7.94873667 2.8390348 3.48163247 7.94873667
		 2.85090446 3.23453641 8.048249245 2.85231042 3.20128345 8.061040878 1.27569973 8.44203377
		 3.23555899 1.27569973 8.44203377 3.23555899 1.46149445 8.38277721 3.31019092 1.53193557
		 8.35909367 3.33811188 -0.98898697 8.58973598 -2.93302321 -0.98898697 8.58973598 -2.93302321
		 -0.63276428 8.63963413 -2.8845315 -0.47502744 8.65733814 -2.86165071 -2.90233588
		 3.94308305 -7.70667124 -2.90233588 3.94308305 -7.70667124 -2.32882786 4.13611794
		 -7.79957342 -2.095893145 4.20831203 -7.82698298 -3.2249403 -3.066062212 -7.97265816
		 -3.22542429 -3.16657877 -7.93307829 -4.079034805 -1.65587151 -7.99899054 -4.17688513
		 -1.52878547 -7.97374487 -2.75712585 -8.12077141 -3.13298821 -2.56558824 -8.18522358
		 -3.12794828 -5.72333813 -6.54897261 -2.7782445 -5.8763361 -6.42808628 -2.74091029
		 -0.81333625 -8.55998039 3.070755243 -0.6577633 -8.57147598 3.075950384 -4.2009716
		 -7.34683371 3.42639351 -4.29009295 -7.29001474 3.4373045 1.68896925 -4.25743341 7.89847374
		 1.74688351 -4.2357583 7.89753342 -0.30134892 -4.48791265 7.94556856 -0.34415227 -4.48467112
		 7.94565964 2.85231042 3.20128345 8.061040878 2.85090446 3.23453641 8.048249245 3.99681544
		 1.59991133 8.051709175 4.2011447 1.3627857 7.99108362 1.53193557 8.35909367 3.33811188
		 1.46149445 8.38277721 3.31019092 3.14414549 7.85073996 3.44157743 5.059594631 6.95386076
		 3.067340374 -0.47502744 8.65733814 -2.86165071 -0.63276428 8.63963413 -2.8845315
		 0.98060524 8.7351656 -2.46972823 1.19672191 8.76671124 -2.25320077 -2.095893145 4.20831203
		 -7.82698298 -2.32882786 4.13611794 -7.79957342 -0.45145276 5.042100906 -7.59853077
		 -0.34844354 5.16369963 -7.52190876 -4.17688513 -1.52878547 -7.97374487 -4.079034805
		 -1.65587151 -7.99899054 -4.33889532 -0.41813591 -8.022684097 -4.4074645 -0.46191618
		 -7.98280239 -5.8763361 -6.42808628 -2.74091029 -5.72333813 -6.54897261 -2.7782445
		 -7.91458893 -3.65651608 -2.71172953 -7.8181262 -3.88655663 -2.67130923 -4.29009295
		 -7.29001474 3.4373045 -4.2009716 -7.34683371 3.42639351 -6.78516722 -4.80615282 3.77181506
		 -6.8517642 -4.70372772 3.7805438 -0.34415227 -4.48467112 7.94565964 -0.30134892 -4.48791265
		 7.94556856 -1.89496028 -3.32309222 8.29037857 -2.14326167 -2.94494748 8.37245083
		 4.2011447 1.3627857 7.99108362 3.99681544 1.59991133 8.051709175 4.60513783 0.079151459
		 7.88357306 4.38491249 -0.074065827 8.0082035065 5.059594631 6.95386076 3.067340374
		 3.14414549 7.85073996 3.44157743 8.20390415 2.88066006 2.78603268 8.5992136 0.9555788
		 2.91627789 1.19672191 8.76671124 -2.25320077 0.98060524 8.7351656 -2.46972823 6.99453688
		 4.43496513 -3.84339714 8.20320129 0.89012295 -3.90888953 -0.34844354 5.16369963 -7.52190876
		 -0.45145276 5.042100906 -7.59853077 1.89905071 2.93409133 -8.43498516 2.17746401
		 2.46035147 -8.51877499 8.35426331 -0.99717689 -3.54629397 8.35426331 -0.99718601
		 -3.54629397 8.39648247 -0.67186069 -3.52305698 8.39648247 -0.67186069 -3.52305698
		 8.40005302 -0.85875088 3.47359776 8.40580463 -0.80030721 3.4736526 8.43464756 -0.42010808
		 3.47051167 8.43464756 -0.42010808 3.47051167 3.56803346 1.22027838 8.31530476 3.55829144
		 1.091512203 8.33735466 3.48215294 0.29380724 8.43519497 3.48215294 0.29380724 8.43519497
		 -3.19455433 2.95743799 8.025752068 -3.21309805 2.85468435 8.055498123 -3.46730685
		 0.94637537 8.39323235 -3.46730685 0.94637537 8.39323235 -8.049618721 2.81168914 3.265306
		 -8.018200874 2.92181087 3.24586725 -8.3716383 1.0081608295 3.50193858 -8.3716383
		 1.0081608295 3.50193858 -8.36821461 1.019939065 -3.50669551 -8.35442829 1.1137265
		 -3.5110414 -8.43151569 0.46025446 -3.47302246 -8.43151569 0.46025446 -3.47302246
		 -3.52840757 -0.80106503 -8.38289642 -3.53428745 -0.87973261 -8.37252426 -3.47593522
		 -0.21102187 -8.44023514 -3.47593522 -0.21102187 -8.44023514 3.50339031 -0.90569031
		 -8.38273239 3.50261426 -0.86159956 -8.38770866 3.49521852 -0.56365627 -8.41605759
		 3.49521852 -0.56365627 -8.41605759 1.89213896 -8.45036983 2.89400887 1.89213896 -8.45036983
		 2.89400887 2.88965392 -8.45297241 1.88717198 2.79962802 -8.46133518 1.98293173 5.93002319
		 -3.59809995 5.93740034 5.93002319 -3.59809995 5.93740034 6.61164379 -3.4632895 5.25890207
		 6.58840704 -3.46882248 5.28434849;
	setAttr ".n[1826:1991]" -type "float3"  5.78159952 3.93271089 5.87121391 5.78159952
		 3.93271089 5.87121391 5.12694931 3.79089737 6.53512192 5.11105299 3.78710818 6.54973984
		 1.83992219 8.58933449 2.49044514 1.83992219 8.58933449 2.49044514 0.28274119 8.16682625
		 4.072743893 0.25927603 8.1566906 4.094556332 -2.78856206 8.44730282 -2.057006598
		 -2.78856206 8.44730282 -2.057006598 -4.35505581 8.013489723 -0.42630762 -4.33677673
		 8.022254944 -0.44733495 -6.081679344 3.57921815 -5.7936697 -6.081679344 3.57921815
		 -5.7936697 -6.78626347 3.40477276 -5.071335793 -6.7717638 3.4090457 -5.087816238
		 -5.899436 -3.94788551 -5.74239302 -5.89942741 -3.94788551 -5.74240255 -5.33735943
		 -3.8726511 -6.31500626 -5.32007551 -3.86996675 -6.33122206 -2.63549972 -8.59000111
		 -1.62179685 -2.63549972 -8.59000111 -1.62179685 -1.76120901 -8.60382462 -2.49732041
		 -1.71122003 -8.59991741 -2.54506326 2.79962802 -8.46133518 1.98293173 2.88965392
		 -8.45297241 1.88717198 6.40696764 -6.35344505 -1.39597476 6.31694221 -6.46017075
		 -1.31402004 6.58840704 -3.46882248 5.28434849 6.61164379 -3.4632895 5.25890207 7.8032074
		 -2.42384791 4.074204922 7.75022364 -2.50696206 4.12473249 5.11105299 3.78710818 6.54973984
		 5.12694931 3.79089737 6.53512192 4.14605188 2.83229661 7.62578535 4.19445229 2.91373968
		 7.56841898 0.25927603 8.1566906 4.094556332 0.28274119 8.16682625 4.072743893 -1.81323409
		 6.25817871 6.39622164 -1.76647723 6.32784367 6.3405261 -4.33677673 8.022254944 -0.44733495
		 -4.35505581 8.013489723 -0.42630762 -6.4677763 6.21154976 1.71719122 -6.50884485
		 6.15707779 1.75771213 -6.7717638 3.4090457 -5.087816238 -6.78626347 3.40477276 -5.071335793
		 -7.72754335 2.57736659 -4.12388325 -7.77934933 2.49845243 -4.074770927 -5.32007551
		 -3.86996675 -6.33122206 -5.33735943 -3.8726511 -6.31500626 -4.30272961 -3.016018629
		 -7.4668889 -4.25246668 -2.93332434 -7.52837324 -1.71122003 -8.59991741 -2.54506326
		 -1.76120901 -8.60382462 -2.49732041 1.25641644 -6.75826931 -6.0092840195 1.1871897
		 -6.84892511 -5.92005253 6.31694221 -6.46017075 -1.31402004 6.40696764 -6.35344505
		 -1.39597476 8.35426331 -0.99718601 -3.54629397 8.35426331 -0.99717689 -3.54629397
		 7.75022364 -2.50696206 4.12473249 7.8032074 -2.42384791 4.074204922 8.40580463 -0.80030721
		 3.4736526 8.40005302 -0.85875088 3.47359776 4.19445229 2.91373968 7.56841898 4.14605188
		 2.83229661 7.62578535 3.55829144 1.091512203 8.33735466 3.56803346 1.22027838 8.31530476
		 -1.76647723 6.32784367 6.3405261 -1.81323409 6.25817871 6.39622164 -3.21309805 2.85468435
		 8.055498123 -3.19455433 2.95743799 8.025752068 -6.50884485 6.15707779 1.75771213
		 -6.4677763 6.21154976 1.71719122 -8.018200874 2.92181087 3.24586725 -8.049618721
		 2.81168914 3.265306 -7.77934933 2.49845243 -4.074770927 -7.72754335 2.57736659 -4.12388325
		 -8.35442829 1.1137265 -3.5110414 -8.36821461 1.019939065 -3.50669551 -4.25246668
		 -2.93332434 -7.52837324 -4.30272961 -3.016018629 -7.4668889 -3.53428745 -0.87973261
		 -8.37252426 -3.52840757 -0.80106503 -8.38289642 1.1871897 -6.84892511 -5.92005253
		 1.25641644 -6.75826931 -6.0092840195 3.50261426 -0.86159956 -8.38770866 3.50339031
		 -0.90569031 -8.38273239 1.23792732 -8.11436272 3.99862313 1.23792732 -8.11436272
		 3.99862313 1.23792732 -8.11436272 3.99862313 1.23792732 -8.11436272 3.99862313 -1.23789084
		 -8.33034229 -3.52665472 -1.23789084 -8.33034229 -3.52665472 -1.23789084 -8.33034229
		 -3.52665472 -1.23789084 -8.33034229 -3.52665472 -2.68708658 -3.29663229 -8.079356194
		 -2.68708658 -3.29663229 -8.079356194 -2.68708658 -3.29663229 -8.079356194 -2.68708658
		 -3.29663229 -8.079356194 -2.68703198 2.82777691 -8.25517178 -2.68703198 2.82777691
		 -8.25517178 -2.68703198 2.82777691 -8.25517178 -2.68703198 2.82777691 -8.25517178
		 -1.23792732 8.11434364 -3.99865961 -1.23792732 8.11434364 -3.99865961 -1.23792732
		 8.11434364 -3.99865961 -1.23792732 8.11434364 -3.99865961 1.23792732 8.33033276 3.52665472
		 1.23792732 8.33033276 3.52665472 1.23792732 8.33033276 3.52665472 1.23792732 8.33033276
		 3.52665472 2.68704081 3.29661417 8.07938385 2.68704081 3.29661417 8.07938385 2.68704081
		 3.29661417 8.07938385 2.68704081 3.29661417 8.07938385 2.68701339 -2.82778621 8.25517178
		 2.68701339 -2.82778621 8.25517178 2.68701339 -2.82778621 8.25517178 2.68701339 -2.82778621
		 8.25517178 -0.033764228 -3.50236773 -8.43188095 -0.033764228 -3.50236773 -8.43188095
		 -0.033764228 -3.50236773 -8.43188095 -0.033764228 -3.50236773 -8.43187141 -0.30880848
		 2.97895813 -8.62523556 -0.30880848 2.97895813 -8.62523556 -0.30880848 2.97895813
		 -8.62523556 -0.30880848 2.97895813 -8.62523556 -0.42810634 8.15145016 -4.09083128
		 -0.42810634 8.15145016 -4.09083128 -0.42810634 8.15145016 -4.09083128 -0.42810634
		 8.15145016 -4.09083128 -0.28093335 8.46475983 3.41073513 -0.28093335 8.46475983 3.41073513
		 -0.28093335 8.46475983 3.41073513 -0.28093335 8.46475983 3.41073513 0.033764228 3.50233126
		 8.43189049 0.033764228 3.50233126 8.43189049 0.033764228 3.50233126 8.43189049 0.033764228
		 3.50233126 8.43189049 0.30879936 -2.97891259 8.62525368 0.30879936 -2.97891259 8.62525368
		 0.30879936 -2.97891259 8.62525368 0.30879936 -2.97891259 8.62525368 0.4281337 -8.15145016
		 4.09082222 0.4281337 -8.15145016 4.09082222 0.4281337 -8.15145016 4.09082222 0.4281337
		 -8.15145016 4.09082222 0.2809425 -8.46475983 -3.41074395 0.2809425 -8.46475983 -3.41074395
		 0.2809425 -8.46475983 -3.41074395 0.2809425 -8.46475983 -3.41074395 8.7953167 -0.098635741
		 2.44886518 8.7953167 -0.098635741 2.44886518 8.7953167 -0.098635741 2.44886518 8.7953167
		 -0.098635741 2.44886518 5.6272769 -0.037443779 -7.19003677 5.6272769 -0.037443779
		 -7.19003677 5.6272769 -0.037443779 -7.19003677 5.6272769 -0.037443779 -7.19003677
		 -0.60444182 0.032988146 -9.11031532 -0.60444182 0.032988146 -9.11031532 -0.60444182
		 0.032988146 -9.11031532 -0.60444182 0.032988146 -9.11031532 -4.91806412 0.073682353
		 -7.69230032 -4.91806412 0.073682353 -7.69230032;
	setAttr ".n[1992:2157]" -type "float3"  -4.91806412 0.073682353 -7.69230032 -4.91806412
		 0.073682353 -7.69230032 -8.7953167 0.098635741 -2.44885635 -8.7953167 0.098635741
		 -2.44885635 -8.7953167 0.098635741 -2.44885635 -8.7953167 0.098635741 -2.44885635
		 -5.62729549 0.037443779 7.19001865 -5.62729549 0.037443779 7.19001865 -5.62729549
		 0.037443779 7.19001865 -5.62729549 0.037443779 7.19001865 0.60445088 -0.032988146
		 9.11031532 0.60445088 -0.032988146 9.11031532 0.60445088 -0.032988146 9.11031532
		 0.60445088 -0.032988146 9.11031532 4.91807318 -0.073682353 7.69229078 4.91807318
		 -0.073682353 7.69229078 4.91807318 -0.073682353 7.69229078 4.91807318 -0.073682353
		 7.69229078 -1.29603326 -0.4638336 -9.026041985 -1.19401932 -0.39045253 -9.043562889
		 -0.91330504 -0.1889628 -9.082641602 -0.91330504 -0.1889628 -9.082641602 -4.7986474
		 -3.65996766 -6.85141754 -4.92969608 -3.042396307 -7.057353973 -5.15508938 -1.25553083
		 -7.43054056 -5.15508938 -1.25553083 -7.43054056 -7.07143259 -5.72266245 -0.78114247
		 -7.32681942 -5.36957121 -0.92182368 -8.63945198 -2.25665212 -1.90570676 -8.63945198
		 -2.25665212 -1.90570676 -4.059477329 -3.14623618 7.54891682 -3.67002916 -3.62765503
		 7.53228092 -5.20522404 -1.4634757 7.35717773 -5.20522404 -1.4634757 7.35717773 1.21584094
		 -0.027144687 9.049050331 1.45313096 0.16252117 9.012556076 0.95410877 -0.23506223
		 9.077373505 0.95410877 -0.23506223 9.077373505 5.24841118 0.68144757 7.44002724 5.023711681
		 2.65461874 7.1469965 5.26727438 -0.1758972 7.45581341 5.26727438 -0.1758972 7.45581341
		 8.85717583 1.28506756 1.80645013 7.4737916 5.1615262 0.93021452 8.89718533 -0.23492527
		 2.03694725 8.89718533 -0.23492527 2.03694725 3.88136148 2.99809575 -7.7013483 3.87417579
		 3.0081846714 -7.70102882 5.35759211 0.49085045 -7.37696314 5.35759211 0.49085045
		 -7.37696314 -0.54540461 -3.026454687 -8.59694099 -0.54540461 -3.026454687 -8.59694099
		 -0.51756597 -2.73060203 -8.69713783 -0.51561207 -2.70995831 -8.70371151 -0.51674426
		 -8.14876556 -4.08592844 -0.51674426 -8.14876556 -4.085937023 -1.31101632 -7.70106554
		 -4.72642612 -1.15173626 -7.80100727 -4.6023984 -0.23773743 -8.45441437 3.43957782
		 -0.23773743 -8.45441437 3.43957782 -1.44560742 -8.66419506 2.49122119 -1.10797429
		 -8.63022137 2.76694107 0.10084529 -3.42443037 8.4632988 0.10084529 -3.42443037 8.4632988
		 -0.51823252 -3.85610676 8.25990963 -0.43358457 -3.79860353 8.29137325 0.2566191 3.071531296
		 8.59442043 0.2566191 3.071531296 8.59442043 0.24570826 2.86859894 8.66458797 0.24182785
		 2.79665136 8.68818092 0.16142552 8.21237755 3.98687243 0.16142552 8.21237755 3.98687243
		 0.25607127 8.14423752 4.11948252 0.38471863 8.046614647 4.29747057 -0.12908563 8.41306305
		 -3.54512525 -0.12908563 8.41306305 -3.54512525 0.063237168 8.49069881 -3.35683823
		 0.36129004 8.5952425 -3.058666706 -0.39870641 3.3936975 -8.46687794 -0.39870641 3.3936975
		 -8.46687794 -0.029956851 3.61284542 -8.38514328 0.23058832 3.76268458 -8.31584263
		 -0.51561207 -2.70995831 -8.70371151 -0.51756597 -2.73060203 -8.69713783 -1.14809334
		 -1.30712664 -8.96312428 -1.061537147 -1.44577181 -8.95249653 -1.15173626 -7.80100727
		 -4.6023984 -1.31101632 -7.70106554 -4.72642612 -3.71735191 -5.71504736 -6.073205948
		 -3.30036664 -6.14256048 -5.89414072 -1.10797429 -8.63022137 2.76694107 -1.44560742
		 -8.66419506 2.49122119 -4.72290134 -7.79684305 0.51748383 -4.13674831 -8.094293594
		 0.85676956 -0.43358457 -3.79860353 8.29137325 -0.51823252 -3.85610676 8.25990963
		 -2.131392 -4.43511105 7.6909852 -2.11661911 -4.43280125 7.69639063 0.24182785 2.79665136
		 8.68818092 0.24570826 2.86859894 8.66458797 0.91677463 1.51479769 8.95707035 1.24882901
		 1.04554987 8.98396015 0.38471863 8.046614647 4.29747057 0.25607127 8.14423752 4.11948252
		 1.37924778 7.43346262 5.11914301 3.28653407 6.059574127 5.98703337 0.36129004 8.5952425
		 -3.058666706 0.063237168 8.49069881 -3.35683823 1.31593752 8.83381081 -1.8963846
		 1.47191215 8.89653587 -1.43153763 0.23058832 3.76268458 -8.31584263 -0.029956851
		 3.61284542 -8.38514328 1.39373767 4.82185698 -7.62701797 1.44814587 4.93788576 -7.54217815
		 -1.061537147 -1.44577181 -8.95249653 -1.14809334 -1.30712664 -8.96312428 -1.19401932
		 -0.39045253 -9.043562889 -1.29603326 -0.4638336 -9.026041985 -3.30036664 -6.14256048
		 -5.89414072 -3.71735191 -5.71504736 -6.073205948 -4.92969608 -3.042396307 -7.057353973
		 -4.7986474 -3.65996766 -6.85141754 -4.13674831 -8.094293594 0.85676956 -4.72290134
		 -7.79684305 0.51748383 -7.32681942 -5.36957121 -0.92182368 -7.07143259 -5.72266245
		 -0.78114247 -2.11661911 -4.43280125 7.69639063 -2.131392 -4.43511105 7.6909852 -3.67002916
		 -3.62765503 7.53228092 -4.059477329 -3.14623618 7.54891682 1.24882901 1.04554987
		 8.98396015 0.91677463 1.51479769 8.95707035 1.45313096 0.16252117 9.012556076 1.21584094
		 -0.027144687 9.049050331 3.28653407 6.059574127 5.98703337 1.37924778 7.43346262
		 5.11914301 5.023711681 2.65461874 7.1469965 5.24841118 0.68144757 7.44002724 1.47191215
		 8.89653587 -1.43153763 1.31593752 8.83381081 -1.8963846 7.4737916 5.1615262 0.93021452
		 8.85717583 1.28506756 1.80645013 1.44814587 4.93788576 -7.54217815 1.39373767 4.82185698
		 -7.62701797 3.87417579 3.0081846714 -7.70102882 3.88136148 2.99809575 -7.7013483
		 8.77460003 -0.96722007 2.33134794 8.77545834 -0.95454711 2.33331084 8.79262352 -0.59825134
		 2.38665986 8.79262352 -0.59825134 2.38666892 4.91561699 -0.61058652 7.66994858 4.92116833
		 -0.50550473 7.67403984 4.9330101 -0.2175501 7.6799922 4.9330101 -0.2175501 7.6799922
		 0.67701936 1.12403476 9.035619736 0.65736163 0.91646415 9.060472488 0.5976944 0.30487326
		 9.10571384 0.5976944 0.30487326 9.10571384 -5.11528063 3.37697983 6.76713467 -5.19516277
		 3.09113431 6.84246969 -5.58487558 1.025965095 7.14988136 -5.58487558 1.025965095
		 7.14988136 -8.30825615 2.94351387 -2.3817749 -8.19444561 3.25600219 -2.36933947 -8.75636673
		 0.99058479 -2.38937163 -8.75636673 0.99058479 -2.38937163;
	setAttr ".n[2158:2265]" -type "float3"  -4.89223385 0.68063504 -7.67899752 -4.87598181
		 0.8323366 -7.6743865 -4.93070984 0.25144216 -7.68043947 -4.93070984 0.25144216 -7.68043947
		 -0.63139474 -0.68079019 -9.083070755 -0.6441499 -0.832784 -9.069502831 -0.59308356
		 -0.23512614 -9.10808754 -0.59308356 -0.23512614 -9.10808754 5.62640953 -0.95676571
		 -7.1268816 5.62667465 -0.91850936 -7.13169336 5.6247201 -0.58120495 -7.16860771 5.6247201
		 -0.58120495 -7.16860771 0.82953358 -8.14559746 4.040467739 0.82953358 -8.14559746
		 4.040467739 1.86844563 -8.13785458 3.6943891 1.71701777 -8.14635563 3.74874258 2.72289586
		 -2.88505197 8.22354412 2.72289586 -2.88505197 8.22354412 3.35621738 -2.75751853 8.030946732
		 3.25876856 -2.77837229 8.063825607 2.595052 3.34959769 8.087656021 2.595052 3.34960699
		 8.087656021 1.99404335 3.21802878 8.30857468 2.054541588 3.23190665 8.28841496 0.76917249
		 8.3484478 3.61607766 0.76917249 8.3484478 3.61607766 -0.86106998 8.037182808 4.24575567
		 -0.78923196 8.057497978 4.2211585 -1.7148813 8.12268925 -3.80071259 -1.7148813 8.12268925
		 -3.80071259 -3.3309536 7.83581161 -3.29682398 -3.38049507 7.82212543 -3.27885532
		 -2.85111427 2.86670899 -8.1864109 -2.85111427 2.86670899 -8.1864109 -3.43615389 2.72753429
		 -8.0073451996 -3.49727273 2.71201253 -7.98613453 -2.69902921 -3.36486387 -8.047181129
		 -2.69902921 -3.36486387 -8.047181129 -2.24710178 -3.30090523 -8.21089745 -2.16060019
		 -3.28772116 -8.23935795 -1.5861609 -8.37020493 -3.28451633 -1.5861609 -8.37020493
		 -3.28451633 -0.75258255 -8.37304497 -3.56230879 -0.6096096 -8.36578655 -3.60642695
		 1.71701777 -8.14635563 3.74874258 1.86844563 -8.13785458 3.6943891 5.89771032 -6.31511593
		 2.94966793 5.56363821 -6.59210491 2.99237967 3.25876856 -2.77837229 8.063825607 3.35621738
		 -2.75751853 8.030946732 4.46067667 -1.76910675 7.76768112 4.26955891 -2.051163197
		 7.80563593 2.054541588 3.23190665 8.28841496 1.99404335 3.21802878 8.30857468 1.10350049
		 2.3073349 8.76485729 1.27818334 2.58412313 8.66330051 -0.78923196 8.057497978 4.2211585
		 -0.86106998 8.037182808 4.24575567 -3.32770324 6.40715027 5.58918524 -3.02643609
		 6.71339369 5.39771175 -3.38049507 7.82212543 -3.27885532 -3.3309536 7.83581161 -3.29682398
		 -5.78839207 6.51025057 -2.73412633 -6.085723877 6.25533915 -2.68309665 -3.49727273
		 2.71201253 -7.98613453 -3.43615389 2.72753429 -8.0073451996 -4.25694036 2.11042857
		 -7.79671526 -4.43817902 1.85045862 -7.76160908 -2.16060019 -3.28772116 -8.23935795
		 -2.24710178 -3.30090523 -8.21089745 -1.36672091 -2.66296411 -8.6258297 -1.17885375
		 -2.37421513 -8.73714733 -0.6096096 -8.36578655 -3.60642695 -0.75258255 -8.37304497
		 -3.56230879 2.50294471 -6.99086618 -5.31293535 2.70449829 -6.80636835 -5.45190001
		 5.56363821 -6.59210491 2.99237967 5.89771032 -6.31511593 2.94966793 8.77545834 -0.95454711
		 2.33331084 8.77460003 -0.96722007 2.33134794 4.26955891 -2.051163197 7.80563593 4.46067667
		 -1.76910675 7.76768112 4.92116833 -0.50550473 7.67403984 4.91561699 -0.61058652 7.66994858
		 1.27818334 2.58412313 8.66330051 1.10350049 2.3073349 8.76485729 0.65736163 0.91646415
		 9.060472488 0.67701936 1.12403476 9.035619736 -3.02643609 6.71339369 5.39771175 -3.32770324
		 6.40715027 5.58918524 -5.19516277 3.09113431 6.84246969 -5.11528063 3.37697983 6.76713467
		 -6.085723877 6.25533915 -2.68309665 -5.78839207 6.51025057 -2.73412633 -8.19444561
		 3.25600219 -2.36933947 -8.30825615 2.94351387 -2.3817749 -4.43817902 1.85045862 -7.76160908
		 -4.25694036 2.11042857 -7.79671526 -4.87598181 0.8323366 -7.6743865 -4.89223385 0.68063504
		 -7.67899752 -1.17885375 -2.37421513 -8.73714733 -1.36672091 -2.66296411 -8.6258297
		 -0.6441499 -0.832784 -9.069502831 -0.63139474 -0.68079019 -9.083070755 2.70449829
		 -6.80636835 -5.45190001 2.50294471 -6.99086618 -5.31293535 5.62667465 -0.91850936
		 -7.13169336 5.62640953 -0.95676571 -7.1268816;
	setAttr -s 590 -ch 2266 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 8 9 10 11
		f 4 13 14 15 -12
		mu 0 4 9 12 13 10
		f 4 16 -4 17 -15
		mu 0 4 12 0 3 13
		f 4 -3 18 19 20
		mu 0 4 3 2 14 15
		f 4 -7 21 22 -19
		mu 0 4 2 5 16 14
		f 4 -10 23 24 -22
		mu 0 4 5 7 17 16
		f 4 -13 25 26 -24
		mu 0 4 11 10 18 19
		f 4 -16 27 28 -26
		mu 0 4 10 13 20 18
		f 4 -18 -21 29 -28
		mu 0 4 13 3 15 20
		f 4 -20 30 31 32
		mu 0 4 15 14 21 22
		f 4 -23 33 34 -31
		mu 0 4 14 16 23 21
		f 4 -25 35 36 -34
		mu 0 4 16 17 24 23
		f 4 -27 37 38 -36
		mu 0 4 19 18 25 26
		f 4 -29 39 40 -38
		mu 0 4 18 20 27 25
		f 4 -30 -33 41 -40
		mu 0 4 20 15 22 27
		f 4 -32 42 43 44
		mu 0 4 22 21 28 29
		f 4 -35 45 46 -43
		mu 0 4 21 23 30 28
		f 4 -37 47 48 -46
		mu 0 4 23 24 31 30
		f 4 -39 49 50 -48
		mu 0 4 26 25 32 33
		f 4 -41 51 52 -50
		mu 0 4 25 27 34 32
		f 4 -42 -45 53 -52
		mu 0 4 27 22 29 34
		f 4 -44 54 55 56
		mu 0 4 35 36 37 38
		f 4 -47 57 58 -55
		mu 0 4 36 39 40 37
		f 4 -49 59 60 -58
		mu 0 4 39 41 42 40
		f 4 -51 61 62 -60
		mu 0 4 43 44 45 46
		f 4 -53 63 64 -62
		mu 0 4 44 47 48 45
		f 4 -54 -57 65 -64
		mu 0 4 47 35 38 48
		f 4 -56 66 67 68
		mu 0 4 49 50 51 52
		f 4 -59 69 70 -67
		mu 0 4 50 53 54 51
		f 4 -61 71 72 -70
		mu 0 4 53 55 56 54
		f 4 -63 73 74 -72
		mu 0 4 57 58 59 60
		f 4 -65 75 76 -74
		mu 0 4 58 61 62 59
		f 4 -66 -69 77 -76
		mu 0 4 61 49 52 62
		f 4 -68 78 79 80
		mu 0 4 52 51 63 64
		f 4 -71 81 82 -79
		mu 0 4 51 54 65 63
		f 4 -73 83 84 -82
		mu 0 4 54 56 66 65
		f 4 -75 85 86 -84
		mu 0 4 60 59 67 68
		f 4 -77 87 88 -86
		mu 0 4 59 62 69 67
		f 4 -78 -81 89 -88
		mu 0 4 62 52 64 69
		f 4 -80 90 91 92
		mu 0 4 64 63 70 71
		f 4 -83 93 94 -91
		mu 0 4 63 65 72 70
		f 4 -85 95 96 -94
		mu 0 4 65 66 73 72
		f 4 -90 -93 98 -98
		mu 0 4 69 64 71 74
		f 4 -92 99 100 101
		mu 0 4 71 70 75 76
		f 4 -95 102 103 -100
		mu 0 4 70 72 77 75
		f 4 -97 104 105 -103
		mu 0 4 72 73 78 77
		f 4 -99 -102 109 -108
		mu 0 4 74 71 76 81
		f 4 -101 110 111 112
		mu 0 4 76 75 82 83
		f 4 -104 113 114 -111
		mu 0 4 75 77 84 82
		f 4 -106 115 116 -114
		mu 0 4 77 78 85 84
		f 4 -107 117 118 -116
		mu 0 4 80 79 86 87
		f 4 -109 119 120 -118
		mu 0 4 79 81 88 86
		f 4 -110 -113 121 -120
		mu 0 4 81 76 83 88
		f 4 -112 122 123 124
		mu 0 4 83 82 89 90
		f 4 -115 125 126 -123
		mu 0 4 82 84 91 89
		f 4 -117 127 128 -126
		mu 0 4 84 85 92 91
		f 4 -119 129 130 -128
		mu 0 4 87 86 93 94
		f 4 -121 131 132 -130
		mu 0 4 86 88 95 93
		f 4 -122 -125 133 -132
		mu 0 4 88 83 90 95
		f 4 -124 134 135 136
		mu 0 4 90 89 96 97
		f 4 -127 137 138 -135
		mu 0 4 89 91 98 96
		f 4 -129 139 140 -138
		mu 0 4 91 92 99 98
		f 4 -131 141 142 -140
		mu 0 4 94 93 100 101
		f 4 -133 143 144 -142
		mu 0 4 93 95 102 100
		f 4 -134 -137 145 -144
		mu 0 4 95 90 97 102
		f 4 -136 146 147 148
		mu 0 4 97 96 103 104
		f 4 -139 149 150 -147
		mu 0 4 96 98 105 103
		f 4 -141 151 152 -150
		mu 0 4 98 99 106 105
		f 4 -143 153 154 -152
		mu 0 4 101 100 107 108
		f 4 -145 155 156 -154
		mu 0 4 100 102 109 107
		f 4 -146 -149 157 -156
		mu 0 4 102 97 104 109
		f 4 158 159 -5 160
		mu 0 4 110 111 4 1
		f 4 161 162 -8 -160
		mu 0 4 111 112 6 4
		f 4 163 164 -11 -163
		mu 0 4 113 114 9 8
		f 4 165 166 -14 -165
		mu 0 4 114 115 12 9
		f 4 167 168 -17 -167
		mu 0 4 115 116 0 12
		f 4 169 -161 -1 -169
		mu 0 4 116 110 1 0
		f 4 -170 170 171 172
		mu 0 4 117 118 119 120
		f 4 -159 -173 173 174
		mu 0 4 121 117 120 122
		f 4 -162 -175 175 176
		mu 0 4 123 121 122 124
		f 4 -164 -177 177 178
		mu 0 4 125 126 127 128
		f 4 -166 -179 179 180
		mu 0 4 129 125 128 130
		f 4 -168 -181 181 -171
		mu 0 4 118 129 130 119
		f 4 -172 182 183 184
		mu 0 4 120 119 131 132
		f 4 -174 -185 185 186
		mu 0 4 122 120 132 133
		f 4 -176 -187 187 188
		mu 0 4 124 122 133 134
		f 4 -178 -189 189 190
		mu 0 4 128 127 135 136
		f 4 -180 -191 191 192
		mu 0 4 130 128 136 137
		f 4 -182 -193 193 -183
		mu 0 4 119 130 137 131
		f 4 -184 194 195 196
		mu 0 4 132 131 138 139
		f 4 -186 -197 197 198
		mu 0 4 133 132 139 140
		f 4 -188 -199 199 200
		mu 0 4 134 133 140 141
		f 4 -190 -201 201 202
		mu 0 4 136 135 142 143
		f 4 -192 -203 203 204
		mu 0 4 137 136 143 144
		f 4 -194 -205 205 -195
		mu 0 4 131 137 144 138
		f 4 -196 206 207 208
		mu 0 4 145 146 147 148
		f 4 -198 -209 209 210
		mu 0 4 149 145 148 150
		f 4 -200 -211 211 212
		mu 0 4 151 149 150 152
		f 4 -202 -213 213 214
		mu 0 4 153 154 155 156
		f 4 -204 -215 215 216
		mu 0 4 157 153 156 158
		f 4 -206 -217 217 -207
		mu 0 4 146 157 158 147
		f 4 218 219 220 221
		mu 0 4 159 160 161 162
		f 4 222 223 224 -220
		mu 0 4 160 163 164 161
		f 4 225 226 227 -224
		mu 0 4 163 165 166 164
		f 4 228 229 230 -227
		mu 0 4 165 167 168 166
		f 4 231 232 233 -230
		mu 0 4 169 170 171 172
		f 4 234 235 236 -233
		mu 0 4 170 173 174 171
		f 4 237 -222 238 -236
		mu 0 4 173 159 162 174
		f 3 -221 239 240
		mu 0 3 175 176 177
		f 3 -225 241 -240
		mu 0 3 176 178 177
		f 3 -228 242 -242
		mu 0 3 178 179 177
		f 3 -231 243 -243
		mu 0 3 179 180 177
		f 3 -234 244 -244
		mu 0 3 180 181 177
		f 3 -237 245 -245
		mu 0 3 181 182 177
		f 3 -239 -241 -246
		mu 0 3 182 175 177
		f 4 246 247 248 249
		mu 0 4 183 184 185 186
		f 4 250 251 252 -248
		mu 0 4 184 187 188 185
		f 4 253 254 255 -252
		mu 0 4 187 189 190 188
		f 4 256 257 258 -255
		mu 0 4 189 191 192 190
		f 4 259 260 261 -258
		mu 0 4 193 194 195 196
		f 4 262 263 264 -261
		mu 0 4 194 197 198 195
		f 4 265 -250 266 -264
		mu 0 4 197 183 186 198
		f 3 -249 267 268
		mu 0 3 199 200 201
		f 3 -253 269 -268
		mu 0 3 200 202 201
		f 3 -256 270 -270
		mu 0 3 202 203 201
		f 3 -259 271 -271
		mu 0 3 203 204 201
		f 3 -262 272 -272
		mu 0 3 204 205 201
		f 3 -265 273 -273
		mu 0 3 205 206 201
		f 3 -267 -269 -274
		mu 0 3 206 199 201
		f 4 274 275 276 277
		mu 0 4 207 208 209 210
		f 4 278 279 280 -276
		mu 0 4 208 211 212 209
		f 4 281 282 283 -280
		mu 0 4 211 213 214 212
		f 4 284 285 286 -283
		mu 0 4 215 216 217 218
		f 4 287 288 289 -286
		mu 0 4 216 219 220 217
		f 4 290 291 292 -289
		mu 0 4 219 221 222 220
		f 4 293 -278 294 -292
		mu 0 4 221 207 210 222
		f 3 -277 295 296
		mu 0 3 223 224 225
		f 3 -281 297 -296
		mu 0 3 224 226 225
		f 3 -284 298 -298
		mu 0 3 226 227 225
		f 3 -287 299 -299
		mu 0 3 227 228 225
		f 3 -290 300 -300
		mu 0 3 228 229 225
		f 3 -293 301 -301
		mu 0 3 229 230 225
		f 3 -295 -297 -302
		mu 0 3 230 223 225
		f 4 302 303 304 305
		mu 0 4 231 232 233 234
		f 4 306 307 308 -304
		mu 0 4 232 235 236 233
		f 4 309 310 311 -308
		mu 0 4 237 238 239 240
		f 4 312 313 314 -311
		mu 0 4 238 241 242 239
		f 4 315 316 317 -314
		mu 0 4 241 243 244 242
		f 4 318 319 320 -317
		mu 0 4 243 245 246 244
		f 4 321 -306 322 -320
		mu 0 4 245 231 234 246
		f 3 -305 323 324
		mu 0 3 247 248 249
		f 3 -309 325 -324
		mu 0 3 248 250 249
		f 3 -312 326 -326
		mu 0 3 250 251 249
		f 3 -315 327 -327
		mu 0 3 251 252 249
		f 3 -318 328 -328
		mu 0 3 252 253 249
		f 3 -321 329 -329
		mu 0 3 253 254 249
		f 3 -323 -325 -330
		mu 0 3 254 247 249
		f 4 330 331 332 333
		mu 0 4 255 256 257 258
		f 4 334 335 336 -332
		mu 0 4 256 259 260 257
		f 4 337 338 339 -336
		mu 0 4 259 261 262 260
		f 4 340 341 342 -339
		mu 0 4 263 264 265 266
		f 4 343 344 345 -342
		mu 0 4 264 267 268 265
		f 4 346 347 348 -345
		mu 0 4 267 269 270 268
		f 4 349 -334 350 -348
		mu 0 4 269 255 258 270
		f 3 -333 351 352
		mu 0 3 271 272 273
		f 3 -337 353 -352
		mu 0 3 272 274 273
		f 3 -340 354 -354
		mu 0 3 274 275 273
		f 3 -343 355 -355
		mu 0 3 275 276 273
		f 3 -346 356 -356
		mu 0 3 276 277 273
		f 3 -349 357 -357
		mu 0 3 277 278 273
		f 3 -351 -353 -358
		mu 0 3 278 271 273
		f 4 358 359 360 361
		mu 0 4 279 280 281 282
		f 4 362 363 364 -360
		mu 0 4 280 283 284 281
		f 4 365 366 367 -364
		mu 0 4 283 285 286 284
		f 4 368 369 370 -367
		mu 0 4 287 288 289 290
		f 4 371 372 373 -370
		mu 0 4 288 291 292 289
		f 4 374 375 376 -373
		mu 0 4 291 293 294 292
		f 4 377 -362 378 -376
		mu 0 4 293 279 282 294
		f 3 -361 379 380
		mu 0 3 295 296 297
		f 3 -365 381 -380
		mu 0 3 296 298 297
		f 3 -368 382 -382
		mu 0 3 298 299 297
		f 3 -371 383 -383
		mu 0 3 299 300 297
		f 3 -374 384 -384
		mu 0 3 300 301 297
		f 3 -377 385 -385
		mu 0 3 301 302 297
		f 3 -379 -381 -386
		mu 0 3 302 295 297
		f 4 386 387 388 389
		mu 0 4 303 304 305 306
		f 4 390 391 392 -388
		mu 0 4 304 307 308 305
		f 4 393 394 395 -392
		mu 0 4 307 309 310 308
		f 4 396 397 398 -395
		mu 0 4 309 311 312 310
		f 4 399 400 401 -398
		mu 0 4 313 314 315 316
		f 4 402 403 404 -401
		mu 0 4 314 317 318 315
		f 4 405 -390 406 -404
		mu 0 4 317 303 306 318
		f 3 -389 407 408
		mu 0 3 319 320 321
		f 3 -393 409 -408
		mu 0 3 320 322 321
		f 3 -396 410 -410
		mu 0 3 322 323 321
		f 3 -399 411 -411
		mu 0 3 323 324 321
		f 3 -402 412 -412
		mu 0 3 324 325 321
		f 3 -405 413 -413
		mu 0 3 325 326 321
		f 3 -407 -409 -414
		mu 0 3 326 319 321
		f 4 -403 414 415 416
		mu 0 4 327 328 329 330
		f 4 -406 -417 417 418
		mu 0 4 331 327 330 332
		f 4 419 420 421 422
		mu 0 4 333 334 335 336
		f 4 423 424 425 -421
		mu 0 4 334 337 338 335
		f 4 426 427 428 -425
		mu 0 4 337 339 340 338
		f 4 429 430 431 -428
		mu 0 4 339 341 342 340
		f 4 432 433 434 -431
		mu 0 4 343 344 345 346
		f 4 435 436 437 -434
		mu 0 4 344 347 348 345
		f 4 438 -423 439 -437
		mu 0 4 347 333 336 348
		f 3 -422 440 441
		mu 0 3 349 350 351
		f 3 -426 442 -441
		mu 0 3 350 352 351
		f 3 -429 443 -443
		mu 0 3 352 353 351
		f 3 -432 444 -444
		mu 0 3 353 354 351
		f 3 -435 445 -445
		mu 0 3 354 355 351
		f 3 -438 446 -446
		mu 0 3 355 356 351
		f 3 -440 -442 -447
		mu 0 3 356 349 351
		f 3 447 448 -433
		mu 0 3 357 358 359
		f 3 -420 449 450
		mu 0 3 360 361 358
		f 3 -450 -439 451
		mu 0 3 358 361 362
		f 3 -452 -436 -449
		mu 0 3 358 362 359
		f 3 452 -448 -430
		mu 0 3 363 358 357
		f 3 453 -453 -427
		mu 0 3 364 358 363
		f 3 -451 -454 -424
		mu 0 3 360 358 364
		f 4 454 455 456 457
		mu 0 4 365 366 367 368
		f 4 458 459 460 -456
		mu 0 4 366 369 370 367
		f 4 461 462 463 -460
		mu 0 4 369 371 372 370
		f 4 464 465 466 -463
		mu 0 4 371 373 374 372
		f 4 467 468 469 -466
		mu 0 4 375 376 377 378
		f 4 470 471 472 -469
		mu 0 4 376 379 380 377
		f 4 473 -458 474 -472
		mu 0 4 379 365 368 380
		f 3 -457 475 476
		mu 0 3 381 382 383
		f 3 -461 477 -476
		mu 0 3 382 384 383
		f 3 -464 478 -478
		mu 0 3 384 385 383
		f 3 -467 479 -479
		mu 0 3 385 386 383
		f 3 -470 480 -480
		mu 0 3 386 387 383
		f 3 -473 481 -481
		mu 0 3 387 388 383
		f 3 -475 -477 -482
		mu 0 3 388 381 383
		f 3 -459 482 483
		mu 0 3 389 390 391
		f 4 -462 -484 484 485
		mu 0 4 392 389 391 393
		f 3 -465 -486 486
		mu 0 3 394 392 393
		f 4 487 488 489 490
		mu 0 4 395 396 397 398
		f 4 491 492 493 -489
		mu 0 4 396 399 400 397
		f 4 494 495 496 -493
		mu 0 4 399 401 402 400
		f 4 497 498 499 -496
		mu 0 4 401 403 404 402
		f 4 500 501 502 -499
		mu 0 4 405 406 407 408
		f 4 503 504 505 -502
		mu 0 4 406 409 410 407
		f 4 506 -491 507 -505
		mu 0 4 409 395 398 410
		f 3 -490 508 509
		mu 0 3 411 412 413
		f 3 -494 510 -509
		mu 0 3 412 414 413
		f 3 -497 511 -511
		mu 0 3 414 415 413
		f 3 -500 512 -512
		mu 0 3 415 416 413
		f 3 -503 513 -513
		mu 0 3 416 417 413
		f 3 -506 514 -514
		mu 0 3 417 418 413
		f 3 -508 -510 -515
		mu 0 3 418 411 413
		f 3 515 516 -501
		mu 0 3 419 420 421
		f 3 -488 517 518
		mu 0 3 422 423 420
		f 3 -518 -507 519
		mu 0 3 420 423 424
		f 3 -520 -504 -517
		mu 0 3 420 424 421
		f 3 520 -516 -498
		mu 0 3 425 420 419
		f 3 521 -521 -495
		mu 0 3 426 420 425
		f 3 -519 -522 -492
		mu 0 3 422 420 426
		f 4 522 523 524 525
		mu 0 4 427 428 429 430
		f 4 526 527 528 -524
		mu 0 4 428 431 432 429
		f 4 529 530 531 -528
		mu 0 4 431 433 434 432
		f 4 532 533 534 -531
		mu 0 4 433 435 436 434
		f 4 535 536 537 -534
		mu 0 4 437 438 439 440
		f 4 538 539 540 -537
		mu 0 4 438 441 442 439
		f 4 541 -526 542 -540
		mu 0 4 441 427 430 442
		f 3 -525 543 544
		mu 0 3 443 444 445
		f 3 -529 545 -544
		mu 0 3 444 446 445
		f 3 -532 546 -546
		mu 0 3 446 447 445
		f 3 -535 547 -547
		mu 0 3 447 448 445
		f 3 -538 548 -548
		mu 0 3 448 449 445
		f 3 -541 549 -549
		mu 0 3 449 450 445
		f 3 -543 -545 -550
		mu 0 3 450 443 445
		f 3 -533 550 551
		mu 0 3 451 452 453
		f 4 -536 -552 552 -539
		mu 0 4 454 451 453 455
		f 4 553 554 555 556
		mu 0 4 456 457 458 459
		f 4 557 558 559 -555
		mu 0 4 460 461 462 463
		f 4 560 561 562 -559
		mu 0 4 461 464 465 462
		f 4 563 564 565 -562
		mu 0 4 464 466 467 465
		f 4 566 567 568 -565
		mu 0 4 466 468 469 467
		f 4 569 570 571 -568
		mu 0 4 468 470 471 469
		f 4 572 573 574 -571
		mu 0 4 470 472 473 471
		f 4 575 -557 576 -574
		mu 0 4 472 456 459 473
		f 4 577 578 579 580
		mu 0 4 474 475 476 477
		f 4 581 582 583 -579
		mu 0 4 475 478 479 476
		f 4 584 585 586 -583
		mu 0 4 480 481 482 483
		f 4 587 588 589 -586
		mu 0 4 481 484 485 482
		f 4 590 591 592 -589
		mu 0 4 484 486 487 485
		f 4 593 594 595 -592
		mu 0 4 486 488 489 487
		f 4 596 597 598 -595
		mu 0 4 488 490 491 489
		f 4 599 -581 600 -598
		mu 0 4 490 474 477 491
		f 4 601 602 603 604
		mu 0 4 492 493 494 495
		f 4 605 606 607 -603
		mu 0 4 496 497 498 499
		f 4 608 609 610 -607
		mu 0 4 497 500 501 498
		f 4 614 615 616 -613
		mu 0 4 502 504 505 503
		f 4 617 618 619 -616
		mu 0 4 504 506 507 505
		f 4 620 621 622 -619
		mu 0 4 506 508 509 507
		f 4 623 -605 624 -622
		mu 0 4 508 492 495 509
		f 4 625 626 -609 627
		mu 0 4 510 511 500 497
		f 4 628 629 -612 -627
		mu 0 4 511 512 502 500
		f 4 630 631 -615 -630
		mu 0 4 512 513 504 502
		f 4 632 633 -618 -632
		mu 0 4 513 514 506 504
		f 4 634 635 -621 -634
		mu 0 4 514 515 508 506
		f 4 636 637 -624 -636
		mu 0 4 515 516 492 508
		f 4 638 639 -602 -638
		mu 0 4 516 517 493 492
		f 4 640 -628 -606 -640
		mu 0 4 518 510 497 496
		f 4 -578 641 642 643
		mu 0 4 475 474 519 520
		f 4 -600 644 645 -642
		mu 0 4 474 490 521 519
		f 4 -597 646 647 -645
		mu 0 4 490 488 522 521
		f 4 -594 648 649 -647
		mu 0 4 488 486 523 522
		f 4 -591 650 651 -649
		mu 0 4 486 484 524 523
		f 4 -588 652 653 -651
		mu 0 4 484 481 525 524
		f 4 -585 654 655 -653
		mu 0 4 481 480 526 525
		f 4 -582 -644 656 -655
		mu 0 4 478 475 520 527
		f 4 -643 657 658 659
		mu 0 4 520 519 528 529
		f 4 -646 660 661 -658
		mu 0 4 519 521 530 528
		f 4 -648 662 663 -661
		mu 0 4 521 522 531 530
		f 4 -650 664 665 -663
		mu 0 4 522 523 532 531
		f 4 -652 666 667 -665
		mu 0 4 523 524 533 532
		f 4 -654 668 669 -667
		mu 0 4 524 525 534 533
		f 4 -656 670 671 -669
		mu 0 4 525 526 535 534
		f 4 -657 -660 672 -671
		mu 0 4 527 520 529 536
		f 4 -659 673 -626 674
		mu 0 4 529 528 511 510
		f 4 -662 675 -629 -674
		mu 0 4 528 530 512 511
		f 4 -664 676 -631 -676
		mu 0 4 530 531 513 512
		f 4 -666 677 -633 -677
		mu 0 4 531 532 514 513
		f 4 -668 678 -635 -678
		mu 0 4 532 533 515 514
		f 4 -670 679 -637 -679
		mu 0 4 533 534 516 515
		f 4 -672 680 -639 -680
		mu 0 4 534 535 517 516
		f 4 -673 -675 -641 -681
		mu 0 4 536 529 510 518
		f 4 681 682 -604 683
		mu 0 4 537 538 495 494
		f 4 684 685 -625 -683
		mu 0 4 538 539 509 495
		f 4 686 687 -623 -686
		mu 0 4 539 540 507 509
		f 4 688 689 -620 -688
		mu 0 4 540 541 505 507
		f 4 690 691 -617 -690
		mu 0 4 541 542 503 505
		f 4 692 693 -614 -692
		mu 0 4 542 543 501 503
		f 4 694 695 -611 -694
		mu 0 4 543 544 498 501
		f 4 696 -684 -608 -696
		mu 0 4 544 545 499 498
		f 4 -554 697 698 699
		mu 0 4 457 456 546 547
		f 4 -576 700 701 -698
		mu 0 4 456 472 548 546
		f 4 -573 702 703 -701
		mu 0 4 472 470 549 548
		f 4 -570 704 705 -703
		mu 0 4 470 468 550 549
		f 4 -567 706 707 -705
		mu 0 4 468 466 551 550
		f 4 -564 708 709 -707
		mu 0 4 466 464 552 551
		f 4 -561 710 711 -709
		mu 0 4 464 461 553 552
		f 4 -558 -700 712 -711
		mu 0 4 461 460 554 553
		f 4 -699 713 714 715
		mu 0 4 547 546 555 556
		f 4 -702 716 717 -714
		mu 0 4 546 548 557 555
		f 4 -704 718 719 -717
		mu 0 4 548 549 558 557
		f 4 -706 720 721 -719
		mu 0 4 549 550 559 558
		f 4 -708 722 723 -721
		mu 0 4 550 551 560 559
		f 4 -710 724 725 -723
		mu 0 4 551 552 561 560
		f 4 -712 726 727 -725
		mu 0 4 552 553 562 561
		f 4 -713 -716 728 -727
		mu 0 4 553 554 563 562
		f 4 -715 729 -682 730
		mu 0 4 556 555 538 537
		f 4 -718 731 -685 -730
		mu 0 4 555 557 539 538
		f 4 -720 732 -687 -732
		mu 0 4 557 558 540 539
		f 4 -722 733 -689 -733
		mu 0 4 558 559 541 540
		f 4 -724 734 -691 -734
		mu 0 4 559 560 542 541
		f 4 -726 735 -693 -735
		mu 0 4 560 561 543 542
		f 4 -728 736 -695 -736
		mu 0 4 561 562 544 543
		f 4 -729 -731 -697 -737
		mu 0 4 562 563 545 544
		f 4 737 738 739 740
		mu 0 4 564 565 566 567
		f 4 741 742 743 -739
		mu 0 4 565 568 569 566
		f 4 744 745 746 -743
		mu 0 4 568 570 571 569
		f 4 747 748 749 -746
		mu 0 4 572 573 574 575
		f 4 750 751 752 -749
		mu 0 4 573 576 577 574
		f 4 753 754 755 -752
		mu 0 4 576 578 579 577
		f 4 756 757 758 -755
		mu 0 4 578 580 581 579
		f 4 759 -741 760 -758
		mu 0 4 580 564 567 581
		f 4 761 762 763 764
		mu 0 4 582 583 584 585
		f 4 765 766 767 -763
		mu 0 4 583 586 587 584
		f 4 768 769 770 -767
		mu 0 4 586 588 589 587
		f 4 771 772 773 -770
		mu 0 4 588 590 591 589
		f 4 774 775 776 -773
		mu 0 4 590 592 593 591
		f 4 777 778 779 -776
		mu 0 4 592 594 595 593
		f 4 780 781 782 -779
		mu 0 4 594 596 597 595
		f 4 783 -765 784 -782
		mu 0 4 596 598 599 597
		f 4 785 786 -769 787
		mu 0 4 600 601 588 586
		f 4 788 789 -772 -787
		mu 0 4 601 602 590 588
		f 4 790 791 -775 -790
		mu 0 4 602 603 592 590
		f 4 792 793 -778 -792
		mu 0 4 603 604 594 592
		f 4 794 795 -781 -794
		mu 0 4 604 605 596 594
		f 4 796 797 -784 -796
		mu 0 4 605 606 598 596
		f 4 798 799 -762 -798
		mu 0 4 607 608 583 582
		f 4 800 -788 -766 -800
		mu 0 4 608 600 586 583
		f 4 -738 801 802 803
		mu 0 4 565 564 609 610
		f 4 -760 804 805 -802
		mu 0 4 564 580 611 609
		f 4 -757 806 807 -805
		mu 0 4 580 578 612 611
		f 4 -754 808 809 -807
		mu 0 4 578 576 613 612
		f 4 -751 810 811 -809
		mu 0 4 576 573 614 613
		f 4 -748 812 813 -811
		mu 0 4 573 572 615 614
		f 4 -745 814 815 -813
		mu 0 4 570 568 616 617
		f 4 -742 -804 816 -815
		mu 0 4 568 565 610 616
		f 4 -803 817 818 819
		mu 0 4 610 609 618 619
		f 4 -806 820 821 -818
		mu 0 4 609 611 620 618
		f 4 -808 822 823 -821
		mu 0 4 611 612 621 620
		f 4 -810 824 825 -823
		mu 0 4 612 613 622 621
		f 4 -812 826 827 -825
		mu 0 4 613 614 623 622
		f 4 -814 828 829 -827
		mu 0 4 614 615 624 623
		f 4 -816 830 831 -829
		mu 0 4 617 616 625 626
		f 4 -817 -820 832 -831
		mu 0 4 616 610 619 625
		f 4 -819 833 -786 834
		mu 0 4 619 618 601 600
		f 4 -822 835 -789 -834
		mu 0 4 618 620 602 601
		f 4 -824 836 -791 -836
		mu 0 4 620 621 603 602
		f 4 -826 837 -793 -837
		mu 0 4 621 622 604 603
		f 4 -828 838 -795 -838
		mu 0 4 622 623 605 604
		f 4 -830 839 -797 -839
		mu 0 4 623 624 606 605
		f 4 -832 840 -799 -840
		mu 0 4 626 625 608 607
		f 4 -833 -835 -801 -841
		mu 0 4 625 619 600 608
		f 4 841 842 843 844
		mu 0 4 627 628 629 630
		f 4 845 846 847 -843
		mu 0 4 628 631 632 629
		f 4 848 849 850 -847
		mu 0 4 631 633 634 632
		f 4 851 852 853 -850
		mu 0 4 633 635 636 634
		f 4 854 855 856 -853
		mu 0 4 635 637 638 636
		f 4 857 858 859 -856
		mu 0 4 639 640 641 642
		f 4 860 861 862 -859
		mu 0 4 640 643 644 641
		f 4 863 -845 864 -862
		mu 0 4 643 627 630 644
		f 4 865 866 867 868
		mu 0 4 645 646 647 648
		f 4 869 870 871 -867
		mu 0 4 646 649 650 647
		f 4 872 873 874 -871
		mu 0 4 649 651 652 650
		f 4 875 876 877 -874
		mu 0 4 651 653 654 652
		f 4 878 879 880 -877
		mu 0 4 653 655 656 654
		f 4 881 882 883 -880
		mu 0 4 655 657 658 656
		f 4 884 885 886 -883
		mu 0 4 659 660 661 662
		f 4 887 -869 888 -886
		mu 0 4 660 645 648 661
		f 4 889 890 891 892
		mu 0 4 663 664 665 666
		f 4 893 894 895 -891
		mu 0 4 664 667 668 665
		f 4 896 897 898 -895
		mu 0 4 667 669 670 668
		f 4 899 900 901 -898
		mu 0 4 669 671 672 670
		f 4 902 903 904 -901
		mu 0 4 671 673 674 672
		f 4 905 906 907 -904
		mu 0 4 675 676 677 678
		f 4 908 909 910 -907
		mu 0 4 676 679 680 677
		f 4 911 -893 912 -910
		mu 0 4 679 663 666 680
		f 4 913 914 -897 915
		mu 0 4 681 682 669 667
		f 4 916 917 -900 -915
		mu 0 4 682 683 671 669
		f 4 918 919 -903 -918
		mu 0 4 683 684 673 671
		f 4 920 921 -906 -920
		mu 0 4 685 686 676 675
		f 4 922 923 -909 -922
		mu 0 4 686 687 679 676
		f 4 924 925 -912 -924
		mu 0 4 687 688 663 679
		f 4 926 927 -890 -926
		mu 0 4 688 689 664 663
		f 4 928 -916 -894 -928
		mu 0 4 689 681 667 664
		f 4 -866 929 930 931
		mu 0 4 646 645 690 691
		f 4 -888 932 933 -930
		mu 0 4 645 660 692 690
		f 4 -885 934 935 -933
		mu 0 4 660 659 693 692
		f 4 -882 936 937 -935
		mu 0 4 657 655 694 695
		f 4 -879 938 939 -937
		mu 0 4 655 653 696 694
		f 4 -876 940 941 -939
		mu 0 4 653 651 697 696
		f 4 -873 942 943 -941
		mu 0 4 651 649 698 697
		f 4 -870 -932 944 -943
		mu 0 4 649 646 691 698
		f 4 -931 945 946 947
		mu 0 4 691 690 699 700
		f 4 -934 948 949 -946
		mu 0 4 690 692 701 699
		f 4 -936 950 951 -949
		mu 0 4 692 693 702 701
		f 4 -938 952 953 -951
		mu 0 4 695 694 703 704
		f 4 -940 954 955 -953
		mu 0 4 694 696 705 703
		f 4 -942 956 957 -955
		mu 0 4 696 697 706 705
		f 4 -944 958 959 -957
		mu 0 4 697 698 707 706
		f 4 -945 -948 960 -959
		mu 0 4 698 691 700 707
		f 4 -947 961 -914 962
		mu 0 4 700 699 682 681
		f 4 -950 963 -917 -962
		mu 0 4 699 701 683 682
		f 4 -952 964 -919 -964
		mu 0 4 701 702 684 683
		f 4 -954 965 -921 -965
		mu 0 4 704 703 686 685
		f 4 -956 966 -923 -966
		mu 0 4 703 705 687 686
		f 4 -958 967 -925 -967
		mu 0 4 705 706 688 687
		f 4 -960 968 -927 -968
		mu 0 4 706 707 689 688
		f 4 -961 -963 -929 -969
		mu 0 4 707 700 681 689
		f 4 969 970 -892 971
		mu 0 4 708 709 666 665
		f 4 972 973 -913 -971
		mu 0 4 709 710 680 666
		f 4 974 975 -911 -974
		mu 0 4 710 711 677 680
		f 4 976 977 -908 -976
		mu 0 4 711 712 678 677
		f 4 978 979 -905 -978
		mu 0 4 713 714 672 674
		f 4 980 981 -902 -980
		mu 0 4 714 715 670 672
		f 4 982 983 -899 -982
		mu 0 4 715 716 668 670
		f 4 984 -972 -896 -984
		mu 0 4 716 708 665 668
		f 4 -842 985 986 987
		mu 0 4 628 627 717 718
		f 4 -864 988 989 -986
		mu 0 4 627 643 719 717
		f 4 -861 990 991 -989
		mu 0 4 643 640 720 719
		f 4 -858 992 993 -991
		mu 0 4 640 639 721 720
		f 4 -855 994 995 -993
		mu 0 4 637 635 722 723
		f 4 -852 996 997 -995
		mu 0 4 635 633 724 722
		f 4 -849 998 999 -997
		mu 0 4 633 631 725 724
		f 4 -846 -988 1000 -999
		mu 0 4 631 628 718 725
		f 4 -987 1001 1002 1003
		mu 0 4 718 717 726 727
		f 4 -990 1004 1005 -1002
		mu 0 4 717 719 728 726
		f 4 -992 1006 1007 -1005
		mu 0 4 719 720 729 728
		f 4 -994 1008 1009 -1007
		mu 0 4 720 721 730 729
		f 4 -996 1010 1011 -1009
		mu 0 4 723 722 731 732
		f 4 -998 1012 1013 -1011
		mu 0 4 722 724 733 731
		f 4 -1000 1014 1015 -1013
		mu 0 4 724 725 734 733
		f 4 -1001 -1004 1016 -1015
		mu 0 4 725 718 727 734
		f 4 -1003 1017 -970 1018
		mu 0 4 727 726 709 708
		f 4 -1006 1019 -973 -1018
		mu 0 4 726 728 710 709
		f 4 -1008 1020 -975 -1020
		mu 0 4 728 729 711 710
		f 4 -1010 1021 -977 -1021
		mu 0 4 729 730 712 711
		f 4 -1012 1022 -979 -1022
		mu 0 4 732 731 714 713
		f 4 -1014 1023 -981 -1023
		mu 0 4 731 733 715 714;
	setAttr ".fc[500:589]"
		f 4 -1016 1024 -983 -1024
		mu 0 4 733 734 716 715
		f 4 -1017 -1019 -985 -1025
		mu 0 4 734 727 708 716
		f 4 1025 1026 1027 1028
		mu 0 4 735 736 737 738
		f 4 1029 1030 1031 -1027
		mu 0 4 736 739 740 737
		f 4 1032 1033 1034 -1031
		mu 0 4 739 741 742 740
		f 4 1035 1036 1037 -1034
		mu 0 4 741 743 744 742
		f 4 1038 1039 1040 -1037
		mu 0 4 743 745 746 744
		f 4 1041 1042 1043 -1040
		mu 0 4 745 747 748 746
		f 4 1044 1045 1046 -1043
		mu 0 4 747 749 750 748
		f 4 1047 -1029 1048 -1046
		mu 0 4 751 735 738 752
		f 4 1049 1050 1051 1052
		mu 0 4 753 754 755 756
		f 4 1053 1054 1055 -1051
		mu 0 4 754 757 758 755
		f 4 1056 1057 1058 -1055
		mu 0 4 757 759 760 758
		f 4 1059 1060 1061 -1058
		mu 0 4 759 761 762 760
		f 4 1062 1063 1064 -1061
		mu 0 4 763 764 765 766
		f 4 1065 1066 1067 -1064
		mu 0 4 764 767 768 765
		f 4 1068 1069 1070 -1067
		mu 0 4 767 769 770 768
		f 4 1071 -1053 1072 -1070
		mu 0 4 769 753 756 770
		f 4 1073 1074 1075 1076
		mu 0 4 771 772 773 774
		f 4 1077 1078 1079 -1075
		mu 0 4 772 775 776 773
		f 4 1080 1081 1082 -1079
		mu 0 4 775 777 778 776
		f 4 1083 1084 1085 -1082
		mu 0 4 777 779 780 778
		f 4 1086 1087 1088 -1085
		mu 0 4 779 781 782 780
		f 4 1089 1090 1091 -1088
		mu 0 4 781 783 784 782
		f 4 1092 1093 1094 -1091
		mu 0 4 783 785 786 784
		f 4 1095 -1077 1096 -1094
		mu 0 4 787 771 774 788
		f 4 1097 1098 -1081 1099
		mu 0 4 789 790 777 775
		f 4 1100 1101 -1084 -1099
		mu 0 4 790 791 779 777
		f 4 1102 1103 -1087 -1102
		mu 0 4 791 792 781 779
		f 4 1104 1105 -1090 -1104
		mu 0 4 792 793 783 781
		f 4 1106 1107 -1093 -1106
		mu 0 4 793 794 785 783
		f 4 1108 1109 -1096 -1108
		mu 0 4 795 796 771 787
		f 4 1110 1111 -1074 -1110
		mu 0 4 796 797 772 771
		f 4 1112 -1100 -1078 -1112
		mu 0 4 797 789 775 772
		f 4 -1050 1113 1114 1115
		mu 0 4 754 753 798 799
		f 4 -1072 1116 1117 -1114
		mu 0 4 753 769 800 798
		f 4 -1069 1118 1119 -1117
		mu 0 4 769 767 801 800
		f 4 -1066 1120 1121 -1119
		mu 0 4 767 764 802 801
		f 4 -1063 1122 1123 -1121
		mu 0 4 764 763 803 802
		f 4 -1060 1124 1125 -1123
		mu 0 4 761 759 804 805
		f 4 -1057 1126 1127 -1125
		mu 0 4 759 757 806 804
		f 4 -1054 -1116 1128 -1127
		mu 0 4 757 754 799 806
		f 4 -1115 1129 1130 1131
		mu 0 4 799 798 807 808
		f 4 -1118 1132 1133 -1130
		mu 0 4 798 800 809 807
		f 4 -1120 1134 1135 -1133
		mu 0 4 800 801 810 809
		f 4 -1122 1136 1137 -1135
		mu 0 4 801 802 811 810
		f 4 -1124 1138 1139 -1137
		mu 0 4 802 803 812 811
		f 4 -1126 1140 1141 -1139
		mu 0 4 805 804 813 814
		f 4 -1128 1142 1143 -1141
		mu 0 4 804 806 815 813
		f 4 -1129 -1132 1144 -1143
		mu 0 4 806 799 808 815
		f 4 -1131 1145 -1098 1146
		mu 0 4 808 807 790 789
		f 4 -1134 1147 -1101 -1146
		mu 0 4 807 809 791 790
		f 4 -1136 1148 -1103 -1148
		mu 0 4 809 810 792 791
		f 4 -1138 1149 -1105 -1149
		mu 0 4 810 811 793 792
		f 4 -1140 1150 -1107 -1150
		mu 0 4 811 812 794 793
		f 4 -1142 1151 -1109 -1151
		mu 0 4 814 813 796 795
		f 4 -1144 1152 -1111 -1152
		mu 0 4 813 815 797 796
		f 4 -1145 -1147 -1113 -1153
		mu 0 4 815 808 789 797
		f 4 1153 1154 -1076 1155
		mu 0 4 816 817 774 773
		f 4 1156 1157 -1097 -1155
		mu 0 4 817 818 788 774
		f 4 1158 1159 -1095 -1158
		mu 0 4 819 820 784 786
		f 4 1160 1161 -1092 -1160
		mu 0 4 820 821 782 784
		f 4 1162 1163 -1089 -1162
		mu 0 4 821 822 780 782
		f 4 1164 1165 -1086 -1164
		mu 0 4 822 823 778 780
		f 4 1166 1167 -1083 -1166
		mu 0 4 823 824 776 778
		f 4 1168 -1156 -1080 -1168
		mu 0 4 824 816 773 776
		f 4 -1026 1169 1170 1171
		mu 0 4 736 735 825 826
		f 4 -1048 1172 1173 -1170
		mu 0 4 735 751 827 825
		f 4 -1045 1174 1175 -1173
		mu 0 4 749 747 828 829
		f 4 -1042 1176 1177 -1175
		mu 0 4 747 745 830 828
		f 4 -1039 1178 1179 -1177
		mu 0 4 745 743 831 830
		f 4 -1036 1180 1181 -1179
		mu 0 4 743 741 832 831
		f 4 -1033 1182 1183 -1181
		mu 0 4 741 739 833 832
		f 4 -1030 -1172 1184 -1183
		mu 0 4 739 736 826 833
		f 4 -1171 1185 1186 1187
		mu 0 4 826 825 834 835
		f 4 -1174 1188 1189 -1186
		mu 0 4 825 827 836 834
		f 4 -1176 1190 1191 -1189
		mu 0 4 829 828 837 838
		f 4 -1178 1192 1193 -1191
		mu 0 4 828 830 839 837
		f 4 -1180 1194 1195 -1193
		mu 0 4 830 831 840 839
		f 4 -1182 1196 1197 -1195
		mu 0 4 831 832 841 840
		f 4 -1184 1198 1199 -1197
		mu 0 4 832 833 842 841
		f 4 -1185 -1188 1200 -1199
		mu 0 4 833 826 835 842
		f 4 -1187 1201 -1154 1202
		mu 0 4 835 834 817 816
		f 4 -1190 1203 -1157 -1202
		mu 0 4 834 836 818 817
		f 4 -1192 1204 -1159 -1204
		mu 0 4 838 837 820 819
		f 4 -1194 1205 -1161 -1205
		mu 0 4 837 839 821 820
		f 4 -1196 1206 -1163 -1206
		mu 0 4 839 840 822 821
		f 4 -1198 1207 -1165 -1207
		mu 0 4 840 841 823 822
		f 4 -1200 1208 -1167 -1208
		mu 0 4 841 842 824 823
		f 4 -1201 -1203 -1169 -1209
		mu 0 4 842 835 816 824;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Planta";
	rename -uid "ECA9D784-4A03-0099-BDD4-498842AB9097";
	setAttr ".t" -type "double3" 2.7323122797100905 0 3.007270372264502 ;
createNode transform -n "pSphere2" -p "Planta";
	rename -uid "FAF9F04D-4E3B-CC33-B9CE-3B80CD010180";
	setAttr ".t" -type "double3" -1.5469491481781006 7.147903071616196 -0.34777246494136993 ;
	setAttr ".s" -type "double3" 0.032338355508030596 0.032338355508030596 0.032338355508030596 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	rename -uid "2B748D52-4182-1BEF-C9F1-6B8C55BC9D92";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  0.27059805 -0.9238795 -0.27059805 0 -0.9238795 -0.3826834
		 -0.27059805 -0.9238795 -0.27059805 -0.3826834 -0.9238795 0 -0.27059805 -0.9238795 0.27059805
		 0 -0.9238795 0.38268343 0.27059805 -0.9238795 0.27059805 0.38268346 -0.9238795 0
		 0.49999994 -0.70710677 -0.49999994 0 -0.70710677 -0.70710671 -0.49999994 -0.70710677 -0.49999994
		 -0.70710671 -0.70710677 0 -0.49999994 -0.70710677 0.49999994 0 -0.70710677 0.70710671
		 0.49999997 -0.70710677 0.49999997 0.70710677 -0.70710677 0 0.65328139 -0.38268343 -0.65328139
		 0 -0.38268343 -0.92387938 -0.65328139 -0.38268343 -0.65328139 -0.92387938 -0.38268343 0
		 -0.65328139 -0.38268343 0.65328139 0 -0.38268343 0.92387944 0.65328145 -0.38268343 0.65328145
		 0.9238795 -0.38268343 0 0.70710671 0 -0.70710671 0 0 -0.99999988 -0.70710671 0 -0.70710671
		 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994 0.70710677 0 0.70710677 1 0 0
		 0.65328139 0.38268343 -0.65328139 0 0.38268343 -0.92387938 -0.65328139 0.38268343 -0.65328139
		 -0.92387938 0.38268343 0 -0.65328139 0.38268343 0.65328139 0 0.38268343 0.92387944
		 0.65328145 0.38268343 0.65328145 0.9238795 0.38268343 0 0.49999994 0.70710677 -0.49999994
		 0 0.70710677 -0.70710671 -0.49999994 0.70710677 -0.49999994 -0.70710671 0.70710677 0
		 -0.49999994 0.70710677 0.49999994 0 0.70710677 0.70710671 0.49999997 0.70710677 0.49999997
		 0.70710677 0.70710677 0 0.27059805 0.9238795 -0.27059805 0 0.9238795 -0.3826834 -0.27059805 0.9238795 -0.27059805
		 -0.3826834 0.9238795 0 -0.27059805 0.9238795 0.27059805 0 0.9238795 0.38268343 0.27059805 0.9238795 0.27059805
		 0.38268346 0.9238795 0 0 -1 0 0 1 0;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere3" -p "Planta";
	rename -uid "77C1D85D-49CC-0C3C-64AE-76B9F32B9A39";
	setAttr ".t" -type "double3" -0.0049068254377103507 6.9770299037339738 0.26064890623092651 ;
	setAttr ".s" -type "double3" 0.033849678444659824 0.033849678444659824 0.033849678444659824 ;
createNode mesh -n "pSphereShape3" -p "pSphere3";
	rename -uid "9CE09DDF-4096-670F-78E9-09BE2CF1E172";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 79 ".uvst[0].uvsp[0:78]" -type "float2" 0 0.125 0.125 0.125
		 0.25 0.125 0.375 0.125 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25
		 0.125 0.25 0.25 0.25 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0
		 0.375 0.125 0.375 0.25 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375
		 1 0.375 0 0.5 0.125 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1
		 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875
		 0.625 1 0.625 0 0.75 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75
		 0.875 0.75 1 0.75 0 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875
		 0.75 0.875 0.875 0.875 1 0.875 0.0625 0 0.1875 0 0.3125 0 0.4375 0 0.5625 0 0.6875
		 0 0.8125 0 0.9375 0 0.0625 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125
		 1 0.9375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  0.27059805 -0.9238795 -0.27059805 0 -0.9238795 -0.3826834
		 -0.27059805 -0.9238795 -0.27059805 -0.3826834 -0.9238795 0 -0.27059805 -0.9238795 0.27059805
		 0 -0.9238795 0.38268343 0.27059805 -0.9238795 0.27059805 0.38268346 -0.9238795 0
		 0.49999994 -0.70710677 -0.49999994 0 -0.70710677 -0.70710671 -0.49999994 -0.70710677 -0.49999994
		 -0.70710671 -0.70710677 0 -0.49999994 -0.70710677 0.49999994 0 -0.70710677 0.70710671
		 0.49999997 -0.70710677 0.49999997 0.70710677 -0.70710677 0 0.65328139 -0.38268343 -0.65328139
		 0 -0.38268343 -0.92387938 -0.65328139 -0.38268343 -0.65328139 -0.92387938 -0.38268343 0
		 -0.65328139 -0.38268343 0.65328139 0 -0.38268343 0.92387944 0.65328145 -0.38268343 0.65328145
		 0.9238795 -0.38268343 0 0.70710671 0 -0.70710671 0 0 -0.99999988 -0.70710671 0 -0.70710671
		 -0.99999988 0 0 -0.70710671 0 0.70710671 0 0 0.99999994 0.70710677 0 0.70710677 1 0 0
		 0.65328139 0.38268343 -0.65328139 0 0.38268343 -0.92387938 -0.65328139 0.38268343 -0.65328139
		 -0.92387938 0.38268343 0 -0.65328139 0.38268343 0.65328139 0 0.38268343 0.92387944
		 0.65328145 0.38268343 0.65328145 0.9238795 0.38268343 0 0.49999994 0.70710677 -0.49999994
		 0 0.70710677 -0.70710671 -0.49999994 0.70710677 -0.49999994 -0.70710671 0.70710677 0
		 -0.49999994 0.70710677 0.49999994 0 0.70710677 0.70710671 0.49999997 0.70710677 0.49999997
		 0.70710677 0.70710677 0 0.27059805 0.9238795 -0.27059805 0 0.9238795 -0.3826834 -0.27059805 0.9238795 -0.27059805
		 -0.3826834 0.9238795 0 -0.27059805 0.9238795 0.27059805 0 0.9238795 0.38268343 0.27059805 0.9238795 0.27059805
		 0.38268346 0.9238795 0 0 -1 0 0 1 0;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 16 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 24 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 32 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 40 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 48 0 0 8 0 1 9 0 2 10 0 3 11 0 4 12 0 5 13 0 6 14 0
		 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0 15 23 0 16 24 0 17 25 0
		 18 26 0 19 27 0 20 28 0 21 29 0 22 30 0 23 31 0 24 32 0 25 33 0 26 34 0 27 35 0 28 36 0
		 29 37 0 30 38 0 31 39 0 32 40 0 33 41 0 34 42 0 35 43 0 36 44 0 37 45 0 38 46 0 39 47 0
		 40 48 0 41 49 0 42 50 0 43 51 0 44 52 0 45 53 0 46 54 0 47 55 0 56 0 0 56 1 0 56 2 0
		 56 3 0 56 4 0 56 5 0 56 6 0 56 7 0 48 57 0 49 57 0 50 57 0 51 57 0 52 57 0 53 57 0
		 54 57 0 55 57 0;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 57 -9 -57
		mu 0 4 0 1 10 9
		f 4 1 58 -10 -58
		mu 0 4 1 2 11 10
		f 4 2 59 -11 -59
		mu 0 4 2 3 12 11
		f 4 3 60 -12 -60
		mu 0 4 3 4 13 12
		f 4 4 61 -13 -61
		mu 0 4 4 5 14 13
		f 4 5 62 -14 -62
		mu 0 4 5 6 15 14
		f 4 6 63 -15 -63
		mu 0 4 6 7 16 15
		f 4 7 56 -16 -64
		mu 0 4 7 8 17 16
		f 4 8 65 -17 -65
		mu 0 4 9 10 19 18
		f 4 9 66 -18 -66
		mu 0 4 10 11 20 19
		f 4 10 67 -19 -67
		mu 0 4 11 12 21 20
		f 4 11 68 -20 -68
		mu 0 4 12 13 22 21
		f 4 12 69 -21 -69
		mu 0 4 13 14 23 22
		f 4 13 70 -22 -70
		mu 0 4 14 15 24 23
		f 4 14 71 -23 -71
		mu 0 4 15 16 25 24
		f 4 15 64 -24 -72
		mu 0 4 16 17 26 25
		f 4 16 73 -25 -73
		mu 0 4 18 19 28 27
		f 4 17 74 -26 -74
		mu 0 4 19 20 29 28
		f 4 18 75 -27 -75
		mu 0 4 20 21 30 29
		f 4 19 76 -28 -76
		mu 0 4 21 22 31 30
		f 4 20 77 -29 -77
		mu 0 4 22 23 32 31
		f 4 21 78 -30 -78
		mu 0 4 23 24 33 32
		f 4 22 79 -31 -79
		mu 0 4 24 25 34 33
		f 4 23 72 -32 -80
		mu 0 4 25 26 35 34
		f 4 24 81 -33 -81
		mu 0 4 27 28 37 36
		f 4 25 82 -34 -82
		mu 0 4 28 29 38 37
		f 4 26 83 -35 -83
		mu 0 4 29 30 39 38
		f 4 27 84 -36 -84
		mu 0 4 30 31 40 39
		f 4 28 85 -37 -85
		mu 0 4 31 32 41 40
		f 4 29 86 -38 -86
		mu 0 4 32 33 42 41
		f 4 30 87 -39 -87
		mu 0 4 33 34 43 42
		f 4 31 80 -40 -88
		mu 0 4 34 35 44 43
		f 4 32 89 -41 -89
		mu 0 4 36 37 46 45
		f 4 33 90 -42 -90
		mu 0 4 37 38 47 46
		f 4 34 91 -43 -91
		mu 0 4 38 39 48 47
		f 4 35 92 -44 -92
		mu 0 4 39 40 49 48
		f 4 36 93 -45 -93
		mu 0 4 40 41 50 49
		f 4 37 94 -46 -94
		mu 0 4 41 42 51 50
		f 4 38 95 -47 -95
		mu 0 4 42 43 52 51
		f 4 39 88 -48 -96
		mu 0 4 43 44 53 52
		f 4 40 97 -49 -97
		mu 0 4 45 46 55 54
		f 4 41 98 -50 -98
		mu 0 4 46 47 56 55
		f 4 42 99 -51 -99
		mu 0 4 47 48 57 56
		f 4 43 100 -52 -100
		mu 0 4 48 49 58 57
		f 4 44 101 -53 -101
		mu 0 4 49 50 59 58
		f 4 45 102 -54 -102
		mu 0 4 50 51 60 59
		f 4 46 103 -55 -103
		mu 0 4 51 52 61 60
		f 4 47 96 -56 -104
		mu 0 4 52 53 62 61
		f 3 -1 -105 105
		mu 0 3 1 0 63
		f 3 -2 -106 106
		mu 0 3 2 1 64
		f 3 -3 -107 107
		mu 0 3 3 2 65
		f 3 -4 -108 108
		mu 0 3 4 3 66
		f 3 -5 -109 109
		mu 0 3 5 4 67
		f 3 -6 -110 110
		mu 0 3 6 5 68
		f 3 -7 -111 111
		mu 0 3 7 6 69
		f 3 -8 -112 104
		mu 0 3 8 7 70
		f 3 48 113 -113
		mu 0 3 54 55 71
		f 3 49 114 -114
		mu 0 3 55 56 72
		f 3 50 115 -115
		mu 0 3 56 57 73
		f 3 51 116 -116
		mu 0 3 57 58 74
		f 3 52 117 -117
		mu 0 3 58 59 75
		f 3 53 118 -118
		mu 0 3 59 60 76
		f 3 54 119 -119
		mu 0 3 60 61 77
		f 3 55 112 -120
		mu 0 3 61 62 78;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "sweep2" -p "Planta";
	rename -uid "6CF5651E-48FE-7746-40F2-10B110FF0781";
	setAttr ".rp" -type "double3" -0.9573180228471756 6.4733564853668213 -0.48953056335449219 ;
	setAttr ".sp" -type "double3" -0.9573180228471756 6.4733564853668213 -0.48953056335449219 ;
createNode mesh -n "sweepShape2" -p "sweep2";
	rename -uid "17CBB258-4D71-1A17-A774-0B8FC565CE57";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.039721043780446053 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0 0 0.0088268928
		 0 0.017653791 0 0.026480688 0 0.035307579 0 0.044134494 0 0.052961394 0 0.061788298
		 0 0.070615195 0 0 0.20139724 0.0088268928 0.20139724 0.017653791 0.20139724 0.026480688
		 0.20139724 0.035307579 0.20139724 0.044134494 0.20139724 0.052961394 0.20139724 0.061788298
		 0.20139724 0.070615195 0.20139724 0 0.40249947 0.0088268928 0.40249947 0.017653791
		 0.40249947 0.026480688 0.40249947 0.035307579 0.40249947 0.044134494 0.40249947 0.052961394
		 0.40249947 0.061788298 0.40249947 0.070615195 0.40249947 0 0.60330284 0.0088268928
		 0.60330284 0.017653791 0.60330284 0.026480688 0.60330284 0.035307579 0.60330284 0.044134494
		 0.60330284 0.052961394 0.60330284 0.061788298 0.60330284 0.070615195 0.60330284 0
		 0.80310941 0.0088268928 0.80310941 0.017653791 0.80310941 0.026480688 0.80310941
		 0.035307579 0.80310941 0.044134494 0.80310941 0.052961394 0.80310941 0.061788298
		 0.80310941 0.070615195 0.80310941 0 1 0.0088268928 1 0.017653791 1 0.026480688 1
		 0.035307579 1 0.044134494 1 0.052961394 1 0.061788298 1 0.070615195 1 0.026480693
		 0 0.017653789 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  -0.40152597 5.77476215 -0.61644459 -0.38640505 5.77717972 -0.60967827
		 -0.37150067 5.78213787 -0.61546946 -0.36554423 5.78673458 -0.63042688 -0.37202477 5.78827429 -0.64578533
		 -0.38714617 5.7858572 -0.65254831 -0.40205026 5.78089905 -0.64675808 -0.40800661 5.77630329 -0.63180256
		 -0.51756465 6.13113785 -0.54275036 -0.50308555 6.13551998 -0.53557682 -0.48881447 6.14241314 -0.54096794
		 -0.48311085 6.14778233 -0.55576372 -0.48931614 6.14848185 -0.57129622 -0.50379527 6.14410067 -0.57846737
		 -0.51806659 6.13720655 -0.57307768 -0.52376962 6.13183689 -0.55828285 -0.68461818 6.46691227 -0.47331285
		 -0.67121035 6.47343302 -0.4656992 -0.65799463 6.48243618 -0.47065401 -0.65271306 6.48864889 -0.48527527
		 -0.65845931 6.48843098 -0.50099754 -0.67186695 6.48190975 -0.5086112 -0.68508279 6.47290707 -0.50365829
		 -0.69036448 6.46669388 -0.48903656 -0.90844518 6.76865435 -0.41091633 -0.89686203 6.77760983 -0.4027977
		 -0.88544518 6.78901291 -0.40725613 -0.88088238 6.79618406 -0.42167997 -0.88584715 6.79492378 -0.43761778
		 -0.89743006 6.78596735 -0.4457345 -0.90884686 6.77456427 -0.44127607 -0.91340971 6.76739311 -0.42685318
		 -1.19682026 7.009414196 -0.36112785 -1.18864393 7.021155357 -0.35243464 -1.18058562 7.035303593 -0.35632515
		 -1.17736483 7.043571472 -0.37052155 -1.18086934 7.041117668 -0.38670635 -1.18904495 7.029376507 -0.39540005
		 -1.19710302 7.015226841 -0.39150858 -1.20032406 7.0069589615 -0.37731266 -1.54842615 7.13257217 -0.33565998
		 -1.54687285 7.14650631 -0.32651281 -1.54534197 7.16281748 -0.32995605 -1.54472995 7.17195082 -0.34397602
		 -1.54539561 7.16855478 -0.36035347 -1.54694915 7.15462017 -0.36950064 -1.5484798 7.13830853 -0.36605644
		 -1.54909182 7.12917614 -0.35203934 -0.38677531 5.78151941 -0.63111448 -1.546911 7.15056372 -0.3480072;
	setAttr -s 104 ".ed[0:103]"  0 1 0 1 9 1 9 8 1 8 0 1 1 2 0 2 10 1 10 9 1
		 2 3 0 3 11 1 11 10 1 3 4 0 4 12 1 12 11 1 4 5 0 5 13 1 13 12 1 5 6 0 6 14 1 14 13 1
		 6 7 0 7 15 1 15 14 1 7 0 0 8 15 1 9 17 1 17 16 1 16 8 1 10 18 1 18 17 1 11 19 1 19 18 1
		 12 20 1 20 19 1 13 21 1 21 20 1 14 22 1 22 21 1 15 23 1 23 22 1 16 23 1 17 25 1 25 24 1
		 24 16 1 18 26 1 26 25 1 19 27 1 27 26 1 20 28 1 28 27 1 21 29 1 29 28 1 22 30 1 30 29 1
		 23 31 1 31 30 1 24 31 1 25 33 1 33 32 1 32 24 1 26 34 1 34 33 1 27 35 1 35 34 1 28 36 1
		 36 35 1 29 37 1 37 36 1 30 38 1 38 37 1 31 39 1 39 38 1 32 39 1 33 41 1 41 40 0 40 32 1
		 34 42 1 42 41 0 35 43 1 43 42 0 36 44 1 44 43 0 37 45 1 45 44 0 38 46 1 46 45 0 39 47 1
		 47 46 0 40 47 0 1 48 1 48 5 1 0 48 1 7 48 1 6 48 1 4 48 1 3 48 1 2 48 1 40 49 1 49 44 1
		 41 49 1 42 49 1 43 49 1 45 49 1 46 49 1 47 49 1;
	setAttr -s 56 -ch 208 ".fc[0:55]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 10 9
		f 4 4 5 6 -2
		mu 0 4 1 2 11 10
		f 4 7 8 9 -6
		mu 0 4 2 3 12 11
		f 4 10 11 12 -9
		mu 0 4 3 4 13 12
		f 4 13 14 15 -12
		mu 0 4 4 5 14 13
		f 4 16 17 18 -15
		mu 0 4 5 6 15 14
		f 4 19 20 21 -18
		mu 0 4 6 7 16 15
		f 4 22 -4 23 -21
		mu 0 4 7 8 17 16
		f 4 -3 24 25 26
		mu 0 4 9 10 19 18
		f 4 -7 27 28 -25
		mu 0 4 10 11 20 19
		f 4 -10 29 30 -28
		mu 0 4 11 12 21 20
		f 4 -13 31 32 -30
		mu 0 4 12 13 22 21
		f 4 -16 33 34 -32
		mu 0 4 13 14 23 22
		f 4 -19 35 36 -34
		mu 0 4 14 15 24 23
		f 4 -22 37 38 -36
		mu 0 4 15 16 25 24
		f 4 -24 -27 39 -38
		mu 0 4 16 17 26 25
		f 4 -26 40 41 42
		mu 0 4 18 19 28 27
		f 4 -29 43 44 -41
		mu 0 4 19 20 29 28
		f 4 -31 45 46 -44
		mu 0 4 20 21 30 29
		f 4 -33 47 48 -46
		mu 0 4 21 22 31 30
		f 4 -35 49 50 -48
		mu 0 4 22 23 32 31
		f 4 -37 51 52 -50
		mu 0 4 23 24 33 32
		f 4 -39 53 54 -52
		mu 0 4 24 25 34 33
		f 4 -40 -43 55 -54
		mu 0 4 25 26 35 34
		f 4 -42 56 57 58
		mu 0 4 27 28 37 36
		f 4 -45 59 60 -57
		mu 0 4 28 29 38 37
		f 4 -47 61 62 -60
		mu 0 4 29 30 39 38
		f 4 -49 63 64 -62
		mu 0 4 30 31 40 39
		f 4 -51 65 66 -64
		mu 0 4 31 32 41 40
		f 4 -53 67 68 -66
		mu 0 4 32 33 42 41
		f 4 -55 69 70 -68
		mu 0 4 33 34 43 42
		f 4 -56 -59 71 -70
		mu 0 4 34 35 44 43
		f 4 -58 72 73 74
		mu 0 4 36 37 46 45
		f 4 -61 75 76 -73
		mu 0 4 37 38 47 46
		f 4 -63 77 78 -76
		mu 0 4 38 39 48 47
		f 4 -65 79 80 -78
		mu 0 4 39 40 49 48
		f 4 -67 81 82 -80
		mu 0 4 40 41 50 49
		f 4 -69 83 84 -82
		mu 0 4 41 42 51 50
		f 4 -71 85 86 -84
		mu 0 4 42 43 52 51
		f 4 -72 -75 87 -86
		mu 0 4 43 44 53 52
		f 3 93 89 -14
		mu 0 3 4 54 5
		f 3 -1 90 -89
		mu 0 3 1 8 54
		f 3 -91 -23 91
		mu 0 3 54 8 7
		f 3 -92 -20 92
		mu 0 3 54 7 6
		f 3 -93 -17 -90
		mu 0 3 54 6 5
		f 3 94 -94 -11
		mu 0 3 3 54 4
		f 3 95 -95 -8
		mu 0 3 2 54 3
		f 3 88 -96 -5
		mu 0 3 1 54 2
		f 3 101 97 -83
		mu 0 3 50 55 49
		f 3 -74 98 -97
		mu 0 3 45 46 55
		f 3 -99 -77 99
		mu 0 3 55 46 47
		f 3 -100 -79 100
		mu 0 3 55 47 48
		f 3 -101 -81 -98
		mu 0 3 55 48 49
		f 3 102 -102 -85
		mu 0 3 51 55 50
		f 3 103 -103 -87
		mu 0 3 52 55 51
		f 3 96 -104 -88
		mu 0 3 45 55 52;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane2" -p "Planta";
	rename -uid "97549C10-47DB-F9C7-AD37-9897D53DECDF";
	setAttr ".t" -type "double3" 0.57470562013843685 0.18776410370115038 -0.72750101852221472 ;
	setAttr ".r" -type "double3" 4.6060056513702099 74.650035670648165 17.33809400670145 ;
	setAttr ".s" -type "double3" 1.1201595860987179 1 1 ;
	setAttr ".rp" -type "double3" -0.14293058216571808 5.225419282913208 -0.05449676513671875 ;
	setAttr ".sp" -type "double3" -0.14293058216571808 5.225419282913208 -0.05449676513671875 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "DE442FA2-41DC-0981-9DF5-03A2EA2B5CD4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pPlane2";
	rename -uid "CED33A3B-4726-B19D-4C51-8E91CB2A0FAB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0 0 0.25 0 0.5 0
		 0.75 0 1 0 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 1 0.25 1 0.5 1 0.75 1 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  -0.18680707 -0.05844396 0.16737361 
		-0.18680707 -0.28379592 0.26193035 -0.17869698 -0.74372053 0.30803865 -0.18398848 
		-1.0370864 0.13188076 -0.18792924 -1.2144716 -0.062161639 -0.18680707 -0.04452537 
		0.16968942 -0.18680707 -0.36241981 0.23039094 -0.17959888 -0.73816347 0.29920721 
		-0.18489037 -1.0207738 0.12746996 -0.19515975 -1.4830283 -0.37819231 -0.18680707 
		-0.030606888 0.17200521 -0.18680707 -0.30873013 0.25192818 -0.17921576 -0.67714179 
		0.33074707 -0.18450727 -0.94661826 0.18633372 -0.19983613 -1.6366165 -0.56845844 
		-0.18680707 -0.01668825 0.17432098 -0.18680707 -0.25504044 0.27346539 -0.17883264 
		-0.6161201 0.36228698 -0.18412416 -0.87246299 0.24519733 -0.1943935 -1.3347172 -0.26046452 
		-0.18680707 -0.0027697012 0.1766368 -0.18680707 -0.11433211 0.3299095 -0.17716448 
		-0.49963358 0.43419841 -0.18245599 -0.74046427 0.36733609 -0.18639675 -0.91784954 
		0.17329359 -0.18680707 -0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726 -0.18680707 
		-0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726;
	setAttr -s 30 ".vt[0:29]"  -0.45356494 6.045112133 -0.41135645 -0.50458258 6.045112133 -0.18801041
		 -0.49411124 6.045112133 0.18336496 -0.41642165 6.045112133 0.42098719 -0.35856372 6.045112133 0.59795219
		 -0.32209015 6.045112133 -0.45434159 -0.31531182 6.045112133 -0.074240819 -0.23762225 6.045112133 0.16338143
		 -0.15993267 6.045112133 0.40100366 -0.0091586709 6.045112133 0.86216295 -0.19061539 6.045112133 -0.49732667
		 -0.077689566 6.045112133 -0.15193039 0 6.045112133 0.085691854 0.077689566 6.045112133 0.3233141
		 0.30274719 6.045112133 1.0116781 -0.059140608 6.045112133 -0.54031175 0.15993267 6.045112133 -0.22961996
		 0.23762225 6.045112133 0.0080022886 0.31531182 6.045112133 0.24562453 0.46608582 6.045112133 0.70678377
		 0.07233417 6.045112133 -0.5832969 0.24543868 6.045112133 -0.43322659 0.45637774 6.045112133 -0.12739332
		 0.53406733 6.045112133 0.11022893 0.59192526 6.045112133 0.28719392 -0.32487431 6.045112133 -0.76861912
		 -0.30429372 6.045112133 -0.77534789 -0.28371313 6.045112133 -0.7820766 -0.26313254 6.045112133 -0.78880531
		 -0.24255194 6.045112133 -0.79553407;
	setAttr -s 49 ".ed[0:48]"  0 1 0 0 5 0 1 2 0 1 6 1 2 3 0 2 7 1 3 4 0
		 3 8 1 4 9 0 5 6 1 5 10 0 6 7 1 6 11 1 7 8 1 7 12 1 8 9 1 8 13 1 9 14 0 10 11 1 10 15 0
		 11 12 1 11 16 1 12 13 1 12 17 1 13 14 1 13 18 1 14 19 0 15 16 1 15 20 0 16 17 1 16 21 1
		 17 18 1 17 22 1 18 19 1 18 23 1 19 24 0 20 21 0 21 22 0 22 23 0 23 24 0 0 25 0 5 26 0
		 25 26 0 10 27 0 26 27 0 15 28 0 27 28 0 20 29 0 28 29 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 3 -10 -2
		mu 0 4 0 1 6 5
		f 4 2 5 -12 -4
		mu 0 4 1 2 7 6
		f 4 4 7 -14 -6
		mu 0 4 2 3 8 7
		f 4 6 8 -16 -8
		mu 0 4 3 4 9 8
		f 4 9 12 -19 -11
		mu 0 4 5 6 11 10
		f 4 11 14 -21 -13
		mu 0 4 6 7 12 11
		f 4 13 16 -23 -15
		mu 0 4 7 8 13 12
		f 4 15 17 -25 -17
		mu 0 4 8 9 14 13
		f 4 18 21 -28 -20
		mu 0 4 10 11 16 15
		f 4 20 23 -30 -22
		mu 0 4 11 12 17 16
		f 4 22 25 -32 -24
		mu 0 4 12 13 18 17
		f 4 24 26 -34 -26
		mu 0 4 13 14 19 18
		f 4 27 30 -37 -29
		mu 0 4 15 16 21 20
		f 4 29 32 -38 -31
		mu 0 4 16 17 22 21
		f 4 31 34 -39 -33
		mu 0 4 17 18 23 22
		f 4 33 35 -40 -35
		mu 0 4 18 19 24 23
		f 4 1 41 -43 -41
		mu 0 4 25 26 27 28
		f 4 10 43 -45 -42
		mu 0 4 29 30 31 32
		f 4 19 45 -47 -44
		mu 0 4 33 34 35 36
		f 4 28 47 -49 -46
		mu 0 4 37 38 39 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane3" -p "Planta";
	rename -uid "1C3F520C-4435-77CE-02B3-599DB82A2463";
	setAttr ".t" -type "double3" -0.18435014607476749 -0.017546754868310366 0.001837300360241656 ;
	setAttr ".r" -type "double3" 4.102968025367562 10.087964167051632 -11.64508117117267 ;
	setAttr ".rp" -type "double3" -0.13237112760543823 5.5147106647491455 -1.4702681601047516 ;
	setAttr ".sp" -type "double3" -0.13237112760543823 5.5147106647491455 -1.4702681601047516 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "1C2520FD-46C3-A128-DE91-418B4BBBA6C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "pPlane3";
	rename -uid "943E1A6C-4261-6BB6-2B8E-62822EFCFA4E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0 0 0.25 0 0.5 0
		 0.75 0 1 0 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 1 0.25 1 0.5 1 0.75 1 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  0.33046678 0.15332882 -0.49664843 
		0.63119078 0.05020678 -1.0065675 0.90999317 -0.25125897 -1.8380468 0.86783123 -0.5173896 
		-2.2316513 0.79765129 -0.69703507 -2.4632101 0.051178113 0.13500862 -0.49043924 0.31774184 
		-0.023934275 -1.3126289 0.39415187 -0.29103962 -1.9363077 0.35110492 -0.54565549 
		-2.3312728 0.16822053 -1.0138001 -2.9347 -0.22811016 0.11668838 -0.48423019 -0.18688419 
		-0.024703056 -1.3097261 -0.10834239 -0.28178254 -1.9404001 -0.14273679 -0.51534158 
		-2.3553863 -0.41572493 -1.2141317 -3.2561111 -0.50739855 0.098368287 -0.4780212 -0.6915102 
		-0.025471836 -1.3068235 -0.61083657 -0.27252543 -1.9444926 -0.6365785 -0.48502791 
		-2.3794994 -0.81946272 -0.95317209 -2.9829266 -0.78668702 0.080048069 -0.47181201 
		-0.96159053 0.047780007 -0.99740559 -1.0999835 -0.21423027 -1.8544166 -1.1075352 
		-0.39613363 -2.3281047 -1.1777152 -0.5757792 -2.5596633 -0.081244476 -0.038918152 
		0.10422563 -0.12454741 -0.043948427 0.10502702 -0.16785032 -0.048978675 0.10582829 
		-0.21115321 -0.054008927 0.10662957 -0.25445616 -0.059039198 0.10743096;
	setAttr -s 30 ".vt[0:29]"  -0.45356494 6.045112133 -0.41135645 -0.50458258 6.045112133 -0.18801041
		 -0.49411124 6.045112133 0.18336496 -0.41642165 6.045112133 0.42098719 -0.35856372 6.045112133 0.59795219
		 -0.32209015 6.045112133 -0.45434159 -0.31531182 6.045112133 -0.074240819 -0.23762225 6.045112133 0.16338143
		 -0.15993267 6.045112133 0.40100366 -0.0091586709 6.045112133 0.86216295 -0.19061539 6.045112133 -0.49732667
		 -0.077689566 6.045112133 -0.15193039 0 6.045112133 0.085691854 0.077689566 6.045112133 0.3233141
		 0.30274719 6.045112133 1.0116781 -0.059140608 6.045112133 -0.54031175 0.15993267 6.045112133 -0.22961996
		 0.23762225 6.045112133 0.0080022886 0.31531182 6.045112133 0.24562453 0.46608582 6.045112133 0.70678377
		 0.07233417 6.045112133 -0.5832969 0.24543868 6.045112133 -0.43322659 0.45637774 6.045112133 -0.12739332
		 0.53406733 6.045112133 0.11022893 0.59192526 6.045112133 0.28719392 -0.32487431 6.045112133 -0.76861912
		 -0.30429372 6.045112133 -0.77534789 -0.28371313 6.045112133 -0.7820766 -0.26313254 6.045112133 -0.78880531
		 -0.24255194 6.045112133 -0.79553407;
	setAttr -s 49 ".ed[0:48]"  0 1 0 0 5 0 1 2 0 1 6 1 2 3 0 2 7 1 3 4 0
		 3 8 1 4 9 0 5 6 1 5 10 0 6 7 1 6 11 1 7 8 1 7 12 1 8 9 1 8 13 1 9 14 0 10 11 1 10 15 0
		 11 12 1 11 16 1 12 13 1 12 17 1 13 14 1 13 18 1 14 19 0 15 16 1 15 20 0 16 17 1 16 21 1
		 17 18 1 17 22 1 18 19 1 18 23 1 19 24 0 20 21 0 21 22 0 22 23 0 23 24 0 0 25 0 5 26 0
		 25 26 0 10 27 0 26 27 0 15 28 0 27 28 0 20 29 0 28 29 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 3 -10 -2
		mu 0 4 0 1 6 5
		f 4 2 5 -12 -4
		mu 0 4 1 2 7 6
		f 4 4 7 -14 -6
		mu 0 4 2 3 8 7
		f 4 6 8 -16 -8
		mu 0 4 3 4 9 8
		f 4 9 12 -19 -11
		mu 0 4 5 6 11 10
		f 4 11 14 -21 -13
		mu 0 4 6 7 12 11
		f 4 13 16 -23 -15
		mu 0 4 7 8 13 12
		f 4 15 17 -25 -17
		mu 0 4 8 9 14 13
		f 4 18 21 -28 -20
		mu 0 4 10 11 16 15
		f 4 20 23 -30 -22
		mu 0 4 11 12 17 16
		f 4 22 25 -32 -24
		mu 0 4 12 13 18 17
		f 4 24 26 -34 -26
		mu 0 4 13 14 19 18
		f 4 27 30 -37 -29
		mu 0 4 15 16 21 20
		f 4 29 32 -38 -31
		mu 0 4 16 17 22 21
		f 4 31 34 -39 -33
		mu 0 4 17 18 23 22
		f 4 33 35 -40 -35
		mu 0 4 18 19 24 23
		f 4 1 41 -43 -41
		mu 0 4 25 26 27 28
		f 4 10 43 -45 -42
		mu 0 4 29 30 31 32
		f 4 19 45 -47 -44
		mu 0 4 33 34 35 36
		f 4 28 47 -49 -46
		mu 0 4 37 38 39 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane4" -p "Planta";
	rename -uid "D0B16059-44B8-F06D-7219-49A123D6A817";
	setAttr ".t" -type "double3" -0.17177475703614464 0.045125801458002712 -0.056647899042776007 ;
	setAttr ".r" -type "double3" 13.204016329552347 -0.50014998867963956 4.5034764290742748 ;
	setAttr ".rp" -type "double3" -0.84257315099239349 5.3036389350891113 -0.86511366069316864 ;
	setAttr ".sp" -type "double3" -0.84257315099239349 5.3036389350891113 -0.86511366069316864 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "AF5718AD-41BE-912A-E1D1-658C8248963D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape3" -p "pPlane4";
	rename -uid "D71D1CE5-40C1-F6F8-2525-95A24A4FD33E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0 0 0.25 0 0.5 0
		 0.75 0 1 0 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 1 0.25 1 0.5 1 0.75 1 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  0.065261245 -0.051293641 
		-0.5398224 -0.18234414 -0.22009745 -0.95425153 -0.64685208 -0.60130131 -1.5118196 
		-0.85694432 -0.87806225 -1.7289081 -0.95083022 -1.0544444 -1.8616095 -0.081338331 
		-0.041472979 -0.36627477 -0.53463978 -0.27906981 -0.94529665 -0.9808985 -0.59479713 
		-1.2605978 -1.1931427 -0.86020845 -1.4790196 -1.4378033 -1.319849 -1.8248305 -0.22793786 
		-0.03165241 -0.19272736 -0.81030035 -0.23024887 -0.63757396 -1.2643872 -0.53703535 
		-0.95644218 -1.4987258 -0.7848388 -1.185859 -1.8639266 -1.4709351 -1.7020446 -0.37453747 
		-0.021831686 -0.01917994 -1.0859609 -0.1814279 -0.32985121 -1.5478759 -0.47927359 
		-0.65228635 -1.8043088 -0.70946944 -0.89269817 -2.0489697 -1.1691096 -1.2385092 -0.521137 
		-0.012011061 0.1543676 -1.0524278 -0.066001132 0.017032057 -1.780807 -0.37025395 
		-0.29519692 -2.079277 -0.57658362 -0.55626535 -2.1731632 -0.75296581 -0.68896663 
		0.22261196 -0.16700339 0.091831878 0.19962654 -0.16767409 0.11904084 0.17664108 -0.1683448 
		0.14624971 0.15365559 -0.1690155 0.17345859 0.13067016 -0.1696862 0.20066756;
	setAttr -s 30 ".vt[0:29]"  -0.45356494 6.045112133 -0.41135645 -0.50458258 6.045112133 -0.18801041
		 -0.49411124 6.045112133 0.18336496 -0.41642165 6.045112133 0.42098719 -0.35856372 6.045112133 0.59795219
		 -0.32209015 6.045112133 -0.45434159 -0.31531182 6.045112133 -0.074240819 -0.23762225 6.045112133 0.16338143
		 -0.15993267 6.045112133 0.40100366 -0.0091586709 6.045112133 0.86216295 -0.19061539 6.045112133 -0.49732667
		 -0.077689566 6.045112133 -0.15193039 0 6.045112133 0.085691854 0.077689566 6.045112133 0.3233141
		 0.30274719 6.045112133 1.0116781 -0.059140608 6.045112133 -0.54031175 0.15993267 6.045112133 -0.22961996
		 0.23762225 6.045112133 0.0080022886 0.31531182 6.045112133 0.24562453 0.46608582 6.045112133 0.70678377
		 0.07233417 6.045112133 -0.5832969 0.24543868 6.045112133 -0.43322659 0.45637774 6.045112133 -0.12739332
		 0.53406733 6.045112133 0.11022893 0.59192526 6.045112133 0.28719392 -0.32487431 6.045112133 -0.76861912
		 -0.30429372 6.045112133 -0.77534789 -0.28371313 6.045112133 -0.7820766 -0.26313254 6.045112133 -0.78880531
		 -0.24255194 6.045112133 -0.79553407;
	setAttr -s 49 ".ed[0:48]"  0 1 0 0 5 0 1 2 0 1 6 1 2 3 0 2 7 1 3 4 0
		 3 8 1 4 9 0 5 6 1 5 10 0 6 7 1 6 11 1 7 8 1 7 12 1 8 9 1 8 13 1 9 14 0 10 11 1 10 15 0
		 11 12 1 11 16 1 12 13 1 12 17 1 13 14 1 13 18 1 14 19 0 15 16 1 15 20 0 16 17 1 16 21 1
		 17 18 1 17 22 1 18 19 1 18 23 1 19 24 0 20 21 0 21 22 0 22 23 0 23 24 0 0 25 0 5 26 0
		 25 26 0 10 27 0 26 27 0 15 28 0 27 28 0 20 29 0 28 29 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 3 -10 -2
		mu 0 4 0 1 6 5
		f 4 2 5 -12 -4
		mu 0 4 1 2 7 6
		f 4 4 7 -14 -6
		mu 0 4 2 3 8 7
		f 4 6 8 -16 -8
		mu 0 4 3 4 9 8
		f 4 9 12 -19 -11
		mu 0 4 5 6 11 10
		f 4 11 14 -21 -13
		mu 0 4 6 7 12 11
		f 4 13 16 -23 -15
		mu 0 4 7 8 13 12
		f 4 15 17 -25 -17
		mu 0 4 8 9 14 13
		f 4 18 21 -28 -20
		mu 0 4 10 11 16 15
		f 4 20 23 -30 -22
		mu 0 4 11 12 17 16
		f 4 22 25 -32 -24
		mu 0 4 12 13 18 17
		f 4 24 26 -34 -26
		mu 0 4 13 14 19 18
		f 4 27 30 -37 -29
		mu 0 4 15 16 21 20
		f 4 29 32 -38 -31
		mu 0 4 16 17 22 21
		f 4 31 34 -39 -33
		mu 0 4 17 18 23 22
		f 4 33 35 -40 -35
		mu 0 4 18 19 24 23
		f 4 1 41 -43 -41
		mu 0 4 25 26 27 28
		f 4 10 43 -45 -42
		mu 0 4 29 30 31 32
		f 4 19 45 -47 -44
		mu 0 4 33 34 35 36
		f 4 28 47 -49 -46
		mu 0 4 37 38 39 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane1" -p "Planta";
	rename -uid "D2433B83-473C-299A-80D7-2CA44AE95410";
	setAttr ".t" -type "double3" -0.084867564791984457 0.062581186366759134 0.076998092026304171 ;
	setAttr ".r" -type "double3" -10.046593804556238 -8.062213172748578 1.4233451090303006 ;
	setAttr ".s" -type "double3" 0.94767542399694804 1 1 ;
	setAttr ".rp" -type "double3" -0.14293058216571808 5.225419282913208 -0.05449676513671875 ;
	setAttr ".sp" -type "double3" -0.14293058216571808 5.225419282913208 -0.05449676513671875 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "2E9ACAB8-4F2B-97C4-88F8-8DBC309C70AC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape4" -p "pPlane1";
	rename -uid "11FF505D-4757-1136-8A2C-5A9372407E0D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0 0 0.25 0 0.5 0
		 0.75 0 1 0 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 1 0.25 1 0.5 1 0.75 1 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  -0.18680707 -0.05844396 0.16737361 
		-0.18680707 -0.28379592 0.26193035 -0.17869698 -0.74372053 0.30803865 -0.18398848 
		-1.0370864 0.13188076 -0.18792924 -1.2144716 -0.062161639 -0.18680707 -0.04452537 
		0.16968942 -0.18680707 -0.36241981 0.23039094 -0.17959888 -0.73816347 0.29920721 
		-0.18489037 -1.0207738 0.12746996 -0.19515975 -1.4830283 -0.37819231 -0.18680707 
		-0.030606888 0.17200521 -0.18680707 -0.30873013 0.25192818 -0.17921576 -0.67714179 
		0.33074707 -0.18450727 -0.94661826 0.18633372 -0.19983613 -1.6366165 -0.56845844 
		-0.18680707 -0.01668825 0.17432098 -0.18680707 -0.25504044 0.27346539 -0.17883264 
		-0.6161201 0.36228698 -0.18412416 -0.87246299 0.24519733 -0.1943935 -1.3347172 -0.26046452 
		-0.18680707 -0.0027697012 0.1766368 -0.18680707 -0.11433211 0.3299095 -0.17716448 
		-0.49963358 0.43419841 -0.18245599 -0.74046427 0.36733609 -0.18639675 -0.91784954 
		0.17329359 -0.18680707 -0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726 -0.18680707 
		-0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726;
	setAttr -s 30 ".vt[0:29]"  -0.45356494 6.045112133 -0.41135645 -0.50458258 6.045112133 -0.18801041
		 -0.49411124 6.045112133 0.18336496 -0.41642165 6.045112133 0.42098719 -0.35856372 6.045112133 0.59795219
		 -0.32209015 6.045112133 -0.45434159 -0.31531182 6.045112133 -0.074240819 -0.23762225 6.045112133 0.16338143
		 -0.15993267 6.045112133 0.40100366 -0.0091586709 6.045112133 0.86216295 -0.19061539 6.045112133 -0.49732667
		 -0.077689566 6.045112133 -0.15193039 0 6.045112133 0.085691854 0.077689566 6.045112133 0.3233141
		 0.30274719 6.045112133 1.0116781 -0.059140608 6.045112133 -0.54031175 0.15993267 6.045112133 -0.22961996
		 0.23762225 6.045112133 0.0080022886 0.31531182 6.045112133 0.24562453 0.46608582 6.045112133 0.70678377
		 0.07233417 6.045112133 -0.5832969 0.24543868 6.045112133 -0.43322659 0.45637774 6.045112133 -0.12739332
		 0.53406733 6.045112133 0.11022893 0.59192526 6.045112133 0.28719392 -0.32487431 6.045112133 -0.76861912
		 -0.30429372 6.045112133 -0.77534789 -0.28371313 6.045112133 -0.7820766 -0.26313254 6.045112133 -0.78880531
		 -0.24255194 6.045112133 -0.79553407;
	setAttr -s 49 ".ed[0:48]"  0 1 0 0 5 0 1 2 0 1 6 1 2 3 0 2 7 1 3 4 0
		 3 8 1 4 9 0 5 6 1 5 10 0 6 7 1 6 11 1 7 8 1 7 12 1 8 9 1 8 13 1 9 14 0 10 11 1 10 15 0
		 11 12 1 11 16 1 12 13 1 12 17 1 13 14 1 13 18 1 14 19 0 15 16 1 15 20 0 16 17 1 16 21 1
		 17 18 1 17 22 1 18 19 1 18 23 1 19 24 0 20 21 0 21 22 0 22 23 0 23 24 0 0 25 0 5 26 0
		 25 26 0 10 27 0 26 27 0 15 28 0 27 28 0 20 29 0 28 29 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 3 -10 -2
		mu 0 4 0 1 6 5
		f 4 2 5 -12 -4
		mu 0 4 1 2 7 6
		f 4 4 7 -14 -6
		mu 0 4 2 3 8 7
		f 4 6 8 -16 -8
		mu 0 4 3 4 9 8
		f 4 9 12 -19 -11
		mu 0 4 5 6 11 10
		f 4 11 14 -21 -13
		mu 0 4 6 7 12 11
		f 4 13 16 -23 -15
		mu 0 4 7 8 13 12
		f 4 15 17 -25 -17
		mu 0 4 8 9 14 13
		f 4 18 21 -28 -20
		mu 0 4 10 11 16 15
		f 4 20 23 -30 -22
		mu 0 4 11 12 17 16
		f 4 22 25 -32 -24
		mu 0 4 12 13 18 17
		f 4 24 26 -34 -26
		mu 0 4 13 14 19 18
		f 4 27 30 -37 -29
		mu 0 4 15 16 21 20
		f 4 29 32 -38 -31
		mu 0 4 16 17 22 21
		f 4 31 34 -39 -33
		mu 0 4 17 18 23 22
		f 4 33 35 -40 -35
		mu 0 4 18 19 24 23
		f 4 1 41 -43 -41
		mu 0 4 25 26 27 28
		f 4 10 43 -45 -42
		mu 0 4 29 30 31 32
		f 4 19 45 -47 -44
		mu 0 4 33 34 35 36
		f 4 28 47 -49 -46
		mu 0 4 37 38 39 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "sweep1" -p "Planta";
	rename -uid "55F011F8-4BC3-DFAE-986C-FC84B15FBC30";
	setAttr ".rp" -type "double3" -0.43183296918869019 3.2393643856048584 -5.9604644775390625e-08 ;
	setAttr ".sp" -type "double3" -0.43183296918869019 3.2393643856048584 -5.9604644775390625e-08 ;
createNode mesh -n "sweepShape1" -p "sweep1";
	rename -uid "5C7DBCE0-46D5-E807-5D57-4BB88752FB20";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 218 ".uvst[0].uvsp[0:217]" -type "float2" 0 0 0.016075093 0
		 0.032150183 0 0.048225269 0 0.064300351 0 0.08037544 0 0.096450537 0 0.11252563 0
		 0.1286007 0 0.14467579 0 0.16075088 0 0.17682596 0 0.19290105 0 0 0.078542806 0.016075093
		 0.078542806 0.032150183 0.078542806 0.048225269 0.078542806 0.064300351 0.078542806
		 0.08037544 0.078542806 0.096450537 0.078542806 0.11252563 0.078542806 0.1286007 0.078542806
		 0.14467579 0.078542806 0.16075088 0.078542806 0.17682596 0.078542806 0.19290105 0.078542806
		 0 0.15706186 0.016075093 0.15706186 0.032150183 0.15706186 0.048225269 0.15706186
		 0.064300351 0.15706186 0.08037544 0.15706186 0.096450537 0.15706186 0.11252563 0.15706186
		 0.1286007 0.15706186 0.14467579 0.15706186 0.16075088 0.15706186 0.17682596 0.15706186
		 0.19290105 0.15706186 0 0.23559253 0.016075093 0.23559253 0.032150183 0.23559253
		 0.048225269 0.23559253 0.064300351 0.23559253 0.08037544 0.23559253 0.096450537 0.23559253
		 0.11252563 0.23559253 0.1286007 0.23559253 0.14467579 0.23559253 0.16075088 0.23559253
		 0.17682596 0.23559253 0.19290105 0.23559253 0 0.31403527 0.016075093 0.31403527 0.032150183
		 0.31403527 0.048225269 0.31403527 0.064300351 0.31403527 0.08037544 0.31403527 0.096450537
		 0.31403527 0.11252563 0.31403527 0.1286007 0.31403527 0.14467579 0.31403527 0.16075088
		 0.31403527 0.17682596 0.31403527 0.19290105 0.31403527 0 0.39251924 0.016075093 0.39251924
		 0.032150183 0.39251924 0.048225269 0.39251924 0.064300351 0.39251924 0.08037544 0.39251924
		 0.096450537 0.39251924 0.11252563 0.39251924 0.1286007 0.39251924 0.14467579 0.39251924
		 0.16075088 0.39251924 0.17682596 0.39251924 0.19290105 0.39251924 0 0.47097805 0.016075093
		 0.47097805 0.032150183 0.47097805 0.048225269 0.47097805 0.064300351 0.47097805 0.08037544
		 0.47097805 0.096450537 0.47097805 0.11252563 0.47097805 0.1286007 0.47097805 0.14467579
		 0.47097805 0.16075088 0.47097805 0.17682596 0.47097805 0.19290105 0.47097805 0 0.54661989
		 0.016075093 0.54661989 0.032150183 0.54661989 0.048225269 0.54661989 0.064300351
		 0.54661989 0.08037544 0.54661989 0.096450537 0.54661989 0.11252563 0.54661989 0.1286007
		 0.54661989 0.14467579 0.54661989 0.16075088 0.54661989 0.17682596 0.54661989 0.19290105
		 0.54661989 0 0.62219971 0.016075093 0.62219971 0.032150183 0.62219971 0.048225269
		 0.62219971 0.064300351 0.62219971 0.08037544 0.62219971 0.096450537 0.62219971 0.11252563
		 0.62219971 0.1286007 0.62219971 0.14467579 0.62219971 0.16075088 0.62219971 0.17682596
		 0.62219971 0.19290105 0.62219971 0 0.69779164 0.016075093 0.69779164 0.032150183
		 0.69779164 0.048225269 0.69779164 0.064300351 0.69779164 0.08037544 0.69779164 0.096450537
		 0.69779164 0.11252563 0.69779164 0.1286007 0.69779164 0.14467579 0.69779164 0.16075088
		 0.69779164 0.17682596 0.69779164 0.19290105 0.69779164 0 0.77310538 0.016075093 0.77310538
		 0.032150183 0.77310538 0.048225269 0.77310538 0.064300351 0.77310538 0.08037544 0.77310538
		 0.096450537 0.77310538 0.11252563 0.77310538 0.1286007 0.77310538 0.14467579 0.77310538
		 0.16075088 0.77310538 0.17682596 0.77310538 0.19290105 0.77310538 0 0.84838688 0.016075093
		 0.84838688 0.032150183 0.84838688 0.048225269 0.84838688 0.064300351 0.84838688 0.08037544
		 0.84838688 0.096450537 0.84838688 0.11252563 0.84838688 0.1286007 0.84838688 0.14467579
		 0.84838688 0.16075088 0.84838688 0.17682596 0.84838688 0.19290105 0.84838688 0 0.92421246
		 0.016075093 0.92421246 0.032150183 0.92421246 0.048225269 0.92421246 0.064300351
		 0.92421246 0.08037544 0.92421246 0.096450537 0.92421246 0.11252563 0.92421246 0.1286007
		 0.92421246 0.14467579 0.92421246 0.16075088 0.92421246 0.17682596 0.92421246 0.19290105
		 0.92421246 0 1 0.016075093 1 0.032150183 1 0.048225269 1 0.064300351 1 0.08037544
		 1 0.096450537 1 0.11252563 1 0.1286007 1 0.14467579 1 0.16075088 1 0.17682596 1 0.19290105
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 61 ".pt";
	setAttr ".pt[0]" -type "float3" -0.021624513 -0.28430367 -0.012924832 ;
	setAttr ".pt[1]" -type "float3" -0.018727496 -0.28055796 -0.023067757 ;
	setAttr ".pt[2]" -type "float3" -0.010812271 -0.27781647 -0.030492797 ;
	setAttr ".pt[3]" -type "float3" 1.4551869e-08 -0.27681288 -0.033210628 ;
	setAttr ".pt[4]" -type "float3" 0.010812234 -0.27781636 -0.030492827 ;
	setAttr ".pt[5]" -type "float3" 0.018727407 -0.28055805 -0.02306778 ;
	setAttr ".pt[6]" -type "float3" 0.021624506 -0.28430358 -0.012924832 ;
	setAttr ".pt[7]" -type "float3" 0.018727481 -0.28804862 -0.0027819127 ;
	setAttr ".pt[8]" -type "float3" 0.010812271 -0.29079002 0.0046432912 ;
	setAttr ".pt[9]" -type "float3" 1.4551869e-08 -0.29179356 0.0073610097 ;
	setAttr ".pt[10]" -type "float3" -0.010812271 -0.29079008 0.0046432912 ;
	setAttr ".pt[11]" -type "float3" -0.018727496 -0.28804854 -0.0027819127 ;
	setAttr ".pt[12]" -type "float3" -0.020257095 -0.26029718 0.0033906237 ;
	setAttr ".pt[13]" -type "float3" -0.01754313 -0.2578063 -0.006426868 ;
	setAttr ".pt[14]" -type "float3" -0.010128553 -0.25598288 -0.013613771 ;
	setAttr ".pt[15]" -type "float3" 1.4551878e-08 -0.25531557 -0.016244395 ;
	setAttr ".pt[16]" -type "float3" 0.01012855 -0.25598291 -0.013613773 ;
	setAttr ".pt[17]" -type "float3" 0.01754318 -0.25780633 -0.0064268662 ;
	setAttr ".pt[18]" -type "float3" 0.020257112 -0.26029718 0.00339063 ;
	setAttr ".pt[19]" -type "float3" 0.01754318 -0.26278794 0.013208133 ;
	setAttr ".pt[20]" -type "float3" 0.010128551 -0.26461139 0.020395052 ;
	setAttr ".pt[21]" -type "float3" 1.4551878e-08 -0.2652787 0.023025649 ;
	setAttr ".pt[22]" -type "float3" -0.010128553 -0.26461139 0.020395055 ;
	setAttr ".pt[23]" -type "float3" -0.01754313 -0.26278791 0.013208129 ;
	setAttr ".pt[24]" -type "float3" -0.018889628 -0.20657533 0.013466995 ;
	setAttr ".pt[25]" -type "float3" -0.016358901 -0.20546533 0.0040876055 ;
	setAttr ".pt[26]" -type "float3" -0.0094448123 -0.20465279 -0.0027785792 ;
	setAttr ".pt[27]" -type "float3" 1.4551878e-08 -0.20435536 -0.0052917767 ;
	setAttr ".pt[28]" -type "float3" 0.0094448319 -0.20465279 -0.0027785792 ;
	setAttr ".pt[29]" -type "float3" 0.016358914 -0.20546533 0.0040875981 ;
	setAttr ".pt[30]" -type "float3" 0.01888964 -0.20657533 0.013466991 ;
	setAttr ".pt[31]" -type "float3" 0.01635891 -0.20768532 0.022846341 ;
	setAttr ".pt[32]" -type "float3" 0.0094448319 -0.20849784 0.029712487 ;
	setAttr ".pt[33]" -type "float3" 1.4551878e-08 -0.20879526 0.032225702 ;
	setAttr ".pt[34]" -type "float3" -0.0094448123 -0.20849784 0.029712502 ;
	setAttr ".pt[35]" -type "float3" -0.016358901 -0.20768532 0.022846311 ;
	setAttr ".pt[36]" -type "float3" -0.017522214 -0.15195438 0.015702737 ;
	setAttr ".pt[37]" -type "float3" -0.015174668 -0.15230797 0.0069487877 ;
	setAttr ".pt[38]" -type "float3" -0.0087611079 -0.15256681 0.00054042932 ;
	setAttr ".pt[39]" -type "float3" 1.4551878e-08 -0.15266165 -0.0018051802 ;
	setAttr ".pt[40]" -type "float3" 0.0087611061 -0.15256681 0.00054043572 ;
	setAttr ".pt[41]" -type "float3" 0.015174687 -0.15230794 0.0069487859 ;
	setAttr ".pt[42]" -type "float3" 0.01752222 -0.15195434 0.015702736 ;
	setAttr ".pt[43]" -type "float3" 0.015174687 -0.15160072 0.024456736 ;
	setAttr ".pt[44]" -type "float3" 0.0087611107 -0.15134187 0.030865043 ;
	setAttr ".pt[45]" -type "float3" 1.4551878e-08 -0.15124711 0.033210654 ;
	setAttr ".pt[46]" -type "float3" -0.0087610986 -0.15134187 0.030865069 ;
	setAttr ".pt[47]" -type "float3" -0.015174681 -0.15160078 0.024456691 ;
	setAttr ".pt[48]" -type "float3" -0.016154734 -0.097800776 0.0086919777 ;
	setAttr ".pt[49]" -type "float3" -0.013990415 -0.099558532 0.00080818735 ;
	setAttr ".pt[50]" -type "float3" -0.0080773672 -0.10084552 -0.0049631381 ;
	setAttr ".pt[51]" -type "float3" 1.4551878e-08 -0.10131647 -0.0070755905 ;
	setAttr ".pt[52]" -type "float3" 0.0080773886 -0.10084552 -0.0049631475 ;
	setAttr ".pt[53]" -type "float3" 0.013990445 -0.099558607 0.00080818142 ;
	setAttr ".pt[54]" -type "float3" 0.016154753 -0.097800694 0.0086919758 ;
	setAttr ".pt[55]" -type "float3" 0.013990443 -0.096043035 0.016575748 ;
	setAttr ".pt[56]" -type "float3" 0.0080773719 -0.094756208 0.0223471 ;
	setAttr ".pt[57]" -type "float3" 1.4551878e-08 -0.09428519 0.0244595 ;
	setAttr ".pt[58]" -type "float3" -0.0080773672 -0.094756186 0.022347091 ;
	setAttr ".pt[59]" -type "float3" -0.013990415 -0.096043035 0.016575728 ;
	setAttr ".pt[168]" -type "float3" 7.8903317e-10 -0.31248128 -0.012924841 ;
	setAttr -s 169 ".vt";
	setAttr ".vt[0:165]"  -0.21740985 6.29902554 -0.60537112 -0.24613714 6.26189041 -0.50479656
		 -0.32462144 6.23470449 -0.43117079 -0.43183303 6.22475386 -0.40422216 -0.53904462 6.23470449 -0.43117079
		 -0.61752892 6.26189041 -0.50479656 -0.64625609 6.29902554 -0.60537112 -0.6175288 6.33616209 -0.70594561
		 -0.5390445 6.36334753 -0.77957129 -0.43183303 6.37329817 -0.8065201 -0.32462144 6.36334753 -0.77957129
		 -0.24613714 6.33616209 -0.70594561 -0.23096907 5.78158236 -0.76715088 -0.25787973 5.75688362 -0.66980326
		 -0.33140099 5.73880339 -0.59853977 -0.43183303 5.73218536 -0.57245553 -0.53226507 5.73880339 -0.59853971
		 -0.60578632 5.75688362 -0.66980326 -0.63269699 5.78158236 -0.76715094 -0.60578632 5.80628014 -0.86449873
		 -0.53226501 5.82436037 -0.93576217 -0.43183303 5.83097792 -0.96184647 -0.33140099 5.82436037 -0.93576223
		 -0.25787973 5.80628014 -0.86449873 -0.24452829 5.24889088 -0.86706543 -0.26962233 5.23788452 -0.77406192
		 -0.33818066 5.2298274 -0.70597869 -0.43183303 5.22687817 -0.68105847 -0.5254854 5.2298274 -0.70597869
		 -0.59404373 5.23788452 -0.77406186 -0.61913776 5.24889088 -0.86706543 -0.59404367 5.25989723 -0.96006858
		 -0.5254854 5.26795387 -1.02815187 -0.43183303 5.27090311 -1.053072095 -0.33818066 5.26795387 -1.02815187
		 -0.26962233 5.25989723 -0.96006846 -0.25808752 4.7072835 -0.88923454 -0.28136504 4.71079016 -0.80243266
		 -0.34496021 4.71335697 -0.7388891 -0.43183303 4.71429682 -0.71563065 -0.51870584 4.71335697 -0.73888916
		 -0.58230102 4.71079016 -0.80243266 -0.60557854 4.7072835 -0.88923466 -0.58230102 4.70377684 -0.97603655
		 -0.51870573 4.70121002 -1.039579988 -0.43183303 4.70027065 -1.062838554 -0.34496027 4.70121002 -1.039579988
		 -0.28136492 4.70377684 -0.97603643 -0.27164674 4.17031145 -0.81971753 -0.29310763 4.18774176 -0.74154413
		 -0.35173988 4.20050144 -0.68431717 -0.43183303 4.20517206 -0.66337061 -0.51192617 4.20050144 -0.68431711
		 -0.57055843 4.18774176 -0.74154407 -0.59201932 4.17031145 -0.81971759 -0.57055837 4.15288115 -0.89789116
		 -0.51192611 4.14012146 -0.95511806 -0.43183303 4.13545084 -0.97606456 -0.35173988 4.14012146 -0.955118
		 -0.29310763 4.15288115 -0.89789099 -0.28520596 3.65446329 -0.65424645 -0.30485022 3.68294382 -0.58669096
		 -0.35851955 3.70379305 -0.53723705 -0.43183303 3.71142435 -0.51913571 -0.50514662 3.70379305 -0.53723705
		 -0.55881572 3.68294382 -0.58669102 -0.5784601 3.65446329 -0.65424639 -0.55881572 3.62598228 -0.7218017
		 -0.5051465 3.60513306 -0.77125561 -0.43183303 3.59750175 -0.78935707 -0.35851955 3.60513306 -0.77125561
		 -0.30485022 3.62598276 -0.72180158 -0.29876518 3.17292023 -0.40643877 -0.31659293 3.20714545 -0.34938261
		 -0.36529922 3.23220015 -0.30761462 -0.43183303 3.24137068 -0.29232645 -0.49836683 3.23220015 -0.30761462
		 -0.54707313 3.20714545 -0.34938261 -0.56490088 3.17292023 -0.4064388 -0.54707313 3.13869524 -0.46349496
		 -0.49836695 3.11364079 -0.50526297 -0.43183303 3.10447001 -0.52055103 -0.36529922 3.11364079 -0.50526297
		 -0.31659293 3.13869524 -0.46349487 -0.3118186 2.74055314 -0.11374679 -0.32789755 2.77719045 -0.06622231
		 -0.37182593 2.80401087 -0.031432077 -0.43183303 2.81382775 -0.018697903 -0.49184012 2.80401087 -0.031432085
		 -0.53576851 2.77719045 -0.06622231 -0.55184746 2.74055314 -0.11374681 -0.53576851 2.7039156 -0.1612711
		 -0.49184012 2.67709517 -0.19606133 -0.43183303 2.66727829 -0.20879541 -0.37182593 2.67709517 -0.19606133
		 -0.32789755 2.7039156 -0.1612711 -0.32487202 2.34979796 0.23190248 -0.33920193 2.38752699 0.26980618
		 -0.37835264 2.41514635 0.29755375 -0.43183279 2.42525578 0.30771008 -0.48531342 2.41514635 0.29755372
		 -0.52446389 2.38752699 0.26980618 -0.53879404 2.34979796 0.23190248 -0.52446389 2.31206942 0.19399858
		 -0.48531342 2.28445005 0.16625102 -0.43183303 2.27434063 0.15609467 -0.37835264 2.28445005 0.166251
		 -0.33920217 2.31206942 0.19399858 -0.33792543 1.97612453 0.59607005 -0.35050678 2.006742239 0.63166797
		 -0.38487911 2.029155731 0.65772742 -0.43183279 2.037359953 0.66726583 -0.47878695 2.029155731 0.65772742
		 -0.51315928 2.006742239 0.63166803 -0.52574062 1.97612453 0.59607005 -0.51315928 1.94550693 0.56047189
		 -0.47878695 1.9230932 0.53441262 -0.43183279 1.91488934 0.52487391 -0.38487911 1.9230932 0.53441268
		 -0.35050678 1.94550693 0.56047189 -0.35097885 1.54045498 0.87969142 -0.36181116 1.55676675 0.91668129
		 -0.39140606 1.56870782 0.9437601 -0.43183279 1.57307863 0.95367163 -0.47226 1.56870782 0.94376016
		 -0.5018549 1.55676675 0.91668129 -0.51268721 1.54045475 0.87969118 -0.5018549 1.5241431 0.84270114
		 -0.47226 1.51220202 0.81562251 -0.43183279 1.5078311 0.80571103 -0.39140606 1.51220202 0.81562251
		 -0.36181116 1.52414298 0.84270132 -0.36443233 1.033830643 0.99518269 -0.37355995 1.035061836 1.029049158
		 -0.39840841 1.036086082 1.053812504 -0.43232012 1.036628485 1.062838435 -0.4662075 1.036543608 1.053707719
		 -0.49099112 1.035854578 1.028867364 -0.50003004 1.034745693 0.9949733 -0.49090242 1.033513784 0.96110743
		 -0.46605396 1.032490015 0.93634391 -0.43214226 1.031947613 0.9273181 -0.39825487 1.03203249 0.93644845
		 -0.37347126 1.032721519 0.96128875 -0.40102673 0.51955104 0.90416056 -0.40901899 0.50937319 0.92937279
		 -0.42946196 0.50341058 0.9480719 -0.45687723 0.50326085 0.95524776 -0.48391914 0.50896358 0.94897747
		 -0.50334215 0.51899147 0.93094116 -0.50994158 0.53065705 0.90597177 -0.50194931 0.5408349 0.88075948
		 -0.48150635 0.54679751 0.86206031 -0.45409107 0.54694724 0.85488486 -0.42704916 0.54124427 0.86115503
		 -0.40762615 0.53121662 0.8791914 -0.50703573 0.12999701 0.57123166 -0.51506138 0.11425066 0.5836184
		 -0.53166771 0.1054306 0.59421182 -0.55240488 0.10589957 0.60017413 -0.57171631 0.11553264 0.59990698
		 -0.58442736 0.1317482 0.59348238 -0.58713245 0.15020132 0.58262187 -0.57910681 0.16594768 0.57023513
		 -0.56250048 0.17476821 0.55964136 -0.54176331 0.174299 0.55367905;
	setAttr ".vt[166:168]" -0.52245188 0.16466594 0.5539462 -0.50974035 0.14845037 0.56037074
		 -0.43183297 6.29902601 -0.60537106;
	setAttr -s 336 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 13 1 13 12 1 12 0 1 1 2 0 2 14 1 14 13 1 2 3 0
		 3 15 1 15 14 1 3 4 0 4 16 1 16 15 1 4 5 0 5 17 1 17 16 1 5 6 0 6 18 1 18 17 1 6 7 0
		 7 19 1 19 18 1 7 8 0 8 20 1 20 19 1 8 9 0 9 21 1 21 20 1 9 10 0 10 22 1 22 21 1 10 11 0
		 11 23 1 23 22 1 11 0 0 12 23 1 13 25 1 25 24 1 24 12 1 14 26 1 26 25 1 15 27 1 27 26 1
		 16 28 1 28 27 1 17 29 1 29 28 1 18 30 1 30 29 1 19 31 1 31 30 1 20 32 1 32 31 1 21 33 1
		 33 32 1 22 34 1 34 33 1 23 35 1 35 34 1 24 35 1 25 37 1 37 36 1 36 24 1 26 38 1 38 37 1
		 27 39 1 39 38 1 28 40 1 40 39 1 29 41 1 41 40 1 30 42 1 42 41 1 31 43 1 43 42 1 32 44 1
		 44 43 1 33 45 1 45 44 1 34 46 1 46 45 1 35 47 1 47 46 1 36 47 1 37 49 1 49 48 1 48 36 1
		 38 50 1 50 49 1 39 51 1 51 50 1 40 52 1 52 51 1 41 53 1 53 52 1 42 54 1 54 53 1 43 55 1
		 55 54 1 44 56 1 56 55 1 45 57 1 57 56 1 46 58 1 58 57 1 47 59 1 59 58 1 48 59 1 49 61 1
		 61 60 1 60 48 1 50 62 1 62 61 1 51 63 1 63 62 1 52 64 1 64 63 1 53 65 1 65 64 1 54 66 1
		 66 65 1 55 67 1 67 66 1 56 68 1 68 67 1 57 69 1 69 68 1 58 70 1 70 69 1 59 71 1 71 70 1
		 60 71 1 61 73 1 73 72 1 72 60 1 62 74 1 74 73 1 63 75 1 75 74 1 64 76 1 76 75 1 65 77 1
		 77 76 1 66 78 1 78 77 1 67 79 1 79 78 1 68 80 1 80 79 1 69 81 1 81 80 1 70 82 1 82 81 1
		 71 83 1 83 82 1 72 83 1 73 85 1 85 84 1 84 72 1 74 86 1 86 85 1 75 87 1 87 86 1 76 88 1
		 88 87 1 77 89 1;
	setAttr ".ed[166:331]" 89 88 1 78 90 1 90 89 1 79 91 1 91 90 1 80 92 1 92 91 1
		 81 93 1 93 92 1 82 94 1 94 93 1 83 95 1 95 94 1 84 95 1 85 97 1 97 96 1 96 84 1 86 98 1
		 98 97 1 87 99 1 99 98 1 88 100 1 100 99 1 89 101 1 101 100 1 90 102 1 102 101 1 91 103 1
		 103 102 1 92 104 1 104 103 1 93 105 1 105 104 1 94 106 1 106 105 1 95 107 1 107 106 1
		 96 107 1 97 109 1 109 108 1 108 96 1 98 110 1 110 109 1 99 111 1 111 110 1 100 112 1
		 112 111 1 101 113 1 113 112 1 102 114 1 114 113 1 103 115 1 115 114 1 104 116 1 116 115 1
		 105 117 1 117 116 1 106 118 1 118 117 1 107 119 1 119 118 1 108 119 1 109 121 1 121 120 1
		 120 108 1 110 122 1 122 121 1 111 123 1 123 122 1 112 124 1 124 123 1 113 125 1 125 124 1
		 114 126 1 126 125 1 115 127 1 127 126 1 116 128 1 128 127 1 117 129 1 129 128 1 118 130 1
		 130 129 1 119 131 1 131 130 1 120 131 1 121 133 1 133 132 1 132 120 1 122 134 1 134 133 1
		 123 135 1 135 134 1 124 136 1 136 135 1 125 137 1 137 136 1 126 138 1 138 137 1 127 139 1
		 139 138 1 128 140 1 140 139 1 129 141 1 141 140 1 130 142 1 142 141 1 131 143 1 143 142 1
		 132 143 1 133 145 1 145 144 1 144 132 1 134 146 1 146 145 1 135 147 1 147 146 1 136 148 1
		 148 147 1 137 149 1 149 148 1 138 150 1 150 149 1 139 151 1 151 150 1 140 152 1 152 151 1
		 141 153 1 153 152 1 142 154 1 154 153 1 143 155 1 155 154 1 144 155 1 145 157 1 157 156 0
		 156 144 1 146 158 1 158 157 0 147 159 1 159 158 0 148 160 1 160 159 0 149 161 1 161 160 0
		 150 162 1 162 161 0 151 163 1 163 162 0 152 164 1 164 163 0 153 165 1 165 164 0 154 166 1
		 166 165 0 155 167 1 167 166 0 156 167 0 0 168 0 1 168 0 2 168 0 3 168 0 4 168 0 5 168 0
		 6 168 0 7 168 0;
	setAttr ".ed[332:335]" 8 168 0 9 168 0 10 168 0 11 168 0;
	setAttr -s 168 -ch 660 ".fc[0:167]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 14 13
		f 4 4 5 6 -2
		mu 0 4 1 2 15 14
		f 4 7 8 9 -6
		mu 0 4 2 3 16 15
		f 4 10 11 12 -9
		mu 0 4 3 4 17 16
		f 4 13 14 15 -12
		mu 0 4 4 5 18 17
		f 4 16 17 18 -15
		mu 0 4 5 6 19 18
		f 4 19 20 21 -18
		mu 0 4 6 7 20 19
		f 4 22 23 24 -21
		mu 0 4 7 8 21 20
		f 4 25 26 27 -24
		mu 0 4 8 9 22 21
		f 4 28 29 30 -27
		mu 0 4 9 10 23 22
		f 4 31 32 33 -30
		mu 0 4 10 11 24 23
		f 4 34 -4 35 -33
		mu 0 4 11 12 25 24
		f 4 -3 36 37 38
		mu 0 4 13 14 27 26
		f 4 -7 39 40 -37
		mu 0 4 14 15 28 27
		f 4 -10 41 42 -40
		mu 0 4 15 16 29 28
		f 4 -13 43 44 -42
		mu 0 4 16 17 30 29
		f 4 -16 45 46 -44
		mu 0 4 17 18 31 30
		f 4 -19 47 48 -46
		mu 0 4 18 19 32 31
		f 4 -22 49 50 -48
		mu 0 4 19 20 33 32
		f 4 -25 51 52 -50
		mu 0 4 20 21 34 33
		f 4 -28 53 54 -52
		mu 0 4 21 22 35 34
		f 4 -31 55 56 -54
		mu 0 4 22 23 36 35
		f 4 -34 57 58 -56
		mu 0 4 23 24 37 36
		f 4 -36 -39 59 -58
		mu 0 4 24 25 38 37
		f 4 -38 60 61 62
		mu 0 4 26 27 40 39
		f 4 -41 63 64 -61
		mu 0 4 27 28 41 40
		f 4 -43 65 66 -64
		mu 0 4 28 29 42 41
		f 4 -45 67 68 -66
		mu 0 4 29 30 43 42
		f 4 -47 69 70 -68
		mu 0 4 30 31 44 43
		f 4 -49 71 72 -70
		mu 0 4 31 32 45 44
		f 4 -51 73 74 -72
		mu 0 4 32 33 46 45
		f 4 -53 75 76 -74
		mu 0 4 33 34 47 46
		f 4 -55 77 78 -76
		mu 0 4 34 35 48 47
		f 4 -57 79 80 -78
		mu 0 4 35 36 49 48
		f 4 -59 81 82 -80
		mu 0 4 36 37 50 49
		f 4 -60 -63 83 -82
		mu 0 4 37 38 51 50
		f 4 -62 84 85 86
		mu 0 4 39 40 53 52
		f 4 -65 87 88 -85
		mu 0 4 40 41 54 53
		f 4 -67 89 90 -88
		mu 0 4 41 42 55 54
		f 4 -69 91 92 -90
		mu 0 4 42 43 56 55
		f 4 -71 93 94 -92
		mu 0 4 43 44 57 56
		f 4 -73 95 96 -94
		mu 0 4 44 45 58 57
		f 4 -75 97 98 -96
		mu 0 4 45 46 59 58
		f 4 -77 99 100 -98
		mu 0 4 46 47 60 59
		f 4 -79 101 102 -100
		mu 0 4 47 48 61 60
		f 4 -81 103 104 -102
		mu 0 4 48 49 62 61
		f 4 -83 105 106 -104
		mu 0 4 49 50 63 62
		f 4 -84 -87 107 -106
		mu 0 4 50 51 64 63
		f 4 -86 108 109 110
		mu 0 4 52 53 66 65
		f 4 -89 111 112 -109
		mu 0 4 53 54 67 66
		f 4 -91 113 114 -112
		mu 0 4 54 55 68 67
		f 4 -93 115 116 -114
		mu 0 4 55 56 69 68
		f 4 -95 117 118 -116
		mu 0 4 56 57 70 69
		f 4 -97 119 120 -118
		mu 0 4 57 58 71 70
		f 4 -99 121 122 -120
		mu 0 4 58 59 72 71
		f 4 -101 123 124 -122
		mu 0 4 59 60 73 72
		f 4 -103 125 126 -124
		mu 0 4 60 61 74 73
		f 4 -105 127 128 -126
		mu 0 4 61 62 75 74
		f 4 -107 129 130 -128
		mu 0 4 62 63 76 75
		f 4 -108 -111 131 -130
		mu 0 4 63 64 77 76
		f 4 -110 132 133 134
		mu 0 4 65 66 79 78
		f 4 -113 135 136 -133
		mu 0 4 66 67 80 79
		f 4 -115 137 138 -136
		mu 0 4 67 68 81 80
		f 4 -117 139 140 -138
		mu 0 4 68 69 82 81
		f 4 -119 141 142 -140
		mu 0 4 69 70 83 82
		f 4 -121 143 144 -142
		mu 0 4 70 71 84 83
		f 4 -123 145 146 -144
		mu 0 4 71 72 85 84
		f 4 -125 147 148 -146
		mu 0 4 72 73 86 85
		f 4 -127 149 150 -148
		mu 0 4 73 74 87 86
		f 4 -129 151 152 -150
		mu 0 4 74 75 88 87
		f 4 -131 153 154 -152
		mu 0 4 75 76 89 88
		f 4 -132 -135 155 -154
		mu 0 4 76 77 90 89
		f 4 -134 156 157 158
		mu 0 4 78 79 92 91
		f 4 -137 159 160 -157
		mu 0 4 79 80 93 92
		f 4 -139 161 162 -160
		mu 0 4 80 81 94 93
		f 4 -141 163 164 -162
		mu 0 4 81 82 95 94
		f 4 -143 165 166 -164
		mu 0 4 82 83 96 95
		f 4 -145 167 168 -166
		mu 0 4 83 84 97 96
		f 4 -147 169 170 -168
		mu 0 4 84 85 98 97
		f 4 -149 171 172 -170
		mu 0 4 85 86 99 98
		f 4 -151 173 174 -172
		mu 0 4 86 87 100 99
		f 4 -153 175 176 -174
		mu 0 4 87 88 101 100
		f 4 -155 177 178 -176
		mu 0 4 88 89 102 101
		f 4 -156 -159 179 -178
		mu 0 4 89 90 103 102
		f 4 -158 180 181 182
		mu 0 4 91 92 105 104
		f 4 -161 183 184 -181
		mu 0 4 92 93 106 105
		f 4 -163 185 186 -184
		mu 0 4 93 94 107 106
		f 4 -165 187 188 -186
		mu 0 4 94 95 108 107
		f 4 -167 189 190 -188
		mu 0 4 95 96 109 108
		f 4 -169 191 192 -190
		mu 0 4 96 97 110 109
		f 4 -171 193 194 -192
		mu 0 4 97 98 111 110
		f 4 -173 195 196 -194
		mu 0 4 98 99 112 111
		f 4 -175 197 198 -196
		mu 0 4 99 100 113 112
		f 4 -177 199 200 -198
		mu 0 4 100 101 114 113
		f 4 -179 201 202 -200
		mu 0 4 101 102 115 114
		f 4 -180 -183 203 -202
		mu 0 4 102 103 116 115
		f 4 -182 204 205 206
		mu 0 4 104 105 118 117
		f 4 -185 207 208 -205
		mu 0 4 105 106 119 118
		f 4 -187 209 210 -208
		mu 0 4 106 107 120 119
		f 4 -189 211 212 -210
		mu 0 4 107 108 121 120
		f 4 -191 213 214 -212
		mu 0 4 108 109 122 121
		f 4 -193 215 216 -214
		mu 0 4 109 110 123 122
		f 4 -195 217 218 -216
		mu 0 4 110 111 124 123
		f 4 -197 219 220 -218
		mu 0 4 111 112 125 124
		f 4 -199 221 222 -220
		mu 0 4 112 113 126 125
		f 4 -201 223 224 -222
		mu 0 4 113 114 127 126
		f 4 -203 225 226 -224
		mu 0 4 114 115 128 127
		f 4 -204 -207 227 -226
		mu 0 4 115 116 129 128
		f 4 -206 228 229 230
		mu 0 4 117 118 131 130
		f 4 -209 231 232 -229
		mu 0 4 118 119 132 131
		f 4 -211 233 234 -232
		mu 0 4 119 120 133 132
		f 4 -213 235 236 -234
		mu 0 4 120 121 134 133
		f 4 -215 237 238 -236
		mu 0 4 121 122 135 134
		f 4 -217 239 240 -238
		mu 0 4 122 123 136 135
		f 4 -219 241 242 -240
		mu 0 4 123 124 137 136
		f 4 -221 243 244 -242
		mu 0 4 124 125 138 137
		f 4 -223 245 246 -244
		mu 0 4 125 126 139 138
		f 4 -225 247 248 -246
		mu 0 4 126 127 140 139
		f 4 -227 249 250 -248
		mu 0 4 127 128 141 140
		f 4 -228 -231 251 -250
		mu 0 4 128 129 142 141
		f 4 -230 252 253 254
		mu 0 4 130 131 144 143
		f 4 -233 255 256 -253
		mu 0 4 131 132 145 144
		f 4 -235 257 258 -256
		mu 0 4 132 133 146 145
		f 4 -237 259 260 -258
		mu 0 4 133 134 147 146
		f 4 -239 261 262 -260
		mu 0 4 134 135 148 147
		f 4 -241 263 264 -262
		mu 0 4 135 136 149 148
		f 4 -243 265 266 -264
		mu 0 4 136 137 150 149
		f 4 -245 267 268 -266
		mu 0 4 137 138 151 150
		f 4 -247 269 270 -268
		mu 0 4 138 139 152 151
		f 4 -249 271 272 -270
		mu 0 4 139 140 153 152
		f 4 -251 273 274 -272
		mu 0 4 140 141 154 153
		f 4 -252 -255 275 -274
		mu 0 4 141 142 155 154
		f 4 -254 276 277 278
		mu 0 4 143 144 157 156
		f 4 -257 279 280 -277
		mu 0 4 144 145 158 157
		f 4 -259 281 282 -280
		mu 0 4 145 146 159 158
		f 4 -261 283 284 -282
		mu 0 4 146 147 160 159
		f 4 -263 285 286 -284
		mu 0 4 147 148 161 160
		f 4 -265 287 288 -286
		mu 0 4 148 149 162 161
		f 4 -267 289 290 -288
		mu 0 4 149 150 163 162
		f 4 -269 291 292 -290
		mu 0 4 150 151 164 163
		f 4 -271 293 294 -292
		mu 0 4 151 152 165 164
		f 4 -273 295 296 -294
		mu 0 4 152 153 166 165
		f 4 -275 297 298 -296
		mu 0 4 153 154 167 166
		f 4 -276 -279 299 -298
		mu 0 4 154 155 168 167
		f 4 -278 300 301 302
		mu 0 4 156 157 170 169
		f 4 -281 303 304 -301
		mu 0 4 157 158 171 170
		f 4 -283 305 306 -304
		mu 0 4 158 159 172 171
		f 4 -285 307 308 -306
		mu 0 4 159 160 173 172
		f 4 -287 309 310 -308
		mu 0 4 160 161 174 173
		f 4 -289 311 312 -310
		mu 0 4 161 162 175 174
		f 4 -291 313 314 -312
		mu 0 4 162 163 176 175
		f 4 -293 315 316 -314
		mu 0 4 163 164 177 176
		f 4 -295 317 318 -316
		mu 0 4 164 165 178 177
		f 4 -297 319 320 -318
		mu 0 4 165 166 179 178
		f 4 -299 321 322 -320
		mu 0 4 166 167 180 179
		f 4 -300 -303 323 -322
		mu 0 4 167 168 181 180
		f 3 -1 324 -326
		mu 0 3 182 183 184
		f 3 -5 325 -327
		mu 0 3 185 186 187
		f 3 -8 326 -328
		mu 0 3 188 189 190
		f 3 -11 327 -329
		mu 0 3 191 192 193
		f 3 -14 328 -330
		mu 0 3 194 195 196
		f 3 -17 329 -331
		mu 0 3 197 198 199
		f 3 -20 330 -332
		mu 0 3 200 201 202
		f 3 -23 331 -333
		mu 0 3 203 204 205
		f 3 -26 332 -334
		mu 0 3 206 207 208
		f 3 -29 333 -335
		mu 0 3 209 210 211
		f 3 -32 334 -336
		mu 0 3 212 213 214
		f 3 -35 335 -325
		mu 0 3 215 216 217;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "sweep3" -p "Planta";
	rename -uid "EFE73AA2-42D4-8BE0-42C6-FC81C1B74065";
	setAttr ".t" -type "double3" 0.55881434195440016 -0.02392808409173508 -0.56735380659812451 ;
	setAttr ".r" -type "double3" 0 -102.04723314455015 0 ;
	setAttr ".s" -type "double3" 0.78436918232048869 0.78436918232048869 0.78436918232048869 ;
	setAttr ".rp" -type "double3" -0.9573180228471756 6.4733564853668213 -0.48953056335449219 ;
	setAttr ".sp" -type "double3" -0.9573180228471756 6.4733564853668213 -0.48953056335449219 ;
createNode mesh -n "sweepShape3" -p "sweep3";
	rename -uid "88A48722-4C3F-84F3-2819-0EBAC4B11345";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.039721043780446053 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0 0 0.0088268928
		 0 0.017653791 0 0.026480688 0 0.035307579 0 0.044134494 0 0.052961394 0 0.061788298
		 0 0.070615195 0 0 0.20139724 0.0088268928 0.20139724 0.017653791 0.20139724 0.026480688
		 0.20139724 0.035307579 0.20139724 0.044134494 0.20139724 0.052961394 0.20139724 0.061788298
		 0.20139724 0.070615195 0.20139724 0 0.40249947 0.0088268928 0.40249947 0.017653791
		 0.40249947 0.026480688 0.40249947 0.035307579 0.40249947 0.044134494 0.40249947 0.052961394
		 0.40249947 0.061788298 0.40249947 0.070615195 0.40249947 0 0.60330284 0.0088268928
		 0.60330284 0.017653791 0.60330284 0.026480688 0.60330284 0.035307579 0.60330284 0.044134494
		 0.60330284 0.052961394 0.60330284 0.061788298 0.60330284 0.070615195 0.60330284 0
		 0.80310941 0.0088268928 0.80310941 0.017653791 0.80310941 0.026480688 0.80310941
		 0.035307579 0.80310941 0.044134494 0.80310941 0.052961394 0.80310941 0.061788298
		 0.80310941 0.070615195 0.80310941 0 1 0.0088268928 1 0.017653791 1 0.026480688 1
		 0.035307579 1 0.044134494 1 0.052961394 1 0.061788298 1 0.070615195 1 0.026480693
		 0 0.017653789 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  -0.40152597 5.77476215 -0.61644459 -0.38640505 5.77717972 -0.60967827
		 -0.37150067 5.78213787 -0.61546946 -0.36554423 5.78673458 -0.63042688 -0.37202477 5.78827429 -0.64578533
		 -0.38714617 5.7858572 -0.65254831 -0.40205026 5.78089905 -0.64675808 -0.40800661 5.77630329 -0.63180256
		 -0.51756465 6.13113785 -0.54275036 -0.50308555 6.13551998 -0.53557682 -0.48881447 6.14241314 -0.54096794
		 -0.48311085 6.14778233 -0.55576372 -0.48931614 6.14848185 -0.57129622 -0.50379527 6.14410067 -0.57846737
		 -0.51806659 6.13720655 -0.57307768 -0.52376962 6.13183689 -0.55828285 -0.68461818 6.46691227 -0.47331285
		 -0.67121035 6.47343302 -0.4656992 -0.65799463 6.48243618 -0.47065401 -0.65271306 6.48864889 -0.48527527
		 -0.65845931 6.48843098 -0.50099754 -0.67186695 6.48190975 -0.5086112 -0.68508279 6.47290707 -0.50365829
		 -0.69036448 6.46669388 -0.48903656 -0.90844518 6.76865435 -0.41091633 -0.89686203 6.77760983 -0.4027977
		 -0.88544518 6.78901291 -0.40725613 -0.88088238 6.79618406 -0.42167997 -0.88584715 6.79492378 -0.43761778
		 -0.89743006 6.78596735 -0.4457345 -0.90884686 6.77456427 -0.44127607 -0.91340971 6.76739311 -0.42685318
		 -1.19682026 7.009414196 -0.36112785 -1.18864393 7.021155357 -0.35243464 -1.18058562 7.035303593 -0.35632515
		 -1.17736483 7.043571472 -0.37052155 -1.18086934 7.041117668 -0.38670635 -1.18904495 7.029376507 -0.39540005
		 -1.19710302 7.015226841 -0.39150858 -1.20032406 7.0069589615 -0.37731266 -1.54842615 7.13257217 -0.33565998
		 -1.54687285 7.14650631 -0.32651281 -1.54534197 7.16281748 -0.32995605 -1.54472995 7.17195082 -0.34397602
		 -1.54539561 7.16855478 -0.36035347 -1.54694915 7.15462017 -0.36950064 -1.5484798 7.13830853 -0.36605644
		 -1.54909182 7.12917614 -0.35203934 -0.38677531 5.78151941 -0.63111448 -1.546911 7.15056372 -0.3480072;
	setAttr -s 104 ".ed[0:103]"  0 1 0 1 9 1 9 8 1 8 0 1 1 2 0 2 10 1 10 9 1
		 2 3 0 3 11 1 11 10 1 3 4 0 4 12 1 12 11 1 4 5 0 5 13 1 13 12 1 5 6 0 6 14 1 14 13 1
		 6 7 0 7 15 1 15 14 1 7 0 0 8 15 1 9 17 1 17 16 1 16 8 1 10 18 1 18 17 1 11 19 1 19 18 1
		 12 20 1 20 19 1 13 21 1 21 20 1 14 22 1 22 21 1 15 23 1 23 22 1 16 23 1 17 25 1 25 24 1
		 24 16 1 18 26 1 26 25 1 19 27 1 27 26 1 20 28 1 28 27 1 21 29 1 29 28 1 22 30 1 30 29 1
		 23 31 1 31 30 1 24 31 1 25 33 1 33 32 1 32 24 1 26 34 1 34 33 1 27 35 1 35 34 1 28 36 1
		 36 35 1 29 37 1 37 36 1 30 38 1 38 37 1 31 39 1 39 38 1 32 39 1 33 41 1 41 40 0 40 32 1
		 34 42 1 42 41 0 35 43 1 43 42 0 36 44 1 44 43 0 37 45 1 45 44 0 38 46 1 46 45 0 39 47 1
		 47 46 0 40 47 0 1 48 1 48 5 1 0 48 1 7 48 1 6 48 1 4 48 1 3 48 1 2 48 1 40 49 1 49 44 1
		 41 49 1 42 49 1 43 49 1 45 49 1 46 49 1 47 49 1;
	setAttr -s 56 -ch 208 ".fc[0:55]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 10 9
		f 4 4 5 6 -2
		mu 0 4 1 2 11 10
		f 4 7 8 9 -6
		mu 0 4 2 3 12 11
		f 4 10 11 12 -9
		mu 0 4 3 4 13 12
		f 4 13 14 15 -12
		mu 0 4 4 5 14 13
		f 4 16 17 18 -15
		mu 0 4 5 6 15 14
		f 4 19 20 21 -18
		mu 0 4 6 7 16 15
		f 4 22 -4 23 -21
		mu 0 4 7 8 17 16
		f 4 -3 24 25 26
		mu 0 4 9 10 19 18
		f 4 -7 27 28 -25
		mu 0 4 10 11 20 19
		f 4 -10 29 30 -28
		mu 0 4 11 12 21 20
		f 4 -13 31 32 -30
		mu 0 4 12 13 22 21
		f 4 -16 33 34 -32
		mu 0 4 13 14 23 22
		f 4 -19 35 36 -34
		mu 0 4 14 15 24 23
		f 4 -22 37 38 -36
		mu 0 4 15 16 25 24
		f 4 -24 -27 39 -38
		mu 0 4 16 17 26 25
		f 4 -26 40 41 42
		mu 0 4 18 19 28 27
		f 4 -29 43 44 -41
		mu 0 4 19 20 29 28
		f 4 -31 45 46 -44
		mu 0 4 20 21 30 29
		f 4 -33 47 48 -46
		mu 0 4 21 22 31 30
		f 4 -35 49 50 -48
		mu 0 4 22 23 32 31
		f 4 -37 51 52 -50
		mu 0 4 23 24 33 32
		f 4 -39 53 54 -52
		mu 0 4 24 25 34 33
		f 4 -40 -43 55 -54
		mu 0 4 25 26 35 34
		f 4 -42 56 57 58
		mu 0 4 27 28 37 36
		f 4 -45 59 60 -57
		mu 0 4 28 29 38 37
		f 4 -47 61 62 -60
		mu 0 4 29 30 39 38
		f 4 -49 63 64 -62
		mu 0 4 30 31 40 39
		f 4 -51 65 66 -64
		mu 0 4 31 32 41 40
		f 4 -53 67 68 -66
		mu 0 4 32 33 42 41
		f 4 -55 69 70 -68
		mu 0 4 33 34 43 42
		f 4 -56 -59 71 -70
		mu 0 4 34 35 44 43
		f 4 -58 72 73 74
		mu 0 4 36 37 46 45
		f 4 -61 75 76 -73
		mu 0 4 37 38 47 46
		f 4 -63 77 78 -76
		mu 0 4 38 39 48 47
		f 4 -65 79 80 -78
		mu 0 4 39 40 49 48
		f 4 -67 81 82 -80
		mu 0 4 40 41 50 49
		f 4 -69 83 84 -82
		mu 0 4 41 42 51 50
		f 4 -71 85 86 -84
		mu 0 4 42 43 52 51
		f 4 -72 -75 87 -86
		mu 0 4 43 44 53 52
		f 3 93 89 -14
		mu 0 3 4 54 5
		f 3 -1 90 -89
		mu 0 3 1 8 54
		f 3 -91 -23 91
		mu 0 3 54 8 7
		f 3 -92 -20 92
		mu 0 3 54 7 6
		f 3 -93 -17 -90
		mu 0 3 54 6 5
		f 3 94 -94 -11
		mu 0 3 3 54 4
		f 3 95 -95 -8
		mu 0 3 2 54 3
		f 3 88 -96 -5
		mu 0 3 1 54 2
		f 3 101 97 -83
		mu 0 3 50 55 49
		f 3 -74 98 -97
		mu 0 3 45 46 55
		f 3 -99 -77 99
		mu 0 3 55 46 47
		f 3 -100 -79 100
		mu 0 3 55 47 48
		f 3 -101 -81 -98
		mu 0 3 55 48 49
		f 3 102 -102 -85
		mu 0 3 51 55 50
		f 3 103 -103 -87
		mu 0 3 52 55 51
		f 3 96 -104 -88
		mu 0 3 45 55 52;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "sweep4" -p "Planta";
	rename -uid "802EE3DE-423C-E396-ACE8-DE987D4C8837";
	setAttr ".t" -type "double3" 0.75071214040262779 -0.02392808409173508 0.32333897141188123 ;
	setAttr ".r" -type "double3" 0 -258.45355032296834 0 ;
	setAttr ".s" -type "double3" 0.78436918232048869 0.78436918232048869 0.78436918232048869 ;
	setAttr ".rp" -type "double3" -0.9573180228471756 6.4733564853668213 -0.48953056335449219 ;
	setAttr ".sp" -type "double3" -0.9573180228471756 6.4733564853668213 -0.48953056335449219 ;
createNode mesh -n "sweepShape4" -p "sweep4";
	rename -uid "7DB35B10-49F6-3779-4BCB-79AD3BC28FE4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.039721043780446053 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0 0 0.0088268928
		 0 0.017653791 0 0.026480688 0 0.035307579 0 0.044134494 0 0.052961394 0 0.061788298
		 0 0.070615195 0 0 0.20139724 0.0088268928 0.20139724 0.017653791 0.20139724 0.026480688
		 0.20139724 0.035307579 0.20139724 0.044134494 0.20139724 0.052961394 0.20139724 0.061788298
		 0.20139724 0.070615195 0.20139724 0 0.40249947 0.0088268928 0.40249947 0.017653791
		 0.40249947 0.026480688 0.40249947 0.035307579 0.40249947 0.044134494 0.40249947 0.052961394
		 0.40249947 0.061788298 0.40249947 0.070615195 0.40249947 0 0.60330284 0.0088268928
		 0.60330284 0.017653791 0.60330284 0.026480688 0.60330284 0.035307579 0.60330284 0.044134494
		 0.60330284 0.052961394 0.60330284 0.061788298 0.60330284 0.070615195 0.60330284 0
		 0.80310941 0.0088268928 0.80310941 0.017653791 0.80310941 0.026480688 0.80310941
		 0.035307579 0.80310941 0.044134494 0.80310941 0.052961394 0.80310941 0.061788298
		 0.80310941 0.070615195 0.80310941 0 1 0.0088268928 1 0.017653791 1 0.026480688 1
		 0.035307579 1 0.044134494 1 0.052961394 1 0.061788298 1 0.070615195 1 0.026480693
		 0 0.017653789 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  -0.40152597 5.77476215 -0.61644459 -0.38640505 5.77717972 -0.60967827
		 -0.37150067 5.78213787 -0.61546946 -0.36554423 5.78673458 -0.63042688 -0.37202477 5.78827429 -0.64578533
		 -0.38714617 5.7858572 -0.65254831 -0.40205026 5.78089905 -0.64675808 -0.40800661 5.77630329 -0.63180256
		 -0.51756465 6.13113785 -0.54275036 -0.50308555 6.13551998 -0.53557682 -0.48881447 6.14241314 -0.54096794
		 -0.48311085 6.14778233 -0.55576372 -0.48931614 6.14848185 -0.57129622 -0.50379527 6.14410067 -0.57846737
		 -0.51806659 6.13720655 -0.57307768 -0.52376962 6.13183689 -0.55828285 -0.68461818 6.46691227 -0.47331285
		 -0.67121035 6.47343302 -0.4656992 -0.65799463 6.48243618 -0.47065401 -0.65271306 6.48864889 -0.48527527
		 -0.65845931 6.48843098 -0.50099754 -0.67186695 6.48190975 -0.5086112 -0.68508279 6.47290707 -0.50365829
		 -0.69036448 6.46669388 -0.48903656 -0.90844518 6.76865435 -0.41091633 -0.89686203 6.77760983 -0.4027977
		 -0.88544518 6.78901291 -0.40725613 -0.88088238 6.79618406 -0.42167997 -0.88584715 6.79492378 -0.43761778
		 -0.89743006 6.78596735 -0.4457345 -0.90884686 6.77456427 -0.44127607 -0.91340971 6.76739311 -0.42685318
		 -1.19682026 7.009414196 -0.36112785 -1.18864393 7.021155357 -0.35243464 -1.18058562 7.035303593 -0.35632515
		 -1.17736483 7.043571472 -0.37052155 -1.18086934 7.041117668 -0.38670635 -1.18904495 7.029376507 -0.39540005
		 -1.19710302 7.015226841 -0.39150858 -1.20032406 7.0069589615 -0.37731266 -1.54842615 7.13257217 -0.33565998
		 -1.54687285 7.14650631 -0.32651281 -1.54534197 7.16281748 -0.32995605 -1.54472995 7.17195082 -0.34397602
		 -1.54539561 7.16855478 -0.36035347 -1.54694915 7.15462017 -0.36950064 -1.5484798 7.13830853 -0.36605644
		 -1.54909182 7.12917614 -0.35203934 -0.38677531 5.78151941 -0.63111448 -1.546911 7.15056372 -0.3480072;
	setAttr -s 104 ".ed[0:103]"  0 1 0 1 9 1 9 8 1 8 0 1 1 2 0 2 10 1 10 9 1
		 2 3 0 3 11 1 11 10 1 3 4 0 4 12 1 12 11 1 4 5 0 5 13 1 13 12 1 5 6 0 6 14 1 14 13 1
		 6 7 0 7 15 1 15 14 1 7 0 0 8 15 1 9 17 1 17 16 1 16 8 1 10 18 1 18 17 1 11 19 1 19 18 1
		 12 20 1 20 19 1 13 21 1 21 20 1 14 22 1 22 21 1 15 23 1 23 22 1 16 23 1 17 25 1 25 24 1
		 24 16 1 18 26 1 26 25 1 19 27 1 27 26 1 20 28 1 28 27 1 21 29 1 29 28 1 22 30 1 30 29 1
		 23 31 1 31 30 1 24 31 1 25 33 1 33 32 1 32 24 1 26 34 1 34 33 1 27 35 1 35 34 1 28 36 1
		 36 35 1 29 37 1 37 36 1 30 38 1 38 37 1 31 39 1 39 38 1 32 39 1 33 41 1 41 40 0 40 32 1
		 34 42 1 42 41 0 35 43 1 43 42 0 36 44 1 44 43 0 37 45 1 45 44 0 38 46 1 46 45 0 39 47 1
		 47 46 0 40 47 0 1 48 1 48 5 1 0 48 1 7 48 1 6 48 1 4 48 1 3 48 1 2 48 1 40 49 1 49 44 1
		 41 49 1 42 49 1 43 49 1 45 49 1 46 49 1 47 49 1;
	setAttr -s 56 -ch 208 ".fc[0:55]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 10 9
		f 4 4 5 6 -2
		mu 0 4 1 2 11 10
		f 4 7 8 9 -6
		mu 0 4 2 3 12 11
		f 4 10 11 12 -9
		mu 0 4 3 4 13 12
		f 4 13 14 15 -12
		mu 0 4 4 5 14 13
		f 4 16 17 18 -15
		mu 0 4 5 6 15 14
		f 4 19 20 21 -18
		mu 0 4 6 7 16 15
		f 4 22 -4 23 -21
		mu 0 4 7 8 17 16
		f 4 -3 24 25 26
		mu 0 4 9 10 19 18
		f 4 -7 27 28 -25
		mu 0 4 10 11 20 19
		f 4 -10 29 30 -28
		mu 0 4 11 12 21 20
		f 4 -13 31 32 -30
		mu 0 4 12 13 22 21
		f 4 -16 33 34 -32
		mu 0 4 13 14 23 22
		f 4 -19 35 36 -34
		mu 0 4 14 15 24 23
		f 4 -22 37 38 -36
		mu 0 4 15 16 25 24
		f 4 -24 -27 39 -38
		mu 0 4 16 17 26 25
		f 4 -26 40 41 42
		mu 0 4 18 19 28 27
		f 4 -29 43 44 -41
		mu 0 4 19 20 29 28
		f 4 -31 45 46 -44
		mu 0 4 20 21 30 29
		f 4 -33 47 48 -46
		mu 0 4 21 22 31 30
		f 4 -35 49 50 -48
		mu 0 4 22 23 32 31
		f 4 -37 51 52 -50
		mu 0 4 23 24 33 32
		f 4 -39 53 54 -52
		mu 0 4 24 25 34 33
		f 4 -40 -43 55 -54
		mu 0 4 25 26 35 34
		f 4 -42 56 57 58
		mu 0 4 27 28 37 36
		f 4 -45 59 60 -57
		mu 0 4 28 29 38 37
		f 4 -47 61 62 -60
		mu 0 4 29 30 39 38
		f 4 -49 63 64 -62
		mu 0 4 30 31 40 39
		f 4 -51 65 66 -64
		mu 0 4 31 32 41 40
		f 4 -53 67 68 -66
		mu 0 4 32 33 42 41
		f 4 -55 69 70 -68
		mu 0 4 33 34 43 42
		f 4 -56 -59 71 -70
		mu 0 4 34 35 44 43
		f 4 -58 72 73 74
		mu 0 4 36 37 46 45
		f 4 -61 75 76 -73
		mu 0 4 37 38 47 46
		f 4 -63 77 78 -76
		mu 0 4 38 39 48 47
		f 4 -65 79 80 -78
		mu 0 4 39 40 49 48
		f 4 -67 81 82 -80
		mu 0 4 40 41 50 49
		f 4 -69 83 84 -82
		mu 0 4 41 42 51 50
		f 4 -71 85 86 -84
		mu 0 4 42 43 52 51
		f 4 -72 -75 87 -86
		mu 0 4 43 44 53 52
		f 3 93 89 -14
		mu 0 3 4 54 5
		f 3 -1 90 -89
		mu 0 3 1 8 54
		f 3 -91 -23 91
		mu 0 3 54 8 7
		f 3 -92 -20 92
		mu 0 3 54 7 6
		f 3 -93 -17 -90
		mu 0 3 54 6 5
		f 3 94 -94 -11
		mu 0 3 3 54 4
		f 3 95 -95 -8
		mu 0 3 2 54 3
		f 3 88 -96 -5
		mu 0 3 1 54 2
		f 3 101 97 -83
		mu 0 3 50 55 49
		f 3 -74 98 -97
		mu 0 3 45 46 55
		f 3 -99 -77 99
		mu 0 3 55 46 47
		f 3 -100 -79 100
		mu 0 3 55 47 48
		f 3 -101 -81 -98
		mu 0 3 55 48 49
		f 3 102 -102 -85
		mu 0 3 51 55 50
		f 3 103 -103 -87
		mu 0 3 52 55 51
		f 3 96 -104 -88
		mu 0 3 45 55 52;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere1" -p "Planta";
	rename -uid "4F9FD617-415E-ED87-3D3A-F5A92C4D8BE8";
	setAttr ".t" -type "double3" -0.41095143656465727 6.9819995250246549 -1.5345822126288018 ;
	setAttr ".s" -type "double3" 0.033849678444659824 0.033849678444659824 0.033849678444659824 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "252C0CB1-40DE-E461-0718-77A556461346";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane5" -p "Planta";
	rename -uid "84321120-4A60-16F8-CB55-21BF988C0C9C";
	setAttr ".t" -type "double3" -1.224023137488143 -3.2734211757986387 0.23684192918862002 ;
	setAttr ".r" -type "double3" 90.293329007545609 -39.066627207245887 -141.66325202944438 ;
	setAttr ".s" -type "double3" 0.94767542399694804 1 1 ;
	setAttr ".rp" -type "double3" -0.14293058216571808 5.225419282913208 -0.05449676513671875 ;
	setAttr ".sp" -type "double3" -0.14293058216571808 5.225419282913208 -0.05449676513671875 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	rename -uid "F94A2F78-4A9D-0478-708E-40B16963E19B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 105 ".uvst[0].uvsp[0:104]" -type "float2" 0 0 0.25 0 0.5 0
		 0.75 0 1 0 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 1 0.25 1 0.5 1 0.75 1 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0.25 0 0.25 0.25
		 0 0.25 0.5 0 0.5 0.25 0.75 0 0.75 0.25 1 0 1 0.25 0.25 0.5 0 0.5 0.5 0.5 0.75 0.5
		 1 0.5 0.25 0.75 0 0.75 0.5 0.75 0.75 0.75 1 0.75 0.25 1 0 1 0.5 1 0.75 1 1 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 0.25 0 0.5 0 0.75
		 0 1 0 1 0.25 1 0.5 1 0.75 0.25 1 0 1 0.5 1 0.75 1 1 1 1 1 0 1 0 0 1 1 0 1 1 1 0 1
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  -0.64037198 5.98666954 -0.24398267 -0.69138968 5.76131678 0.073920012
		 -0.67280817 5.30139256 0.49140382 -0.60041004 5.0080265999 0.55286825 -0.54649282 4.83064127 0.53579068
		 -0.50889713 6.00058746338 -0.28465199 -0.50211883 5.682693 0.15615022 -0.4172211 5.30694962 0.46258879
		 -0.34482303 5.024338722 0.52847373 -0.20431836 4.5620842 0.48397076 -0.37742248 6.014505863 -0.32532138
		 -0.26449662 5.73638248 0.099997878 -0.17921576 5.36797094 0.41643906 -0.10681768 5.098495007 0.50964797
		 0.10291107 4.40849638 0.44321978 -0.24594767 6.028424263 -0.36599076 -0.026874375 5.79007149 0.043845534
		 0.058789622 5.42899275 0.37028944 0.13118769 5.17264986 0.49082196 0.27169231 4.71039534 0.44631946
		 -0.11447288 6.04234314 -0.40665996 0.05863164 5.93078089 -0.10331684 0.27921325 5.5454793 0.30680525
		 0.35161135 5.3046484 0.47756517 0.40552852 5.12726307 0.46048772 -0.51168138 5.93400955 -0.63494629
		 -0.49110082 5.93400955 -0.64167506 -0.47052017 5.93400955 -0.64840382 -0.44993964 5.93400955 -0.65513253
		 -0.42935899 5.93400955 -0.66186118 -0.64076537 5.99736404 -0.24157858 -0.69079989 5.76874018 0.080707192
		 -0.50180209 5.69014311 0.16294134 -0.50959438 6.011250019 -0.28234112 -0.6721729 5.30612278 0.50052917
		 -0.41673556 5.31174469 0.47164202 -0.59933054 5.0089015961 0.56289518 -0.34385809 5.025352001 0.53852451
		 -0.54539168 4.82998657 0.5457145 -0.20321718 4.5614295 0.4938947 -0.26451588 5.74397182 0.10666287
		 -0.37846512 6.025105 -0.32325745 -0.17899039 5.37308502 0.42523992 -0.10604809 5.099900723 0.51974857
		 0.10401227 4.40784168 0.4531436 -0.027602589 5.79785919 0.050280571 -0.2475218 6.038945675 -0.36418569
		 0.058295023 5.43464851 0.37868655 0.13148531 5.17460871 0.50102222 0.2727935 4.70974064 0.45624316
		 0.057261955 5.93859005 -0.09703511 -0.11652008 6.052764416 -0.40496916 0.27812147 5.55137825 0.3149178
		 0.35150179 5.30690479 0.48780167 0.40662968 5.12660789 0.47041166 -0.49274227 5.94370651 -0.64355677
		 -0.51330727 5.94371843 -0.6367799 -0.4721925 5.94368362 -0.65038121 -0.45164225 5.94365835 -0.65720445
		 -0.43107656 5.94364643 -0.66398001;
	setAttr -s 116 ".ed[0:115]"  0 1 0 0 5 0 1 2 0 1 6 1 2 3 0 2 7 1 3 4 0
		 3 8 1 4 9 0 5 6 1 5 10 0 6 7 1 6 11 1 7 8 1 7 12 1 8 9 1 8 13 1 9 14 0 10 11 1 10 15 0
		 11 12 1 11 16 1 12 13 1 12 17 1 13 14 1 13 18 1 14 19 0 15 16 1 15 20 0 16 17 1 16 21 1
		 17 18 1 17 22 1 18 19 1 18 23 1 19 24 0 20 21 0 21 22 0 22 23 0 23 24 0 0 25 0 5 26 0
		 25 26 0 10 27 0 26 27 0 15 28 0 27 28 0 20 29 0 28 29 0 0 30 1 1 31 1 30 31 0 31 32 1
		 33 32 1 30 33 0 2 34 1 31 34 0 34 35 1 32 35 1 3 36 1 34 36 0 36 37 1 35 37 1 4 38 0
		 36 38 0 9 39 1 38 39 0 37 39 1 32 40 1 41 40 1 33 41 0 35 42 1 40 42 1 37 43 1 42 43 1
		 14 44 0 39 44 0 43 44 1 40 45 1 46 45 1 41 46 0 42 47 1 45 47 1 43 48 1 47 48 1 19 49 1
		 44 49 0 48 49 1 21 50 1 45 50 1 20 51 0 51 50 0 46 51 0 22 52 1 47 52 1 50 52 0 23 53 1
		 48 53 1 52 53 0 24 54 0 49 54 0 53 54 0 26 55 1 33 55 0 25 56 0 56 55 0 30 56 0 27 57 1
		 41 57 0 55 57 0 28 58 1 46 58 0 57 58 0 29 59 0 51 59 0 58 59 0;
	setAttr -s 58 -ch 232 ".fc[0:57]" -type "polyFaces" 
		f 4 51 52 -54 -55
		mu 0 4 82 83 6 5
		f 4 56 57 -59 -53
		mu 0 4 83 84 7 6
		f 4 60 61 -63 -58
		mu 0 4 84 85 8 7
		f 4 64 66 -68 -62
		mu 0 4 85 86 87 8
		f 4 53 68 -70 -71
		mu 0 4 5 6 11 10
		f 4 58 71 -73 -69
		mu 0 4 6 7 12 11
		f 4 62 73 -75 -72
		mu 0 4 7 8 13 12
		f 4 67 76 -78 -74
		mu 0 4 8 87 88 13
		f 4 69 78 -80 -81
		mu 0 4 10 11 16 15
		f 4 72 81 -83 -79
		mu 0 4 11 12 17 16
		f 4 74 83 -85 -82
		mu 0 4 12 13 18 17
		f 4 77 86 -88 -84
		mu 0 4 13 88 89 18
		f 4 79 89 -92 -93
		mu 0 4 15 16 90 91
		f 4 82 94 -96 -90
		mu 0 4 16 17 92 90
		f 4 84 97 -99 -95
		mu 0 4 17 18 93 92
		f 4 87 100 -102 -98
		mu 0 4 18 89 94 93
		f 4 54 103 -106 -107
		mu 0 4 97 26 95 96
		f 4 70 108 -110 -104
		mu 0 4 29 30 98 99
		f 4 80 111 -113 -109
		mu 0 4 33 34 100 101
		f 4 92 114 -116 -112
		mu 0 4 37 102 103 104
		f 4 1 9 -4 -1
		mu 0 4 41 44 43 42
		f 4 3 11 -6 -3
		mu 0 4 42 43 46 45
		f 4 5 13 -8 -5
		mu 0 4 45 46 48 47
		f 4 7 15 -9 -7
		mu 0 4 47 48 50 49
		f 4 10 18 -13 -10
		mu 0 4 44 52 51 43
		f 4 12 20 -15 -12
		mu 0 4 43 51 53 46
		f 4 14 22 -17 -14
		mu 0 4 46 53 54 48
		f 4 16 24 -18 -16
		mu 0 4 48 54 55 50
		f 4 19 27 -22 -19
		mu 0 4 52 57 56 51
		f 4 21 29 -24 -21
		mu 0 4 51 56 58 53
		f 4 23 31 -26 -23
		mu 0 4 53 58 59 54
		f 4 25 33 -27 -25
		mu 0 4 54 59 60 55
		f 4 28 36 -31 -28
		mu 0 4 57 62 61 56
		f 4 30 37 -33 -30
		mu 0 4 56 61 63 58
		f 4 32 38 -35 -32
		mu 0 4 58 63 64 59
		f 4 34 39 -36 -34
		mu 0 4 59 64 65 60
		f 4 40 42 -42 -2
		mu 0 4 66 69 68 67
		f 4 41 44 -44 -11
		mu 0 4 70 73 72 71
		f 4 43 46 -46 -20
		mu 0 4 74 77 76 75
		f 4 45 48 -48 -29
		mu 0 4 78 81 80 79
		f 4 0 50 -52 -50
		mu 0 4 0 1 83 82
		f 4 2 55 -57 -51
		mu 0 4 1 2 84 83
		f 4 4 59 -61 -56
		mu 0 4 2 3 85 84
		f 4 6 63 -65 -60
		mu 0 4 3 4 86 85
		f 4 8 65 -67 -64
		mu 0 4 4 9 87 86
		f 4 17 75 -77 -66
		mu 0 4 9 14 88 87
		f 4 26 85 -87 -76
		mu 0 4 14 19 89 88
		f 4 -37 90 91 -89
		mu 0 4 21 20 91 90
		f 4 -38 88 95 -94
		mu 0 4 22 21 90 92
		f 4 -39 93 98 -97
		mu 0 4 23 22 92 93
		f 4 35 99 -101 -86
		mu 0 4 19 24 94 89
		f 4 -40 96 101 -100
		mu 0 4 24 23 93 94
		f 4 -43 104 105 -103
		mu 0 4 27 28 96 95
		f 4 -41 49 106 -105
		mu 0 4 28 25 97 96
		f 4 -45 102 109 -108
		mu 0 4 31 32 99 98
		f 4 -47 107 112 -111
		mu 0 4 35 36 101 100
		f 4 47 113 -115 -91
		mu 0 4 38 39 103 102
		f 4 -49 110 115 -114
		mu 0 4 39 40 104 103;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape4" -p "pPlane5";
	rename -uid "984F77A4-41DC-9819-886E-9497AC795B79";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[36:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "e[0]" "e[2]" "e[4]" "e[6]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[10]" "e[19]" "e[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[8]" "e[17]" "e[26]" "e[35]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 10 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[17]" "e[19]" "e[26]" "e[28]" "e[35:39]";
	setAttr ".pv" -type "double2" 0.875 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 41 ".uvst[0].uvsp[0:40]" -type "float2" 0 0 0.25 0 0.5 0
		 0.75 0 1 0 0 0.25 0.25 0.25 0.5 0.25 0.75 0.25 1 0.25 0 0.5 0.25 0.5 0.5 0.5 0.75
		 0.5 1 0.5 0 0.75 0.25 0.75 0.5 0.75 0.75 0.75 1 0.75 0 1 0.25 1 0.5 1 0.75 1 1 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 30 ".pt[0:29]" -type "float3"  -0.18680707 -0.05844396 0.16737361 
		-0.18680707 -0.28379592 0.26193035 -0.17869698 -0.74372053 0.30803865 -0.18398848 
		-1.0370864 0.13188076 -0.18792924 -1.2144716 -0.062161639 -0.18680707 -0.04452537 
		0.16968942 -0.18680707 -0.36241981 0.23039094 -0.17959888 -0.73816347 0.29920721 
		-0.18489037 -1.0207738 0.12746996 -0.19515975 -1.4830283 -0.37819231 -0.18680707 
		-0.030606888 0.17200521 -0.18680707 -0.30873013 0.25192818 -0.17921576 -0.67714179 
		0.33074707 -0.18450727 -0.94661826 0.18633372 -0.19983613 -1.6366165 -0.56845844 
		-0.18680707 -0.01668825 0.17432098 -0.18680707 -0.25504044 0.27346539 -0.17883264 
		-0.6161201 0.36228698 -0.18412416 -0.87246299 0.24519733 -0.1943935 -1.3347172 -0.26046452 
		-0.18680707 -0.0027697012 0.1766368 -0.18680707 -0.11433211 0.3299095 -0.17716448 
		-0.49963358 0.43419841 -0.18245599 -0.74046427 0.36733609 -0.18639675 -0.91784954 
		0.17329359 -0.18680707 -0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726 -0.18680707 
		-0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726 -0.18680707 -0.11110353 0.1336726;
	setAttr -s 30 ".vt[0:29]"  -0.45356494 6.045112133 -0.41135645 -0.50458258 6.045112133 -0.18801041
		 -0.49411124 6.045112133 0.18336496 -0.41642165 6.045112133 0.42098719 -0.35856372 6.045112133 0.59795219
		 -0.32209015 6.045112133 -0.45434159 -0.31531182 6.045112133 -0.074240819 -0.23762225 6.045112133 0.16338143
		 -0.15993267 6.045112133 0.40100366 -0.0091586709 6.045112133 0.86216295 -0.19061539 6.045112133 -0.49732667
		 -0.077689566 6.045112133 -0.15193039 0 6.045112133 0.085691854 0.077689566 6.045112133 0.3233141
		 0.30274719 6.045112133 1.0116781 -0.059140608 6.045112133 -0.54031175 0.15993267 6.045112133 -0.22961996
		 0.23762225 6.045112133 0.0080022886 0.31531182 6.045112133 0.24562453 0.46608582 6.045112133 0.70678377
		 0.07233417 6.045112133 -0.5832969 0.24543868 6.045112133 -0.43322659 0.45637774 6.045112133 -0.12739332
		 0.53406733 6.045112133 0.11022893 0.59192526 6.045112133 0.28719392 -0.32487431 6.045112133 -0.76861912
		 -0.30429372 6.045112133 -0.77534789 -0.28371313 6.045112133 -0.7820766 -0.26313254 6.045112133 -0.78880531
		 -0.24255194 6.045112133 -0.79553407;
	setAttr -s 49 ".ed[0:48]"  0 1 0 0 5 0 1 2 0 1 6 1 2 3 0 2 7 1 3 4 0
		 3 8 1 4 9 0 5 6 1 5 10 0 6 7 1 6 11 1 7 8 1 7 12 1 8 9 1 8 13 1 9 14 0 10 11 1 10 15 0
		 11 12 1 11 16 1 12 13 1 12 17 1 13 14 1 13 18 1 14 19 0 15 16 1 15 20 0 16 17 1 16 21 1
		 17 18 1 17 22 1 18 19 1 18 23 1 19 24 0 20 21 0 21 22 0 22 23 0 23 24 0 0 25 0 5 26 0
		 25 26 0 10 27 0 26 27 0 15 28 0 27 28 0 20 29 0 28 29 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 3 -10 -2
		mu 0 4 0 1 6 5
		f 4 2 5 -12 -4
		mu 0 4 1 2 7 6
		f 4 4 7 -14 -6
		mu 0 4 2 3 8 7
		f 4 6 8 -16 -8
		mu 0 4 3 4 9 8
		f 4 9 12 -19 -11
		mu 0 4 5 6 11 10
		f 4 11 14 -21 -13
		mu 0 4 6 7 12 11
		f 4 13 16 -23 -15
		mu 0 4 7 8 13 12
		f 4 15 17 -25 -17
		mu 0 4 8 9 14 13
		f 4 18 21 -28 -20
		mu 0 4 10 11 16 15
		f 4 20 23 -30 -22
		mu 0 4 11 12 17 16
		f 4 22 25 -32 -24
		mu 0 4 12 13 18 17
		f 4 24 26 -34 -26
		mu 0 4 13 14 19 18
		f 4 27 30 -37 -29
		mu 0 4 15 16 21 20
		f 4 29 32 -38 -31
		mu 0 4 16 17 22 21
		f 4 31 34 -39 -33
		mu 0 4 17 18 23 22
		f 4 33 35 -40 -35
		mu 0 4 18 19 24 23
		f 4 1 41 -43 -41
		mu 0 4 25 26 27 28
		f 4 10 43 -45 -42
		mu 0 4 29 30 31 32
		f 4 19 45 -47 -44
		mu 0 4 33 34 35 36
		f 4 28 47 -49 -46
		mu 0 4 37 38 39 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Marco_roto";
	rename -uid "C2C1F614-4566-CD5C-2854-39897A23E3E0";
	setAttr ".t" -type "double3" 0.83119640293921959 0 -4.0701825681085158 ;
	setAttr ".s" -type "double3" 0.94928940664065242 0.94928940664065242 0.94928940664065242 ;
	setAttr ".rp" -type "double3" -3.9717753082513809 2.8386133760213852 1.4220390915870667 ;
	setAttr ".sp" -type "double3" -3.9717753082513809 2.8386133760213852 1.4220390915870667 ;
createNode transform -n "Marco" -p "Marco_roto";
	rename -uid "2D38FB85-4EF9-F064-FE25-9DBA9DB24108";
	setAttr ".rp" -type "double3" -3.9717753082513809 2.8386133760213852 0 ;
	setAttr ".sp" -type "double3" -3.9717753082513809 2.8386133760213852 0 ;
createNode mesh -n "MarcoShape" -p "Marco";
	rename -uid "302A17F2-4ABE-8098-F58B-1FB9571F9882";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.625 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.375 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.375 0.25 0.375 0 0.625 0 0.375 0.25 0.5 0.25 0.5 0.5 0.5 0.75 0.5 0 0.5
		 1 0.5 0 0.5 0 0.5 0.25 0.5 0.25 0.4375 0.25 0.4375 0.5 0.4375 0.75 0.4375 0 0.4375
		 1 0.4375 0 0.4375 0 0.4375 0.25 0.4375 0.25 0.5625 0.75 0.5625 0 0.5625 1 0.5625
		 0 0.5625 0 0.625 0.125 0.625 0.125 0.625 0.125 0.5625 0.125 0.5 0.125 0.4375 0.125
		 0.375 0.125 0.375 0.125 0.375 0.125 0.125 0.125 0.375 0.625 0.4375 0.625 0.5 0.625
		 0.5625 0.625 0.625 0.625 0.875 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".pt";
	setAttr ".pt[3]" -type "float3" -1.1920929e-07 0 0 ;
	setAttr ".pt[5]" -type "float3" -1.1920929e-07 0 0 ;
	setAttr ".pt[10]" -type "float3" -1.4901161e-07 -2.9802322e-08 0 ;
	setAttr ".pt[12]" -type "float3" -0.43969756 -1.4901161e-08 0 ;
	setAttr ".pt[13]" -type "float3" -0.43969756 -1.4901161e-08 0 ;
	setAttr ".pt[14]" -type "float3" -1.4901161e-07 -2.9802322e-08 0 ;
	setAttr ".pt[18]" -type "float3" -0.43969756 -1.4901161e-08 0 ;
	setAttr ".pt[19]" -type "float3" -0.43969756 -1.4901161e-08 0 ;
	setAttr ".pt[32]" -type "float3" 0.13535401 -0.14298347 7.4505806e-09 ;
	setAttr ".pt[33]" -type "float3" 0.13535389 -0.14298362 -4.6566129e-10 ;
	setAttr ".pt[34]" -type "float3" 0.13535401 -0.14298365 -7.4505806e-09 ;
	setAttr ".pt[35]" -type "float3" 0.71633899 0.9900471 0.0060517821 ;
	setAttr ".pt[36]" -type "float3" 0.17779322 0.45720962 3.3527613e-08 ;
	setAttr ".pt[37]" -type "float3" -5.9604645e-08 -1.4901161e-08 0 ;
	setAttr ".pt[38]" -type "float3" -5.9604645e-08 -1.4901161e-08 0 ;
	setAttr ".pt[43]" -type "float3" 0.17779334 0.45720956 3.3527613e-08 ;
	setAttr ".pt[44]" -type "float3" 0.63128197 0.9900471 0.0060517821 ;
	setAttr ".pt[45]" -type "float3" 0.13535389 -0.1429835 1.3969839e-09 ;
	setAttr ".pt[49]" -type "float3" -1.7881393e-07 2.9802322e-08 0 ;
	setAttr -s 46 ".vt[0:45]"  -7.56320715 0.025816679 0.25411189 -0.51569748 0.025816679 0.25411189
		 -7.56320715 5.6514101 0.25411189 -7.56320715 5.6514101 -0.25411189 -7.56320715 0.025816679 -0.25411189
		 -0.51569748 0.025816679 -0.25411189 -7.39309311 0.16160846 0.25411183 -0.68581152 0.16160846 0.25411183
		 -7.39309311 5.51561832 0.25411183 -7.39309311 0.16160846 -0.071934231 -0.68581152 0.16160846 -0.071934231
		 -7.39309311 5.51561832 -0.071934231 -4.039452553 5.6514101 0.25411189 -4.039452553 5.6514101 -0.25411189
		 -4.039452553 0.025816679 -0.25411189 -4.039452553 0.025816679 0.25411189 -4.039452553 0.16160846 0.25411183
		 -4.039452553 0.16160846 -0.071934231 -4.039452553 5.51561832 -0.071934231 -4.039452553 5.51561832 0.25411183
		 -5.80132961 5.6514101 0.25411189 -5.80132961 5.6514101 -0.25411189 -5.80132961 0.025816679 -0.25411189
		 -5.80132961 0.025816679 0.25411189 -5.71627283 0.16160846 0.25411183 -5.71627283 0.16160846 -0.071934231
		 -5.71627283 5.51561832 -0.071934231 -5.71627283 5.51561832 0.25411183 -2.27757502 0.025816679 -0.25411189
		 -2.27757502 0.025816679 0.25411189 -2.36263204 0.16160846 0.25411183 -2.36263204 0.16160846 -0.071934231
		 -0.51569748 2.83861351 0.25411189 -0.68581152 2.83861351 0.25411183 -0.68581152 2.83861351 -0.071934231
		 -2.36263204 2.83861351 -0.071934231 -4.039452553 2.83861351 -0.071934231 -5.71627283 2.83861351 -0.071934231
		 -7.39309311 2.83861351 -0.071934231 -7.39309311 2.83861351 0.25411183 -7.56320715 2.83861351 0.25411189
		 -7.56320715 2.83861351 -0.25411189 -5.80132961 2.83861351 -0.25411189 -4.039452553 2.83861351 -0.25411189
		 -2.27757502 2.83861351 -0.25411189 -0.51569748 2.83861351 -0.25411189;
	setAttr -s 84 ".ed[0:83]"  0 23 0 2 20 0 3 21 0 4 22 0 0 40 0 1 32 0
		 2 3 0 3 41 0 4 0 0 5 1 0 0 6 0 1 7 0 6 24 0 7 33 0 2 8 0 8 27 0 6 39 0 6 9 0 7 10 0
		 9 25 0 10 34 0 8 11 0 11 26 0 9 38 0 12 13 0 14 28 0 13 43 0 15 29 0 14 15 1 16 30 0
		 15 16 1 17 31 0 16 17 1 17 36 1 18 19 0 19 12 0 20 12 0 21 13 0 20 21 1 22 14 0 21 42 1
		 23 15 0 22 23 1 24 16 0 23 24 1 25 17 0 24 25 1 26 18 0 25 37 1 27 19 0 26 27 1 27 20 1
		 28 5 0 29 1 0 28 29 1 30 7 0 29 30 1 31 10 0 30 31 1 31 35 1 32 33 0 33 34 0 34 35 0
		 36 18 0 35 36 0 37 26 1 36 37 1 38 11 0 37 38 1 39 8 0 38 39 1 40 2 0 39 40 1 41 4 0
		 40 41 1 42 22 1 41 42 1 43 14 1 42 43 1 44 28 1 43 44 0 45 5 0 44 45 0 45 32 0;
	setAttr -s 39 -ch 156 ".fc[0:38]" -type "polyFaces" 
		f 4 19 48 68 -24
		mu 0 4 14 32 45 46
		f 4 1 38 -3 -7
		mu 0 4 2 26 27 3
		f 4 76 75 -4 -74
		mu 0 4 50 51 28 4
		f 4 3 42 -1 -9
		mu 0 4 4 28 30 6
		f 4 -10 -82 83 -6
		mu 0 4 1 8 55 40
		f 4 8 4 74 73
		mu 0 4 9 0 48 49
		f 4 0 44 -13 -11
		mu 0 4 0 29 31 11
		f 4 5 60 -14 -12
		mu 0 4 1 40 41 12
		f 4 51 -2 14 15
		mu 0 4 34 26 2 13
		f 4 -5 10 16 72
		mu 0 4 48 0 11 47
		f 4 12 46 -20 -18
		mu 0 4 11 31 32 14
		f 4 13 61 -21 -19
		mu 0 4 12 41 42 15
		f 4 -16 21 22 50
		mu 0 4 34 13 16 33
		f 4 -17 17 23 70
		mu 0 4 47 11 14 46
		f 4 -78 80 79 -26
		mu 0 4 19 52 53 35
		f 4 -29 25 54 -28
		mu 0 4 21 19 35 37
		f 4 -31 27 56 -30
		mu 0 4 22 20 36 38
		f 4 -33 29 58 -32
		mu 0 4 23 22 38 39
		f 4 -34 31 59 64
		mu 0 4 44 23 39 43
		f 4 36 24 -38 -39
		mu 0 4 26 17 18 27
		f 4 -76 78 77 -40
		mu 0 4 28 51 52 19
		f 4 -43 39 28 -42
		mu 0 4 30 28 19 21
		f 4 -45 41 30 -44
		mu 0 4 31 29 20 22
		f 4 -47 43 32 -46
		mu 0 4 32 31 22 23
		f 4 -49 45 33 66
		mu 0 4 45 32 23 44
		f 4 -50 -51 47 34
		mu 0 4 25 34 33 24
		f 4 35 -37 -52 49
		mu 0 4 25 17 26 34
		f 4 -80 82 81 -53
		mu 0 4 35 53 54 5
		f 4 -55 52 9 -54
		mu 0 4 37 35 5 7
		f 4 -57 53 11 -56
		mu 0 4 38 36 1 12
		f 4 -59 55 18 -58
		mu 0 4 39 38 12 15
		f 4 -60 57 20 62
		mu 0 4 43 39 15 42
		f 4 -66 -67 63 -48
		mu 0 4 33 45 44 24
		f 4 -69 65 -23 -68
		mu 0 4 46 45 33 16
		f 4 -70 -71 67 -22
		mu 0 4 13 47 46 16
		f 4 -72 -73 69 -15
		mu 0 4 2 48 47 13
		f 4 -75 71 6 7
		mu 0 4 49 48 2 10
		f 4 2 40 -77 -8
		mu 0 4 3 27 51 50
		f 4 -79 -41 37 26
		mu 0 4 52 51 27 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Picture" -p "Marco_roto";
	rename -uid "7ED29E94-47D4-1F8A-67EF-14B5BF67B8C1";
	setAttr ".rp" -type "double3" -3.9726874828338623 2.1537472009658813 1.5462344586849213 ;
	setAttr ".sp" -type "double3" -3.9726874828338623 2.1537472009658813 1.5462344586849213 ;
createNode mesh -n "PictureShape" -p "Picture";
	rename -uid "0910FB85-4026-E1AF-F66A-82BCDD870897";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[136:143]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 8 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "e[1]" "e[18]" "e[35]" "e[52]" "e[69]" "e[86]" "e[103]" "e[120]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 8 "e[16]" "e[33]" "e[50]" "e[67]" "e[84]" "e[101]" "e[118]" "e[135]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 22 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[33]" "e[35]" "e[50]" "e[52]" "e[67]" "e[69]" "e[84]" "e[86]" "e[101]" "e[103]" "e[118]" "e[120]" "e[135:143]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 113 ".uvst[0].uvsp[0:112]" -type "float2" 0 0 0.125 0 0.25
		 0 0.375 0 0.5 0 0.625 0 0.75 0 0.875 0 1 0 0 0.125 0.125 0.125 0.25 0.125 0.375 0.125
		 0.5 0.125 0.625 0.125 0.75 0.125 0.875 0.125 1 0.125 0 0.25 0.125 0.25 0.25 0.25
		 0.375 0.25 0.5 0.25 0.625 0.25 0.75 0.25 0.875 0.25 1 0.25 0 0.375 0.125 0.375 0.25
		 0.375 0.375 0.375 0.5 0.375 0.625 0.375 0.75 0.375 0.875 0.375 1 0.375 0 0.5 0.125
		 0.5 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.625 0.125 0.625
		 0.25 0.625 0.375 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0 0.75
		 0.125 0.75 0.25 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0
		 0.875 0.125 0.875 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875
		 1 0.875 0 1 0.125 1 0.25 1 0.375 1 0.5 1 0.625 1 0.75 1 0.875 1 1 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 90 ".vt[0:89]"  -7.32335234 0.21506667 0.15847404 -6.4856863 0.21506667 0.15847404
		 -5.64801979 0.21506667 0.15847404 -4.81035328 0.21506667 0.15847404 -3.97268701 0.21506667 0.15847404
		 -3.13502073 0.21506667 0.15847404 -2.29735422 0.21506667 0.15847404 -1.45968795 0.21506667 0.15847404
		 -0.62202168 0.21506715 0.15847412 -7.32335234 0.8117609 0.15847404 -6.4856863 0.8117609 0.15847404
		 -5.64801979 0.8117609 0.15847404 -4.81035328 0.8117609 0.15847404 -3.97268701 0.8117609 0.15847404
		 -3.13502073 0.8117609 0.15847404 -2.29735422 0.8117609 0.15847404 -1.45968795 0.8117609 0.15847404
		 -0.62202168 0.8117609 0.15847404 -7.32335234 1.40845513 0.15847401 -6.4856863 1.40845513 0.15847401
		 -5.64801979 1.40845513 0.15847401 -4.81035328 1.40845513 0.15847401 -3.97268701 1.40845513 0.15847401
		 -3.13502073 1.40845513 0.15847401 -2.29735422 1.40845513 0.15847401 -1.45968795 1.40845513 0.15847401
		 -0.62202168 1.40845513 0.15847401 -7.32335281 2.050058126 0.062210962 -6.48568678 2.050058126 0.062210962
		 -5.64802074 2.050058126 0.062210962 -4.81035376 2.050058126 0.062210962 -3.97268748 2.050058126 0.062210962
		 -3.13502121 2.050058126 0.062210962 -2.2973547 2.050058126 0.062210962 -1.45968843 2.050058126 0.062210962
		 -0.62202215 2.050058126 0.062210962 -7.32335281 2.8322444 -0.0057211518 -6.48568678 2.8322444 -0.0057211518
		 -5.64802074 2.8322444 -0.0057211518 -4.81035376 2.8322444 -0.0057211518 -3.97268748 2.8322444 -0.0057211518
		 -3.13502121 2.8322444 -0.0057211518 -2.2973547 2.8322444 -0.0057211518 -1.45968843 2.8322444 -0.0057211518
		 -0.62202215 2.8322444 -0.0057211518 -7.32335234 3.63260078 0.32284489 -6.4856863 3.63260078 0.32284489
		 -5.64801979 3.63260078 0.32284489 -4.81035328 3.63260078 0.32284489 -3.97268701 3.63260078 0.32284489
		 -3.13502073 3.63260078 0.32284489 -2.29735422 3.63260078 0.32284489 -1.45968795 3.63260078 0.32284489
		 -0.62202168 3.63260078 0.32284489 -7.32335377 4.092427731 1.07808733 -6.48568821 4.092427731 1.07808733
		 -5.6480217 4.092427731 1.07808733 -4.81035519 4.092427731 1.07808733 -3.97268891 4.092427731 1.07808733
		 -3.1350224 4.092427731 1.07808733 -2.29735589 4.092427731 1.07808733 -1.45968986 4.092427731 1.07808733
		 -0.62202358 4.092427731 1.07808733 -7.32335186 4.082577229 1.92137384 -6.4856863 4.082577229 1.92137384
		 -5.64801979 4.082577229 1.92137384 -4.8103528 4.082577229 1.92137384 -3.97268653 4.082577229 1.92137384
		 -3.13502026 4.082577229 1.92137384 -2.29735351 4.082577229 1.92137384 -1.45968771 4.082577229 1.92137384
		 -0.6220212 4.082577229 1.92137384 -7.32335186 3.93345594 2.60362816 -6.4856863 3.93345594 2.60362816
		 -5.64801979 3.93345594 2.60362816 -4.8103528 3.93345594 2.60362816 -3.97268653 3.93345594 2.60362816
		 -3.13502026 3.93345594 2.60362816 -2.29735351 3.93345594 2.60362816 -1.45968771 3.93345594 2.60362816
		 -0.6220212 3.93345594 2.60362816 -7.32335186 3.88629198 3.098190069 -6.4856863 3.88629198 3.098190069
		 -5.64801979 3.88629198 3.098190069 -4.8103528 3.88629198 3.098190069 -3.97268653 3.88629198 3.098190069
		 -3.13502026 3.88629198 3.098190069 -2.29735351 3.88629198 3.098190069 -1.45968771 3.88629198 3.098190069
		 -0.6220212 3.88629198 3.098190069;
	setAttr -s 161 ".ed[0:160]"  0 1 0 0 9 0 1 2 0 1 10 1 2 3 0 2 11 1 3 4 0
		 3 12 1 4 5 0 4 13 1 5 6 0 5 14 1 6 7 0 6 15 1 7 8 0 7 16 1 8 17 0 9 10 1 9 18 0 10 11 1
		 10 19 1 11 12 1 11 20 1 12 13 1 12 21 1 13 14 1 13 22 1 14 15 1 14 23 1 15 16 1 15 24 1
		 16 17 1 16 25 1 17 26 0 18 19 1 18 27 0 19 20 1 19 28 1 20 21 1 20 29 1 21 22 1 21 30 1
		 22 23 1 22 31 1 23 24 1 23 32 1 24 25 1 24 33 1 25 26 1 25 34 1 26 35 0 27 28 1 27 36 0
		 28 29 1 28 37 1 29 30 1 29 38 1 30 31 1 30 39 1 31 32 1 31 40 1 32 33 1 32 41 1 33 34 1
		 33 42 1 34 35 1 34 43 1 35 44 0 36 37 1 36 45 0 37 38 1 37 46 1 38 39 1 38 47 1 39 40 1
		 39 48 1 40 41 1 40 49 1 41 42 1 41 50 1 42 43 1 42 51 1 43 44 1 43 52 1 44 53 0 45 46 1
		 45 54 0 46 47 1 46 55 1 47 48 1 47 56 1 48 49 1 48 57 1 49 50 1 49 58 1 50 51 1 50 59 1
		 51 52 1 51 60 1 52 53 1 52 61 1 53 62 0 54 55 1 54 63 0 55 56 1 55 64 1 56 57 1 56 65 1
		 57 58 1 57 66 1 58 59 1 58 67 1 59 60 1 59 68 1 60 61 1 60 69 1 61 62 1 61 70 1 62 71 0
		 63 64 1 63 72 0 64 65 1 64 73 1 65 66 1 65 74 1 66 67 1 66 75 1 67 68 1 67 76 1 68 69 1
		 68 77 1 69 70 1 69 78 1 70 71 1 70 79 1 71 80 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0
		 77 78 0 78 79 0 79 80 0 72 81 0 73 82 0 81 82 0 74 83 0 82 83 0 75 84 0 83 84 0 76 85 0
		 84 85 0 77 86 0 85 86 0 78 87 0 86 87 0 79 88 0 87 88 0 80 89 0 88 89 0;
	setAttr -s 72 -ch 288 ".fc[0:71]" -type "polyFaces" 
		f 4 0 3 -18 -2
		mu 0 4 0 1 10 9
		f 4 2 5 -20 -4
		mu 0 4 1 2 11 10
		f 4 4 7 -22 -6
		mu 0 4 2 3 12 11
		f 4 6 9 -24 -8
		mu 0 4 3 4 13 12
		f 4 8 11 -26 -10
		mu 0 4 4 5 14 13
		f 4 10 13 -28 -12
		mu 0 4 5 6 15 14
		f 4 12 15 -30 -14
		mu 0 4 6 7 16 15
		f 4 14 16 -32 -16
		mu 0 4 7 8 17 16
		f 4 17 20 -35 -19
		mu 0 4 9 10 19 18
		f 4 19 22 -37 -21
		mu 0 4 10 11 20 19
		f 4 21 24 -39 -23
		mu 0 4 11 12 21 20
		f 4 23 26 -41 -25
		mu 0 4 12 13 22 21
		f 4 25 28 -43 -27
		mu 0 4 13 14 23 22
		f 4 27 30 -45 -29
		mu 0 4 14 15 24 23
		f 4 29 32 -47 -31
		mu 0 4 15 16 25 24
		f 4 31 33 -49 -33
		mu 0 4 16 17 26 25
		f 4 34 37 -52 -36
		mu 0 4 18 19 28 27
		f 4 36 39 -54 -38
		mu 0 4 19 20 29 28
		f 4 38 41 -56 -40
		mu 0 4 20 21 30 29
		f 4 40 43 -58 -42
		mu 0 4 21 22 31 30
		f 4 42 45 -60 -44
		mu 0 4 22 23 32 31
		f 4 44 47 -62 -46
		mu 0 4 23 24 33 32
		f 4 46 49 -64 -48
		mu 0 4 24 25 34 33
		f 4 48 50 -66 -50
		mu 0 4 25 26 35 34
		f 4 51 54 -69 -53
		mu 0 4 27 28 37 36
		f 4 53 56 -71 -55
		mu 0 4 28 29 38 37
		f 4 55 58 -73 -57
		mu 0 4 29 30 39 38
		f 4 57 60 -75 -59
		mu 0 4 30 31 40 39
		f 4 59 62 -77 -61
		mu 0 4 31 32 41 40
		f 4 61 64 -79 -63
		mu 0 4 32 33 42 41
		f 4 63 66 -81 -65
		mu 0 4 33 34 43 42
		f 4 65 67 -83 -67
		mu 0 4 34 35 44 43
		f 4 68 71 -86 -70
		mu 0 4 36 37 46 45
		f 4 70 73 -88 -72
		mu 0 4 37 38 47 46
		f 4 72 75 -90 -74
		mu 0 4 38 39 48 47
		f 4 74 77 -92 -76
		mu 0 4 39 40 49 48
		f 4 76 79 -94 -78
		mu 0 4 40 41 50 49
		f 4 78 81 -96 -80
		mu 0 4 41 42 51 50
		f 4 80 83 -98 -82
		mu 0 4 42 43 52 51
		f 4 82 84 -100 -84
		mu 0 4 43 44 53 52
		f 4 85 88 -103 -87
		mu 0 4 45 46 55 54
		f 4 87 90 -105 -89
		mu 0 4 46 47 56 55
		f 4 89 92 -107 -91
		mu 0 4 47 48 57 56
		f 4 91 94 -109 -93
		mu 0 4 48 49 58 57
		f 4 93 96 -111 -95
		mu 0 4 49 50 59 58
		f 4 95 98 -113 -97
		mu 0 4 50 51 60 59
		f 4 97 100 -115 -99
		mu 0 4 51 52 61 60
		f 4 99 101 -117 -101
		mu 0 4 52 53 62 61
		f 4 102 105 -120 -104
		mu 0 4 54 55 64 63
		f 4 104 107 -122 -106
		mu 0 4 55 56 65 64
		f 4 106 109 -124 -108
		mu 0 4 56 57 66 65
		f 4 108 111 -126 -110
		mu 0 4 57 58 67 66
		f 4 110 113 -128 -112
		mu 0 4 58 59 68 67
		f 4 112 115 -130 -114
		mu 0 4 59 60 69 68
		f 4 114 117 -132 -116
		mu 0 4 60 61 70 69
		f 4 116 118 -134 -118
		mu 0 4 61 62 71 70
		f 4 119 122 -137 -121
		mu 0 4 63 64 73 72
		f 4 121 124 -138 -123
		mu 0 4 64 65 74 73
		f 4 123 126 -139 -125
		mu 0 4 65 66 75 74
		f 4 125 128 -140 -127
		mu 0 4 66 67 76 75
		f 4 127 130 -141 -129
		mu 0 4 67 68 77 76
		f 4 129 132 -142 -131
		mu 0 4 68 69 78 77
		f 4 131 134 -143 -133
		mu 0 4 69 70 79 78
		f 4 133 135 -144 -135
		mu 0 4 70 71 80 79
		f 4 136 145 -147 -145
		mu 0 4 81 82 83 84
		f 4 137 147 -149 -146
		mu 0 4 85 86 87 88
		f 4 138 149 -151 -148
		mu 0 4 89 90 91 92
		f 4 139 151 -153 -150
		mu 0 4 93 94 95 96
		f 4 140 153 -155 -152
		mu 0 4 97 98 99 100
		f 4 141 155 -157 -154
		mu 0 4 101 102 103 104
		f 4 142 157 -159 -156
		mu 0 4 105 106 107 108
		f 4 143 159 -161 -158
		mu 0 4 109 110 111 112;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Bird_Statue";
	rename -uid "F318024B-4D12-4B23-7A7D-44BFD8F11563";
	setAttr ".t" -type "double3" 0 0 2.7674152527343301 ;
	setAttr ".rp" -type "double3" -8.7000162601470947 2.3696335703134537 -0.26313400268554688 ;
	setAttr ".sp" -type "double3" -8.7000162601470947 2.3696335703134537 -0.26313400268554688 ;
createNode transform -n "Bird" -p "Bird_Statue";
	rename -uid "C468AE14-4BD1-AF96-C88D-6BBF960FB2E5";
	setAttr ".rp" -type "double3" -8.695289134979248 2.6007031798362732 -0.58681666851043701 ;
	setAttr ".sp" -type "double3" -8.695289134979248 2.6007031798362732 -0.58681666851043701 ;
createNode mesh -n "BirdShape" -p "Bird";
	rename -uid "8F420350-44E6-9EDE-AFD2-DD879C2F1397";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1503 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.045172691 -0.025709629 -0.1020391 
		0.019022942 -0.01097852 -0.054573119 0.030540466 0.031643271 -0.047088802 0.0015268326 
		-0.0038081408 0.067694753 0.012681961 0.042989165 0.055664033 -0.0061454773 0.0029914379 
		-0.0025706291 -0.019516945 0.015020609 -0.037805557 0.032966614 0.082648337 -0.079236209 
		0.0080537796 -0.01077801 -0.042563379 0.019897461 -0.01756537 -0.054279864 0.016970634 
		-0.0037750006 -0.051848114 0.025488853 -0.0020139217 -0.070968807 0.0085411072 0.032625556 
		-0.048865795 -0.016339302 0.0023462176 -0.021565795 0.011236191 -0.0017634034 0.018891305 
		-0.0036067963 0.0055701733 0.033909112 0.022838593 0.00086820126 -0.062679559 0.0025177002 
		0.057410061 -0.051665679 0.015127182 0.1149177 -0.11135021 0.003361702 0.00327003 
		0.051961511 0.0043592453 0.056162298 0.10308549 -0.00028705597 -0.0028873682 -0.00140962 
		-0.0030479431 0.0032669306 0.0067396164 0.014014244 -0.0056993961 0.0010564923 -0.0069303513 
		-0.01191783 0.016206503 -0.025234222 -0.017683744 -0.052810907 -0.02657032 -0.0032589436 
		-0.040519118 0.031790733 0.05480814 0.028857708 -0.017429352 0.0013941526 -0.027615428 
		-0.007601738 0.033030987 -0.014369011 -0.0082874298 0.0038012266 0.0035458803 0.002913475 
		0.01136744 -0.046803594 -0.0027723312 0.025125742 -0.016100764 0.032447815 -0.018177748 
		-0.03173399 0.07905674 -0.04736495 -0.05694747 -0.021033287 -0.0040192604 0.028733015 
		-0.032874107 0.075745821 0.011617899 0.054699898 -0.015650988 -0.042831659 0.0037269592 
		0.040325284 0.030041695 -0.0035152435 0.031665325 -0.035391569 -0.006816864 0.025435925 
		-0.021154881 0.010782242 -0.0033884048 -0.00049138069 0.090366364 -0.091739178 -0.00066304207 
		-0.015730858 -0.11056542 -0.10378838 0.041461945 -0.099974871 -0.061512232 0.047109604 
		-0.015928984 -0.0417068 0.021468163 0.0065199137 0.0097670555 -0.031770706 -0.03072381 
		-0.032081842 -0.010320663 -0.0016760826 0.0027918816 -0.0040712357 0.0012372732 0.0045685768 
		-0.005396843 -0.0010734797 -0.00081157684 -0.02445507 -0.0016789436 -0.00077009201 
		-0.028375626 -0.0067448616 -0.020241737 -0.024539948 0.0064940453 0.0092810392 -0.016542435 
		-0.0071713924 -0.0022629499 -0.011345863 -0.0056579113 -0.0041725636 -0.0055961609 
		0.00090956688 0.00092756748 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 -0.022866249 -0.0085043907 -0.0019531846 -0.054729462 0.0041108131 0.017455995 
		-0.07253933 0.012138605 0.042329103 -0.073937416 0.069504261 0.14563179 -0.061476707 
		-0.021760464 -0.028201655 -0.05588913 0.011222839 0.041624099 -0.044805527 -0.010857582 
		-0.011109889 -0.035365105 -0.029147625 -0.044384062 -0.032225609 -0.0098509789 -0.016239047 
		-0.021471024 -0.0034475327 -0.013304234 -0.02044487 -0.0023355484 -0.0051141977 -0.016155243 
		-0.013420105 0.0080699921 -0.018683434 -0.0099902153 0.0040850639 -0.016196251 0.0043034554 
		-0.0051771402 -0.014461517 -0.014241695 0.01207149 -0.01113987 -0.029926777 0.032127023 
		0.033378601 0.029099941 -0.020376205 0.039721489 -0.046804905 0.056959033 0.050103188 
		-0.096529961 -0.049450994 0.0021085739 -0.0071845055 -0.018958926 0.016949654 0.017564774 
		0.020973921 0.061831474 0.030455589 0.033453465 -0.037900925 0.041265965 0.024291515 
		-0.046804428 -0.041576147 -0.021969676 -0.064538002 0.13922477 0.054406106 -0.068487167 
		0.042699814 0.01349175 -0.067397118 0.035189867 0.019642174 -0.061803818 0.026273012 
		0.022657275 -0.058232307 0.01851058 0.012481481 -0.04984951 -0.0030255318 -0.011363477 
		-0.042551994 0.0017514229 -0.0050617754 -0.034182549 -0.020889997 -0.027116567 -0.021205902 
		0.021410346 0.019042119 -0.036804199 -0.0069929361 -0.0075499713 -0.035193443 0.0084199905 
		0.019284785 -0.032546043 -0.0031526089 0.0075698793 -0.029239655 0.002820611 0.026780516 
		-0.029619217 -0.0050499439 0.013231426 -0.031715393 -0.0070486069 0.0049312711 -0.026208878 
		0.0025668144 -0.008125484 -0.0094537735 -0.0009727478 0.0030513406 -0.023906708 0.001940012 
		-0.0032150745 -0.026093483 0.0090939999 0.021261096 -0.024273872 0.0073769093 -0.011353612 
		-0.036817551 -0.019845009 0.030896187 -0.044322014 -0.0075960159 0.019813657 -0.042174339 
		-0.011550903 -0.0020887852 -0.034700394 0.0011435747 0.028374195 -0.038988113 -0.00017297268 
		0.025187969 -0.041008949 -0.0045099258 0.0076422691 -0.034739494 -0.0088672638 -0.020156145 
		0.053625107 -0.014814258 -0.088773966 0.004781723 0.0074083805 -0.0062372684 0.0078086853 
		0.015278578 0.040723085 0.0097780228 0.021119118 0.048110962 -0.0082626343 0.020965338 
		0.014387846 -0.022327423 0.0015902519 0.0054161549 -0.0096139908 0.0072344542 0.012559891 
		0.018420219 0.0031015873 -0.013246536 0.063013077 -0.028641224 0.044160604 0.040493965 
		0.035113811 -0.035322666 0.035463333 -0.036596298 0.056428432 0.016653061 -0.048598766 
		0.01354599 -0.01666069 -0.12866497 -0.12056911 -0.017867088 -0.13838387 -0.13515258 
		-0.030493736 0.026602268 -0.0074000359 0.018889427 0.0042691231 -0.0063602924 0.016338348 
		0.010404587 -0.0160833 0.018545151 0.010699272 0.010573655 0.0063800812 0.0079100132 
		0.0052729547 0.0031299591 -0.0073719025 0.00094646215 0.0030260086 -0.093758464 0.082018465 
		0.034187317 0.11440301 -0.093608707 -0.016677856 0.024493754 -0.025905132 0.01493454 
		0.031542718 -0.032592148 0.011576653 0.016294539 -0.03158468 -0.0014009476 -0.0067554712 
		0.0049211085 -0.00045394897 0.0013732314 0.013365746 0.0086660385 0.014674008 -0.024235129 
		-0.017958641 -0.025083899 0.04529199 -0.0062084198 1.6391277e-05 0.010916322 -0.018106461 
		-0.0094015002 0.043432266 -0.015548706 -0.0038757324 0.0448578 -0.017079353 0.0092416406 
		0.051256567 0.013957977 0.0067604184 -0.016856253 0.034414291 0.043762922 -0.043119371 
		0.015577316 0.033587217 -0.060391009 0.017313004 0.027781487 -0.048494935 0.021309853 
		0.025745869 -0.047376812 0.014086723 0.0038499832 -0.013255745 0.019631386 -0.0012020469 
		-0.014858752 -0.024033546 -0.013947546 0.046096057 -0.021184921 -0.01622498 0.046750903 
		-0.0040197372 -0.0041978359 0.014445037 0.013442039 0.022494972 -0.028474778 0.0002374649 
		-0.011316359 0.017397523 0.0098323822 0.0080251694 -0.0097165108 0.0056362152 -0.025831461 
		0.05548209;
	setAttr ".pt[166:331]" 0.0071058273 -0.003013432 0.045946032 -0.019365311 
		-0.0062156916 0.027483016 0.010857582 -0.078990936 0.05171591 -0.001698494 -0.0044057369 
		0.0033057332 -0.0047559738 -0.0038974285 0.0030645132 -0.0077056885 0.0097126961 
		-0.0085175037 0.02325058 0.0084989071 -0.0074980259 0.021766663 -0.0027148724 0.0030174255 
		0.038338661 -0.0048391819 -0.0020335913 0.038877487 -0.00030779839 0.019382954 0.042626381 
		0.0033782721 -0.023768902 0.075093269 0.0083237886 -0.016741991 0.10314083 0.020957232 
		-0.016002059 0.098822594 0.01803863 -0.023819089 0.1029129 0.028591394 0.011577606 
		0.097001076 0.024306893 0.0081455708 0.084389687 0.016214371 0.0036177635 0.055245399 
		0.0074036121 0.0052583218 -0.009314537 0.0026065111 0.031526089 -0.012961388 -0.0065962076 
		0.012629986 0.00013256073 0.0027965307 -0.009105444 0.054398537 -0.027488589 -0.074489355 
		0.020487785 0.010601282 0.0041246414 0.076272964 0.013253331 -0.023377895 0.08225441 
		0.025476456 -8.4400177e-05 0.081371307 0.020136356 0.0084900856 0.077752113 -0.0022354126 
		-0.019685984 0.072880745 -0.0018100739 -0.014957309 0.059482574 -0.005551815 -0.03442359 
		0.052856445 0.0038878918 -0.0071709156 0.054568291 -0.0015332699 -0.014597893 0.048339844 
		-0.00045061111 -0.012130141 0.020256996 0.0054235458 -0.00099408627 0.010369301 -0.0018901825 
		-0.0016582012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.022737503 0.008433342 
		0.0020342469 0.056304932 8.7022781e-05 -0.0079738498 0.098218918 0.020878315 0.0071002841 
		0.12459755 0.03173852 0.027875274 0.12857246 0.088582039 0.12940295 0.085724831 -0.0095157623 
		-0.041859806 0.075750351 0.02266407 0.028526813 0.056056023 -0.001871109 -0.020462751 
		0.049215317 -0.022394657 -0.056205809 0.057276726 -0.0031075478 -0.035381079 0.062182426 
		0.0082349777 -0.034395695 0.066368103 0.014121532 -0.012612581 0.068277359 -0.005592823 
		0.015850067 0.064346313 -0.00041151047 0.0095596313 0.054657936 0.013237 -0.0016841888 
		0.058444977 -0.0090446472 0.018387079 0.0094823837 -0.023018837 0.026708364 -0.0097198486 
		-0.035419941 -0.015774846 0.0013904572 -0.017912865 -0.024924397 -0.023225784 0.024913549 
		-0.012225389 0.064991951 0.031296015 0.029778719 0.064509392 -0.056206226 -0.01724577 
		0.1054697 0.12683535 0.067490816 0.10189247 0.030458212 0.026370943 0.10431194 0.026804209 
		0.035658956 0.092159271 0.017145157 0.036562145 0.08455658 0.010308743 0.026007384 
		0.075204849 -0.010649681 0.00030174851 0.063385963 -0.0056324005 0.0042669028 0.04289341 
		-0.027464151 -0.021188356 0.042450905 0.020551443 0.027524464 0.033116341 -0.011561751 
		-0.0055620372 0.022815704 0.012291908 0.010187477 0.019088745 0.013438702 0.0095518827 
		0.012266159 -0.00185287 -0.003651917 0.0014562607 -0.007214427 -0.0027487576 0.0021066666 
		-0.015179634 0.0087614954 0.0076036453 -0.094215393 0.096702039 0.0096073151 0.19289893 
		-0.15088148 -0.0059537888 0.063903034 -0.038840547 0.010004997 0.074525237 -0.078730777 
		0.0017318726 0.031208694 -0.035231188 0.01965332 0.033571362 -0.07003808 0.014503479 
		-0.00022119284 -0.011899084 -0.00073623657 0.00065565109 0.01878944 0.024853706 0.0011835098 
		0.0067213476 0.0064296722 0.016826093 0.026112556 0.017518044 0.00034677982 -0.02726537 
		0.043190002 0.0017687082 -0.041485727 0.023158073 -0.012978911 -0.022157162 0.012942314 
		-0.0042470098 -0.021376938 0.028909683 0.0078437328 -0.02239722 -0.016108513 -0.028109074 
		0.041995674 -0.014211655 0.0094506145 -0.00096103549 -0.031401634 0.003108263 0.044714153 
		-0.026028633 0.04528451 0.043695539 -0.0057420731 -0.0026807785 0.0057854354 -0.011065483 
		-0.00087755919 0.025482684 -0.014440536 -0.0047898293 -0.03859967 -0.021883965 0.023989618 
		-0.014975548 -0.016933441 -0.011734903 -0.041983783 0.0052185059 -0.036681294 0.013746858 
		-0.0012922287 -0.010630548 0.026178241 -0.010785103 -0.0025998354 0.029152989 -0.027599335 
		0.054660857 -0.033077717 0.0088644028 0.1794703 -0.14124429 0.0019741058 -0.0083874464 
		0.017028153 0.010918617 -0.015256524 0.016686976 0.0049829483 -0.0093086958 0.0078626275 
		0.0043363571 0.0090062618 -0.0085142851 -0.00578022 -0.0027583838 0.0054696202 0.013774872 
		-0.010985255 0.007879436 -0.001124382 0.014175653 -0.029395759 -0.017374039 0.016288161 
		0.018692732 -0.017765999 0.0064342022 -0.021650314 0.0027618408 -0.0045175552 -0.020983458 
		0.021485329 0.0057777166 -0.011713266 0.020115852 0.0026445389 -0.019167542 0.015574455 
		0.013776302 0.024582148 0.015729904 0.012269974 0.019279003 0.011499405 0.0080655813 
		0.010689974 0.0045776367 0.0077645779 0.024634838 -0.0015392303 0.0035806894 0.015208721 
		0.044020653 0.036117435 0.021238565 0.024737358 0.01345253 0.015224934 0.0051670074 
		0.02934432 -0.0043113232 0.022434235 0.013439059 0.013308048 0.018801689 0.013122559 
		0.018279791 0.014316559 -0.007854104 -0.02169919 0.011154175 -0.0029535294 -0.015725374 
		0.0012130737 -0.0071902275 -0.035803437 -0.0014467239 -0.0020337105 -0.0051165819 
		0.010248184 -0.0050809383 -0.012068629 0.011282921 -0.0030472279 -0.010484457 0.0058813095 
		0.010211229 0.00021970272 0.0059518814 -0.011742592 -0.004660964 0.0008687973 -0.0027163029 
		-0.0012803078 -9.6321106e-05 -0.0027396679 -0.0013719797 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 -0.0043830872 0.0027799606 0.0042793751 -0.0017118454 -0.0066344738 
		-0.0017569661 0.0034914017 0.0099554062 0.013575405 0.0062427521 0.014829874 0.028993219 
		0.02973175 0.077687502 0.13224837 -0.017572403 -0.026159763 -0.032331526 -0.014538765 
		0.0047111511 0.038883746 -0.023575783 -0.020609856 -0.0099518895 -0.022247314 -0.045179367 
		-0.0541448 -0.024798393 -0.037042141 -0.047620773 -0.02380085 -0.021590233 -0.046969056 
		-0.024998665 -0.017379761 -0.019534111 -0.0087938309 -0.035348892 0.014968157 -0.0071792603 
		-0.031467438 0.0098290443 -0.0048036575 -0.0072011948 0.001377821 -0.045285225 -0.10022068 
		-0.021478653 -0.0024986267 -0.022723675 -0.036559343 -0.020998001 -0.12156487 -0.18103933;
	setAttr ".pt[332:497]" -0.017974854 0.025224924 -0.01572454 0.025814056 0.023629665 
		0.025563717 0.021012306 -0.065844536 -0.018810034 0.073265076 0.11282682 0.062403381 
		0.058987617 0.018760204 0.022000015 0.055636406 0.012928724 0.032171726 0.043206215 
		0.012200832 0.037253618 0.036578178 0.0088510513 0.028824449 0.032274246 -0.010792255 
		0.0045306683 0.022697449 -0.0046854019 0.0074171871 0.011006355 -0.022530556 -0.016531838 
		0.014251709 0.019013882 0.028235167 0.016744614 -0.013605714 0.00064791739 0.0074033737 
		0.0065872669 0.0053880215 -0.0052728653 0.012013793 -0.0020339191 -0.0066184998 0.0098198652 
		-0.015207916 -0.00068187714 -0.0069601536 -0.0038588941 0.0032491684 -0.0060657263 
		0.0075656474 0.0077762604 -0.013043046 0.021160454 4.4822693e-05 -0.012555599 0.023654878 
		0.00019645691 -0.082134604 0.090672642 -0.0036497116 -0.085718274 0.079352051 0.0036458969 
		-0.08913362 0.070254952 -0.0090360641 0.18407154 -0.16181435 -0.0068235397 0.19180542 
		-0.15022629 -0.0087385178 0.047153711 -0.049573407 -0.027472496 0.042734385 -0.025721708 
		0.060976982 0.058420241 -0.03755106 -0.0043535233 0.0081854463 -0.015565306 -0.0013141632 
		0.0015491247 -0.0060519725 -0.02504158 0.0017598867 0.020893946 0.0026626587 0.019051015 
		0.0038689226 -0.0039539337 -0.0019806623 0.0071639121 -0.018131256 0.011286497 -0.003310293 
		-0.0059204102 -0.00049966574 0.0034807622 -0.0021572113 -0.0082114339 0.024570346 
		-0.042736053 0.0047461987 0.052503854 0.0010538101 0.021650374 -0.016512021 -0.0098314285 
		0.017917454 -0.02997531 0.01488018 0.02331841 -0.022808388 -0.0044364929 -0.0058965087 
		0.04760015 0.0023508072 0.0011713505 -0.0065025436 -0.0014238358 0.0014858842 -0.013908879 
		-0.010091782 -0.0025829077 0.049577221 0.0058107376 0.005822897 0.043168545 0.0065393448 
		-0.0060902834 0.051857352 0.026680946 0.17882288 -0.17506774 0.0057687759 0.17468339 
		-0.15017663 0.010313034 0.16502422 -0.13984919 -0.012633324 0.14840311 -0.13749382 
		-0.00031757355 0.16119182 -0.14578304 -0.0020561218 0.16874796 -0.15041146 0.0004901886 
		-0.081500173 0.071983665 0.012936592 -0.083875537 0.076261312 0.0033807755 -0.081773162 
		0.077040106 -0.0042266846 -0.016640186 0.012103975 0.0023136139 -0.01924479 0.0090735555 
		-0.008523941 -0.0059043169 0.009124279 -0.0090885162 0.012240529 -0.0021759868 -0.012947083 
		-0.0048516989 0.015564144 0.004357338 -0.0069568157 0.0059362054 0.0013418198 0.0048987865 
		0.015552998 -0.026508331 0.015766859 -0.040812075 -0.024227142 -0.012329221 -0.00082606077 
		-0.020140648 0.015491486 -0.0080900788 -0.011427879 0.013376474 -0.035714507 -0.024962425 
		0.031552434 0.0039658546 -0.0015354156 0.0059013367 0.02236414 0.023994446 0.029009938 
		-0.0027801991 -0.0068750381 -0.0024913549 0.0080850124 -0.029369354 -0.032293081 
		-0.022531986 -0.013394356 -0.012877822 -0.03371501 -0.00011253357 0.019521117 -0.037225723 
		-0.010016441 0.0099115372 -0.031914711 0.0054302216 -0.0031914711 -0.022904634 -0.0027475357 
		0.0069799423 0.026725531 0.019395828 0.024677277 -0.00024533272 -0.015851021 -0.006901145 
		0.024510145 -0.020143509 -0.012904048 0.032527924 -0.0259161 -0.036453485 -0.0079302788 
		-0.024852753 -0.030920863 -0.0021626949 -0.0088329315 0.0091465712 -0.037697196 0.054702759 
		0.03463757 0.0068871975 0.056089401 0.041266918 0.012717009 0.0049762726 0.0080593824 
		0.015820503 0.0056905746 0.041015625 -0.0041787624 0.016085625 0.021987915 0.0051321983 
		0.0067892075 -0.0028187037 -0.036531091 0.0020980835 -0.00073683262 -0.023891807 
		0.050162315 0.0088777542 -0.046055317 -0.00058364868 0.020233631 0.014235497 0.0021066666 
		0.021815896 -0.048412442 0.0081796646 0.044853926 -0.0031442642 0.035897255 -0.0060153008 
		-0.036788344 -0.010353088 -0.00093662739 -0.036896348 -0.0073194504 -0.011490583 
		-0.033460498 -0.032221794 0.0047707558 -0.044692039 -0.036554337 -0.0023610592 -0.063958645 
		-0.025567055 0.032819986 -0.053205132 -0.0058908463 0.0059909821 -0.043448091 -0.043883324 
		0.045542002 0.025583267 -0.024038315 -0.010319948 -0.05908668 -0.021075249 0.01016736 
		-0.037022829 -0.056235313 0.010774612 -0.017533898 -0.020340919 0.013069153 -0.046036959 
		-0.016382217 0.017698288 -0.016980886 -0.0057649612 -0.013109207 -0.013380051 -0.0066843033 
		-0.0068325996 -0.007557869 -0.0089416504 -0.013023615 -0.01062119 -0.0086488724 0.003626585 
		0.00089013577 -0.0074453354 0.0053448677 0.0040597916 -0.0033483505 -0.0026717186 
		-0.001650691 0 0 0 0 0 0 0 0 0 -0.005068779 -0.0022652149 0.0014784336 -0.022098541 
		-0.060649872 -0.0037202835 -0.0036668777 -0.007850647 -0.10412145 0.0057106018 -0.1297946 
		-0.22648716 -0.024542809 0.042250156 -0.043504119 -0.0069561005 0.023939848 0.0050549507 
		-0.0090055466 0.019339561 0.012528211 0.011601448 -0.0035939217 0.011580855 -0.0022182465 
		0.0094203949 -0.0028575361 0.00034713745 0.0090241432 -0.0084580183 0.00033187866 
		-0.007994771 0.003316462 -0.00038909912 -0.0060700178 0.0099266171 0.0070257187 -0.01044476 
		9.8764896e-05 -0.0030889511 -0.015308976 0.016110718 -0.0024299622 -0.085416436 0.071758658 
		0.008934021 0.0065872669 -0.012760997 0.0010871887 -0.0034829378 0.001452744 0.010182381 
		-0.0085006952 -0.0019766688 -0.0013551712 -0.0027487278 0.0087468028 0.0016841888 
		-0.0065611601 0.004570663 0.0017604828 -0.0094337463 -0.0057188272 -0.00016307831 
		0.001065135 0.0028194189 0.0013561249 0.0030425787 0.012934387 0.007601738 -0.0049737692 
		-0.011475921 0.0073804855 0.0058456659 -0.041863084 -0.028585434 0.047857761 0.018623888 
		-0.019628525 0.021876097 0.025262833 0.0045223236 -0.0068012476 0.0037881136 0.024185181 
		-0.018799901 -0.014092684 0.02087307 -0.023440123 -0.031961322 0.0048217773 -0.0056467056 
		0.0068070889 -0.026472092 0.019810915 -0.02412951 -0.013402939 -0.010318875 -0.028062463 
		0.0080051422 -0.00097703934 -0.020593524 -0.0096378326 0.0074706078 -0.010825634 
		-0.086269379 0.054197788 0.057820916 0.032184601 -0.028542519 0.020395637 -0.045557022 
		0.081861734 0.029453278 -0.0048656464 0.040519476 0.056306958 -0.01219368 0.020612478 
		-0.021065354 -0.010160446 0.0066661835 -0.038572192 -0.011263847 -0.013728619 -0.022966802 
		0.0099506378 0.061199188 0.011757672 -0.015231133 0.036981344 -0.024778664 -0.011826515 
		0.036136389 0.00083583593 -0.0066719055 0.018488288 -0.024439871 0.003947258 0.014379263 
		-0.04865551 -0.023212433 0.028155327 0.0073289871 -0.02316761 0.01426971 -0.0011461973 
		0.00066947937 -0.010071039 -0.066540837 0.0065116882 0.017090917 0.074281573;
	setAttr ".pt[498:663]" 0.013823509 0.048438191 0.10810566 -0.005821228 0.036361217 
		0.03889513 -0.021497726 0.0063891411 -0.064392447 -0.0063781738 -0.0053720474 -0.02266252 
		-0.0092115402 0.014032841 -0.012759566 0.012765884 0.008995533 -0.027877331 0.010440826 
		0.00047373772 -0.043184757 -0.0043487549 0.013861537 -0.00015282631 0.0074214935 
		-0.025460005 -0.038542151 -0.015925407 -0.0086507797 -0.035793066 -0.0061454773 -0.0033017397 
		-0.030982852 0.0091533661 0.0013432503 -0.062324166 -0.0019636154 -0.0083036423 -0.064866543 
		-0.081677437 0.064761639 -0.062409163 0.012981415 -0.02058506 0.0022629499 -0.009771347 
		-0.021958828 0.0139575 -0.0092849731 0.021251678 -0.0040463209 0.00092124939 -0.0035071373 
		-0.0042682886 -0.016021729 0.030064821 -0.020640731 -0.0073328018 0.0035195351 -0.028574944 
		-0.0084447861 0.0077774525 -0.021496534 -0.0097055435 -0.00051045418 -0.029139876 
		-0.012701035 0.020160675 -0.0074205399 -0.012914658 0.021611452 -0.00067782402 -0.01151371 
		0.010619164 -0.0068178177 -0.013023376 0.027433634 0.013308525 -0.021538734 0.028791428 
		0.021091938 0.0017967224 -0.037301302 -0.036763668 -0.0049991608 -0.016856909 -0.026714146 
		-0.0067853928 -0.012430191 -0.0062334538 0.013063431 0.013198376 -0.057183743 -0.01536274 
		-0.026912451 0.077926576 0.011080742 0.034235477 -0.024816692 -0.016845703 0.04025054 
		-0.01330322 -0.01581192 0.033663988 -0.01931119 -0.0079860687 0.011373281 -0.0092161894 
		0.010087013 0.029608369 0.12627053 -0.017500877 0.030686736 0.08672452 -0.015873909 
		0.024006724 0.087938905 0.0067720413 0.043268442 0.075118423 0.033886909 -0.049366474 
		-0.056087494 0.034107208 -0.08360219 -0.029005289 0.038377762 -0.08059454 0.0081759691 
		-0.015755653 -0.012709618 -0.042970896 -0.019842148 -0.0064074993 -0.022128463 -0.0060396194 
		0.0004928112 -0.02024734 -0.0047454834 -0.0043759346 -0.038658261 0.0034637451 7.1525574e-07 
		-0.028366566 -0.011335373 -0.0037312508 -0.024563313 -0.011666298 -0.024067163 -0.040948987 
		-0.00046539307 -0.033449888 -0.023310304 -0.021110535 -0.047420502 -0.024209619 -0.040236473 
		0.010759115 -0.02084136 0.015268326 0.010057211 -0.044203281 -0.0015707016 0.014202714 
		-0.0011651516 -0.0091819763 -0.0048006773 -0.029759765 0.005812645 -0.017755508 -0.027605295 
		-0.013776779 -0.036112547 -0.041234851 -0.020591736 0.026329994 -0.058157802 0.040332794 
		-0.042815208 0.014126062 0.0052480698 -0.0068349838 -0.0050989389 -0.020626068 0.070402145 
		0.033630133 0.01331234 -0.0061645508 0.057938218 -0.0080471039 -0.030578852 -0.030982316 
		-0.020348549 -0.029639482 0.086737692 0.012271881 0.045224667 -0.022179902 -0.010737419 
		0.014270067 -0.044799268 -0.00032520294 -0.0063495636 -0.061572433 -0.0052690506 
		0.0065665245 -0.0085439682 0.00090122223 -0.0077924728 -0.04702127 0.0032730103 -0.0085586309 
		-0.0858289 0.014933586 0.0027942657 0.027929902 0.012076378 -0.0057070255 0.022250533 
		0.0028800964 0.0066690445 -0.035784364 0.044897079 -0.050521612 0.012972951 0.010000229 
		0.0015170574 -0.017888308 -0.0066995621 -0.0089483261 0.0076341629 -1.9073486e-06 
		0.0016183853 0.0021874905 0.0085420609 -0.0090944767 0.015407562 0.0064058304 -0.0091612339 
		0.014517188 -0.0012712479 0.0035703182 0.00087797642 -0.0067586899 0.018620729 0.0041083097 
		-0.0016775131 0.00074362755 -0.0071877241 -0.0038337708 0.0083296299 -0.0021210909 
		-0.0015449524 0.00010824203 -0.0069893599 -0.0053701401 0.019492149 0.015402079 -0.0046520233 
		0.019748449 0.020790815 -0.0035829544 0.011386395 0.010023475 -0.0079116821 0.032905579 
		0.035314083 -0.014788628 0.034695387 0.030288994 0.0061063766 -0.04525876 -0.057071865 
		-0.016895294 -0.030682087 -0.040199161 -0.0081510544 -0.00077390671 0.043915212 -0.011548042 
		-0.034329891 0.072444081 -0.015400887 -0.036457777 0.080155849 -0.017195702 -0.041992664 
		0.050178647 -0.022844315 -0.041748524 0.069612503 -0.020212173 -0.031230927 0.06009829 
		0.012757301 0.03170681 -0.030547619 0.024754524 0.0074226856 -0.058227301 0.024114609 
		-0.036520958 -0.078614473 0.021464348 -0.035006762 -0.02669239 0.0043420792 -0.043622255 
		-0.022067785 -0.0062599182 -0.005158186 0.0095086098 -0.0245924 0.0029008389 -0.026233435 
		-0.034064293 0.016803741 -0.026211023 0.039805412 -0.05834198 0.0030043125 0.046244621 
		-0.042001963 0.033575654 -0.0016717911 -0.0057816505 0.00085949898 0.0067996979 -0.0044031143 
		0.026893973 0.0069923401 -0.0038926601 0.028993726 0.0012779236 -0.034132957 -0.059703171 
		-0.011245728 0.0022032261 0.027752399 -0.016777992 -0.0093245506 0.050563812 0.0083322525 
		0.029197454 -7.4863434e-05 0.0085353851 -0.017343283 -0.015412807 -0.00065612793 
		-0.0022256374 -0.00093317032 0.0021295547 0.00024747849 0.011941552 0.002035141 -0.0038423538 
		0.002191782 0.0049495697 -0.0045361519 0.01666975 0.012729645 -0.025491238 0.012385964 
		0.0095090866 -0.017014742 0.012967944 0.013899803 -0.026418209 0.0082359314 0.012112617 
		-0.014931679 0.028398514 0.014584541 -0.015346527 0.032529593 0.021214485 -0.024394274 
		0.023733497 0.020359993 -0.0091898441 0.047083259 0.021473885 -0.005702734 0.033516645 
		-0.021353722 -0.0015745163 0.040325999 -0.012623787 -0.02252388 0.019377947 -0.015181541 
		-0.047032595 0.052451968 0.013242722 -0.0070626736 -0.037855744 0.04731369 -0.064175844 
		-0.0034108162 0.003033638 0.0070450306 -0.0012506247 -0.0078163147 -0.011938572 0.012383819 
		-0.022997856 -0.018853903 0.01056397 -0.021604538 -0.0095098019 0.020623565 -0.02392292 
		-0.028670788 0.033755898 0.0077962875 0.034106731 0.0026212931 -0.006483078 -0.070497036 
		0.0067294836 -0.0048923492 -0.045485497 0.00037992001 -0.00096511841 -0.035811663 
		-0.012417793 -0.0038547516 -0.00049233437 0.004712224 -0.00037670135 0.0033781528 
		0.0054008961 0.00029754639 -0.0055532455 -0.0055612326 -0.0051364899 -0.0059144497 
		-0.0014795065 -0.011424065 -0.034300327 -0.009205699 -0.0092363358 -0.016817093 -0.0097993612 
		-0.01478672 -0.018796682 0.02110076 -0.020612717 -0.009770155 0.015229106 -0.0070915222 
		-0.018567801 -0.0051971674 -0.001411438 -0.017679691 -0.013451695 0.010362625 -0.017186642 
		-0.0025479794 0.011730194 -0.01854372 -0.0040721893 -0.0023994446 -0.065241814 0.018886566 
		-0.012152672 0.032120705 -0.0010470748 -0.015950203 0.056770802 0.012460828 0.01241684 
		0.059582949 0.0095100403 -0.013998032 -0.046721458 0.02691108 -0.0031862259 -0.010383129 
		-0.017532647 0.028373718 0.0043950081 -0.017138362 0.0040225983 0.0048673153 -2.9683113e-05 
		0.0066576004 0.0099232197 0.0051417649 0.012172699 0.016017199 0.015446156 0.039330482 
		0.080824375 0.11501873 -0.024633408 -0.037920475 -0.0361166;
	setAttr ".pt[664:829]" -0.01787281 -0.0096440315 0.03813237 -0.02788353 -0.035731792 
		-0.011335075 -0.024562836 -0.061331272 -0.065335214 -0.02504158 -0.057499886 -0.073684812 
		-0.034215927 -0.048176289 -0.078535438 -0.035081863 -0.035022259 -0.044044971 -0.013284683 
		0.044791222 -0.061101198 -0.020421028 0.034185171 0.0040562153 -0.036654472 -0.06001687 
		-0.035857677 0.020213127 0.12354398 0.043600321 -0.0075817108 0.024856091 0.0043937564 
		-0.014442444 0.021003008 0.01246208 -0.023532867 0.029447794 0.017514139 -0.021871567 
		0.028274775 0.011359096 -0.020188332 0.0072755814 -0.010886207 -0.017267227 0.010749102 
		-0.0038092881 -0.01305294 -0.0097105503 -0.023501854 0 0 0 0 0 0 0.0050697327 -0.0039474964 
		-9.8705292e-05 -0.0077342987 0.026688099 -0.015741825 -0.0093364716 0.041387081 0.015941083 
		-0.01249218 0.054298162 0.0084645152 0.011517525 0.011919022 -0.068078429 -0.014647484 
		-0.064584255 -0.0016622543 -0.017540932 -0.04407239 0.019934356 -0.036811829 -0.1144495 
		-0.13650286 -0.041775703 -0.11742401 -0.12548411 0.0028791428 0.014321089 0.0093314648 
		-0.003115654 -0.0049052238 -0.01082851 0 0 0 -0.013931274 -0.042385101 0.034769416 
		0.041844368 0.05441165 -0.033190519 -0.0022735596 -0.13857317 -0.22837508 -0.040881157 
		-0.10938263 -0.088091373 -0.021759033 -0.097221375 -0.15269625 -0.031125069 -0.078623772 
		-0.031704366 0.040257454 0.095631361 0.038977206 0.0087213516 0.013326645 0.0051521659 
		-0.0056285858 0.016617537 0.010316849 -0.018598557 0.023163795 0.022349328 -0.0081043243 
		0.022736311 0.01604566 -0.0059127808 0.0022268295 -0.0034780502 -0.0031824112 0.0060586929 
		0.0037914626 0.0048265457 0.005699873 0.020884424 -0.0068712234 0.03899312 0.010920852 
		-0.011533737 0.011206865 -0.069576025 -0.012208939 -0.037267685 0.027887195 -0.015583992 
		-0.010236025 0.023262918 -0.0060739517 -0.0046887398 0.010707527 -0.0074882507 -0.0048687458 
		0.020782113 0.012722015 0.03939271 0.098998263 -0.05103302 -0.075237989 -0.017604887 
		-0.034739494 -0.047828197 0.060260594 -0.023804665 -0.067203045 -0.018554866 -0.044894218 
		-0.073231697 0.003082335 0.00073051453 0.022098064 -0.065272272 0.0012216568 0.031657696 
		-0.0081452727 -0.0045518875 0.02764082 -0.0055183172 -0.023440361 -0.085450172 -0.027467251 
		0.0045042038 -0.020082474 -0.026407391 0.00593853 0.0057966709 0.019219726 0.01376152 
		0.040575027 -0.032790422 -0.0090637207 -0.012186527 0.034192473 -0.033964157 -0.069216251 
		-0.042982161 0.050486565 0.084483147 0.04966563 0.0083599091 0.0078132153 0.008793354 
		-0.0023574829 0.013079166 0.010242641 -0.008351326 0.015724421 0.019172102 0.0032348633 
		0.015130758 0.014550418 0.0041847229 -0.004080534 -0.0011001229 0.0064334869 -0.00051546097 
		0.0057850759 -0.0067005157 0.0013771057 -0.061982274 -0.011886597 0.036149025 -0.032084629 
		0.013695717 0.041315079 -0.039614305 -0.0090608597 -0.010648251 0.036143929 -0.0078382492 
		-0.038986683 0.058941603 -0.0074520111 0.024310589 -0.022276349 -0.011263847 0.036226511 
		-0.036539577 0.010057449 0.054130793 -0.02266185 -0.0012197495 0.0005261898 0.024922058 
		-0.00010490417 -0.002717495 0.011896159 0.0058574677 0.0091223717 0.019253302 -0.022007942 
		-0.048653603 -0.013483912 0.0098018646 0.028918266 0.00027412176 -0.031822205 -0.060273409 
		-0.047335446 0.028484344 0.08069253 0.030579865 -0.0047607422 0.02030468 -0.012896836 
		-0.014541626 0.030285358 -0.012494296 -0.020670891 0.034490585 -0.0043441057 -0.011853218 
		0.051402807 -0.016774096 -0.010228157 0.036272526 -0.0080752224 -0.008972168 0.022464991 
		-0.02865807 -0.018344879 -0.032195568 -0.03679812 -0.015717506 0.047232628 -0.014784351 
		0.0037527084 0.063935041 -0.030739583 0.010995865 0.057658434 -0.03176384 0.014174461 
		0.039999485 -0.025816441 0.031356812 0.065547466 0.020414561 0.020694733 0.05453825 
		0.021876484 -8.2969666e-05 0.025868654 -0.015245527 -0.0066547394 0.043316841 -0.019556552 
		-0.016106606 -0.0063723326 -0.010016263 -0.0033540726 0.010544658 -0.00075161457 
		-0.010255814 0.0076304078 -0.096359193 -0.0052270889 -0.028918982 -0.063542128 -0.0012865067 
		-0.0093113184 -0.062575042 0.0047740936 -0.0059394836 -0.048549473 0.015524864 0.073121697 
		-0.085740209 -0.0083265305 0.08101216 -0.086290121 0.011837006 0.092687249 -0.052924156 
		-0.0088596344 -0.0027636886 -0.055553377 0.010193825 0.0059936047 -0.064298809 0.012296677 
		-0.0083690286 -0.051174521 0.09981823 -0.040263176 -0.013520241 0.038241386 -0.046680927 
		-0.056053162 -0.006893158 -0.010261536 -0.023517609 -0.0094614029 0.020782113 -0.037679493 
		-0.011748314 0.01863727 -0.032556117 -0.0061912537 -0.052405715 0.0362764 0.018636703 
		0.031171799 0.01338017 0.0070390701 0.016708732 -0.0081517696 -0.0046548843 -0.067637682 
		0.0050975084 -0.026612282 -0.022781372 0.013490915 -0.0085496902 0.026243806 0.06781435 
		0.0062770844 0.023178577 0.029129505 -0.0028562546 0.024152279 -0.026576042 -0.0043058395 
		-0.012984753 -0.070519209 -0.027140617 -0.082929134 -0.037251592 -0.061754227 -0.028961897 
		-0.0080084801 0.028946877 -0.11903524 -0.16653877 -0.019352913 0.055431843 -0.051562965 
		-0.013018608 0.015962005 -0.028650463 0.014839172 -0.011095047 -0.03952688 -0.011165619 
		-0.013367355 -0.04641062 0.0012235641 -0.013403118 -0.032789648 -0.0037574768 -0.033304393 
		0.0065239668 0.00085258484 -0.010070682 0.023116946 -0.010272026 -0.0239833 -0.044622958 
		-0.0064382553 -0.0071548223 -0.038498521 -0.011978149 -0.00057041645 -0.046067178 
		0.0088157654 0.0059079528 -0.076626956 -0.02213192 -0.0018303394 -0.058922708 -0.016482353 
		-0.0038104057 -0.037319362 0.032730103 0.0036303997 0.040458709 -0.0042247772 -0.021847785 
		0.044515312 0.0022773743 0.0038389564 0.02606228 0.015791893 -0.0059473515 0.027346879 
		0.013437271 0.0078926682 -0.010169029 -0.0023965836 0.011038065 0.0062185377 -0.011011124 
		0.074480891 -0.073497683 0.0051574707 0.035558522 -0.015091196 -0.0044574738 0.037279487 
		-0.044124078 -0.00027656555 0.017310917 -0.020740822 -0.014604568 0.019699514 -0.048330069 
		0.024642944 0.013359547 -0.0082399072 -0.0029602051 0.036800891 0.058299035 0.004114151 
		0.0095213652 -0.0015368164 0.0013580322 -0.0040774345 0.00012198091 -0.0022792816 
		-0.0060483217 0.00082534552 -0.0029497147 -0.0065698624 -0.015693963 0.0059814453 
		-0.0031118393 0.0019153357 0.0088710785 0.007896781 -0.0066912174 -0.0084791183 0.0072669983 
		-0.0066587925 0.008266449 0.0046448708 0.0031285286 0.027253151 0.014826179 -0.03846997;
	setAttr ".pt[830:995]" 0.0083017349 0.0096731186 0.021852732 -0.017121315 
		-0.007440567 0.002017796 0.020861626 0.014445662 -0.0062410235 0.018418312 0.01499486 
		0.02693522 0.016891479 -0.014603615 -0.038237095 0.017889023 0.0099058151 -0.026381135 
		-0.00035095215 0.0078986883 -0.037435174 0.010540962 0.01231885 -0.02437067 0.013026237 
		0.0058876276 0.006242156 -0.013683319 -0.011624813 0.0088972449 0.0017747879 0.011911631 
		-0.022076666 0.02047348 0.011630654 -0.00054967403 0.00051355362 -0.010517597 -0.066069245 
		-0.028263092 -0.016715765 -0.023422956 -0.0077257156 0.00048875809 -0.047700644 -0.0034484863 
		-0.0034868717 -0.013942838 0.015143394 -0.026644707 0.043196201 -0.027294159 -0.03818655 
		0.0029211044 0.03474617 0.0026960373 -0.038593411 0.039992332 -0.00037550926 -0.059857488 
		0.020704269 -0.0089724064 -0.048968911 0.058088303 0.008564949 -0.01406908 -0.0084719658 
		0.046236873 0.088825822 -0.0068516731 0.023730993 0.10668266 0.022216797 0.060105801 
		0.016832829 0.0397892 0.058502913 0.022820711 -0.031202316 0.010535479 0.0083866119 
		0.0070800781 0.0042384863 0.032594204 0.0061407089 0.0013540983 -0.0063352585 -0.023933411 
		-0.011638999 -0.031460047 -0.00028324127 0.054769397 0.042327881 0.0035018921 0.04736197 
		0.12400699 0.00042819977 0.030888677 0.035995722 -0.011181831 0.020348191 0.0071277618 
		-0.017311096 0.034857273 0.10163856 -0.010167122 0.047787905 0.12729549 -0.0082759857 
		0.010253906 -0.0055458546 0.00664711 0.0071959496 -0.013108492 0.010255814 0.0021123886 
		-0.021900415 -0.039352417 -0.0065402985 0.059869528 0.021170616 -0.098852873 -0.10027933 
		0.011924744 -0.080565929 -0.055551529 -0.024860382 -0.087665796 -0.057278872 0.00022220612 
		0.025917292 0.020253897 -0.024271965 0.037141562 0.035550594 -0.030830383 0.037994862 
		0.027887106 -0.0016965866 0.015783429 0.023982763 0.00043773651 0.016489506 -0.017735481 
		-0.0098237991 -0.027600765 0.033202648 -0.024499893 -0.032152653 0.042400718 0.0001335144 
		-0.0024151802 -0.015253663 0.019284248 -0.11762762 -0.11655939 -0.018393517 -0.01540494 
		-0.040334702 -0.047122002 -0.017377019 -0.091329575 -0.034388542 -0.024450779 -0.068275452 
		-0.013572693 0.0016025305 -0.010288 0.0030078888 0.010795355 -0.001124382 0.028128624 
		0.0024569035 0.007578373 0.013965607 0.030404449 0.02623105 0.017929077 -0.0084953308 
		0.019249916 0.015703201 0.002163291 0.045364618 0.0065917969 0.0016634464 0.020030499 
		-0.039748192 0.034769773 0.026212692 -0.022000313 0.013377905 0.019470215 -0.0066156387 
		0.019536972 0.058188677 0.01594162 0.010205746 0.018887997 -0.0074748993 0.0063179731 
		0.0040397644 -0.032040596 0.001811862 -0.032955885 -0.02637291 0.016851425 0.00057148933 
		-0.021271706 0.01147604 0.0073599815 -0.026127815 -0.0050632954 -0.01899457 -0.03192997 
		-0.0022535324 -0.014410496 -0.02471447 -0.0058267117 -0.031878114 -0.022559166 0.0034387112 
		-0.0055636168 -0.015574455 -0.0017344952 -0.0081851482 -0.013175011 -0.00044560432 
		-0.0062303543 -0.013667107 0.010060549 -0.00051546097 -0.0039415359 -0.0018949509 
		-0.0013574362 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0067634583 
		-0.00038838387 -0.0021077991 -0.040142059 0.013371706 0.0031542182 -0.055178642 0.019851923 
		0.016566843 -0.075292587 0.07852602 0.11658533 -0.038809776 -0.015108109 -0.046990097 
		-0.035586357 0.019613743 0.028032809 -0.022195816 -0.0034389496 -0.018332005 -0.017792702 
		-0.024811268 -0.055383027 -0.019094467 -0.00613451 -0.032768011 -0.019869804 0.0046224594 
		-0.027230263 -0.017444611 0.0069704056 -0.0081665516 -0.024609566 -0.0061750412 0.011687279 
		-0.022078514 -0.00028467178 0.0055193901 -0.018213272 0.014196396 -0.005522728 -0.02052021 
		-0.0051355362 0.010759592 -0.018676758 -0.020508766 0.028846025 0.001750946 -0.016631603 
		0.011212111 0.018313408 -0.058893204 -0.0033961535 0.036169052 -0.051503658 -0.025663853 
		0.025186539 -0.11393118 -0.062860012 0.020318031 -0.13295364 -0.13686156 0.038168907 
		0.035201311 -0.0085506439 -0.028756142 0.035804749 0.030647516 -0.028926849 -0.054733753 
		-0.018636465 -0.063714981 0.1165812 0.06056118 -0.054071426 0.021606445 0.019854009 
		-0.058777809 0.021601915 0.029379249 -0.048566818 0.013818502 0.029531658 -0.040233612 
		0.0088601112 0.020448178 -0.037049294 -0.0093553066 -0.00064572692 -0.028139114 -0.0038836002 
		0.0035378188 -0.018462181 -0.024251938 -0.019688465 -0.013943672 0.021715879 0.025835983 
		-0.013393402 -0.010127783 -0.0053243339 -0.0072813034 0.0097954273 0.0078285635 -0.014012337 
		0.0046049356 -0.002130121 -0.012218475 0.014493823 0.014559776 -0.0131073 0.0051743984 
		-0.0068891048 -0.0075006485 0.011521459 -0.019664586 -0.0020503998 0.0069671869 0.0056744516 
		-0.0063848495 -0.0020097494 -0.0023830533 -0.0011672974 -0.0049222708 -0.0018236935 
		-0.0020608902 -0.012098193 0.0066548288 -0.0012588501 -0.060889006 0.053506225 -0.0045862198 
		-0.063258529 0.064435899 0.00037956238 -0.061756968 0.066518933 0.002746582 -0.063888907 
		0.058884293 -0.0033569336 0.10752016 -0.091248855 -0.0023727417 -0.066844225 0.053004652 
		0.0043964386 0.12676388 -0.09938091 -0.0048599243 0.12756175 -0.10077854 0.0056495667 
		0.11641407 -0.10238852 0.0012464523 0.10664701 -0.094203562 0.00015735626 0.10303617 
		-0.093036979 0.0087080002 0.093675256 -0.087178677 -0.014267921 0.071073949 -0.070587665 
		-0.011296272 0.018437982 -0.018914551 -0.0088558197 0.014097393 -0.016724318 -0.0076589584 
		0.0064507723 -0.018593252 0.00090026855 -0.0066282749 0.0035907328 0.0014572144 0.00052368641 
		0.010716438 0.014558792 -0.0078294277 0.035515815 -0.010427475 0.0024641752 -0.0068768263 
		-0.008351326 0.0036541224 -0.011129439 -0.023448944 0.027400255 -0.028589368 -0.004655838 
		0.018757761 -0.028168917 -0.018576622 0.021022022 -0.029809892 -0.016835213 -0.0026826859 
		-0.0082516968 0.014327049 -0.020344198 0.035392612 0.018994331 -0.011071026 0.035968751 
		0.018113136 -0.012404501 0.036272407 0.0031261444 -0.003578186 0.011578768 0.00022602081 
		-0.0078095794 0.014165759 -0.0075511932 0.003687501 -0.0031239986 -0.0052433014 -0.0031591058 
		0.039472491 0.0070791245 -0.0031158924 0.027961612 0.006529808 0.026403725 -0.018886447 
		-0.00054550171 -0.06137383 0.054040521;
	setAttr ".pt[996:1161]" 0.0018320084 -0.0047377348 0.0020878911 -0.0036125183 
		0.0071074963 -0.0067363977 -0.0062513351 -0.0020427704 0.0025588274 -0.022021294 
		-0.0053882599 -0.0010986328 -0.012583733 0.0012526512 0.018614769 -0.0093374252 0.0046384335 
		-0.020224929 -0.024661064 0.0046451092 -0.011389375 -0.040555 0.015072703 -0.010999322 
		-0.037556648 0.012465835 -0.022715449 -0.036008835 0.023454905 0.018010378 -0.037142754 
		0.022375226 0.014786243 -0.036053658 0.016055942 0.0063028336 -0.0035858154 0.030796766 
		0.00045061111 0.0059022903 -0.030796051 -0.0019817352 0.021514893 -0.12040424 -0.1864152 
		0.00076675415 -0.0053501129 -0.0034352243 -0.0062522888 -0.010419369 0.016779035 
		0.0031690598 -0.063930988 0.054702431 -0.0057239532 0.11132777 -0.08606828 -0.050489426 
		0.024407268 -0.015013832 -0.0055828094 0.0069901347 -0.019709185 -0.0063276291 0.0088046193 
		-0.016188025 -0.018842697 5.7280064e-05 -0.046715289 -0.011856079 -0.00022536516 
		-0.0087476671 0.0011920929 -5.0663948e-06 0.013351113 0.0048370361 -0.00018101931 
		0.0085371435 -0.0053911209 0.012258947 0.019718647 0.014147758 0.0062393546 0.040877968 
		0.013203621 -0.0037100315 0.036089957 -0.019865036 0.00084465742 0.0042432249 -0.01897049 
		-0.015035391 -0.014854163 -0.0096168518 -0.0072203279 -0.015390933 0.012429237 -0.020594537 
		0.030873924 0.011369705 0.0084690452 -0.0025937259 -0.021784782 0.0061201453 -0.016650856 
		-0.036621094 0.00058734417 -0.035278261 -0.012199402 -0.0027275681 -0.022399724 -0.0093164444 
		-0.0014654994 0.015877932 0.025163651 0.0022867322 0.035521209 0.0240345 0.046209395 
		0.031356424 0.00274086 -0.0014275908 0.01875928 0.01359272 0.0024914145 -0.02009809 
		0.014374733 -0.0047594905 -0.036996543 0.01907444 0.021546125 -0.014239073 -0.0024900436 
		0.03305918 -0.031374827 -0.017278671 0.11232901 -0.11060174 -0.0065774918 0.10404789 
		-0.087982178 -0.0024795532 -0.06195116 0.057278782 -0.0013036728 -0.0074179173 0.014154017 
		-0.0085706711 -0.012932897 0.013597071 -0.0038814545 -0.0071452856 0.0060113072 0.0066308975 
		-0.004095912 0.0068464279 0.0072526932 0.0094087124 -0.0014500022 0.0044202805 -0.0021669865 
		0.0042563081 0.0084590912 -0.014465094 0.019778252 0.030115128 0.038095832 0.0094562769 
		0.02604866 0.023842216 0.022762895 0.027276993 0.012060761 -0.015709281 0.013896942 
		-0.01003623 -0.014291406 -0.0032224655 -0.00051701069 -0.00784266 0.00025367737 -0.0053880215 
		-0.016485572 0.0039043427 0.0051555634 0.026113272 0.0024003983 0.0047576427 0.02144742 
		0.002245903 0.0030376911 0.015215397 0.0062236786 0.0029637814 0.02240181 -0.050740242 
		0.038041234 0.013276577 -0.0047826767 0.0092658997 0.017076731 -0.0056209564 0.039981604 
		-0.0029146671 -0.021561623 0.030034542 0.0011007786 0.0094490051 -0.0037939548 0.010706902 
		-0.0047626495 0.0083568096 0.010665894 -0.00071620941 0.0081853867 0.016067743 0.0015506744 
		-0.010910869 -0.020118952 0.0019617081 -0.0051438808 -0.012275577 0.0081357956 -0.0094122887 
		-0.031802177 0.0069646835 -0.0037794113 -0.0018810034 -0.0034589767 -0.006177187 
		-0.0088927746 -0.0054073334 -0.0020177364 -0.0061923265 -0.0052099228 0.010817766 
		0.0005531311 -0.0034666061 -0.0065345764 -0.0026773214 -0.00098609924 -0.0025589466 
		-0.001265645 6.1988831e-05 -0.0024147034 -0.0012172461 0.00013446808 0.00075888634 
		0.00055301189 0.00019645691 0.0012836456 0.00094544888 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.0053863525 -0.0019345284 0.0041683614 0.012885094 -0.004304409 
		0.013269752 0.0059738159 0.038597345 0.099321336 0.0449543 -0.048949242 -0.034521401 
		0.039247513 -0.01210022 0.04461962 0.044770241 -0.035646439 -0.0047345757 0.0429039 
		-0.063946724 -0.052897155 0.036548615 -0.045971394 -0.038645744 0.035448074 -0.031471729 
		-0.036034703 0.02694416 -0.019579411 -0.015908718 0.016483307 -0.033428669 0.0093858242 
		0.012940407 -0.023594856 0.0032906532 0.012542725 -0.0017590523 -0.0087659359 0.010167122 
		-0.038546085 0.0031685829 0.042819977 -0.10517073 -0.097735643 -0.0046730042 -0.13116837 
		-0.23181987 0.028808594 0.04145503 -0.055807471 0.02206707 0.026586533 -0.022669673 
		0.027866364 0.029303312 -0.015879869 0.013669968 0.024294853 -0.00062513351 0.029842377 
		0.039518356 -2.3841858e-05 -0.0069599152 0.030817509 0.023874283 0.00083255768 -0.064062357 
		-0.024791956 -0.048294067 0.10990977 0.05601567 -0.031273842 0.014656067 0.015182197 
		-0.032582283 0.012344837 0.024202108 -0.022731781 0.012334585 0.029178858 -0.019427299 
		0.0099880695 0.023452878 -0.016852379 -0.0076096058 0.0011711121 -0.012439728 -0.0027155876 
		0.0047316402 -0.0066146851 -0.024500847 -0.021248473 -0.0056247711 0.015712857 0.019854277 
		-0.010803223 -0.012796283 -0.0010555834 -0.0030889511 0.0068725348 0.0041604042 -0.0024347305 
		-0.0042508841 0.0057312548 0.00019550323 -0.010050535 0.018752754 0.0026464462 -0.012384534 
		0.012847245 0.0078487396 0.020478129 -0.025618773 0.0049705505 0.0039557219 -0.023530856 
		-0.0028572083 -0.0001500845 -0.0097519504 0.0025110245 0.00419873 -0.010012776 0.0021209717 
		0.0004735589 -0.0032498389 0.020086288 0.0013727546 0.017573252 0.0029745102 -0.0016185045 
		0.0052548945 0.012155533 0.0067195892 -0.00082907081 0.004117012 -6.3240528e-05 0.0014983118 
		0.0046358109 -0.0020328164 0.0017065704 -0.00054740906 -0.0050401688 0.018709779 
		-0.00046157837 0.0094265938 -0.0079945177 -0.0043449402 0.0070770979 0.045097411 
		-0.00071144104 -0.00079226494 0.036564857 0.00022315979 0.0065883994 0.036274984 
		-0.0025491714 -0.0030089617 0.035740197 0.0022001266 0.00028890371 -0.016936794 0.0054216385 
		-0.00031405687 0.03343749 -0.0017824173 0.00035268068 0.048123717 -0.0072612762 0.03020823 
		0.030643672 -0.0093345642 -0.063286901 0.057084352 0.0035181046 -0.013884783 0.0098518729 
		-0.0058908463 -0.0076882839 -0.00045436621 -0.010870934 0.0076695681 -0.015258908 
		-0.0065193176 -0.0084644556 0.0069909692 0.014145851 -0.006385088 0.017907917 -0.00052165985 
		-0.0053697824 0.0041731 0.00299263 -0.0036870241 0.016697109 -0.0034179688 -0.012641788 
		0.01188463 -0.002117157 0.0021785498 0.016184211 -0.0018019676 0.0027434826 0.014123976 
		-0.0032525063 0.0033289194 0.016630411 -0.0077834129 -0.0050390959 -0.0083016157 
		-0.0082187653 0.0039995909 -0.03749156 0.0025072098 0.036031604 -0.033656418 -0.025112152 
		0.035045505 0.024423361 -0.020086288 -0.016319156 -0.0089664459 -0.0164814 -0.018480539 
		-0.022907019;
	setAttr ".pt[1162:1327]" -0.0010461807 -0.0012643337 0.0090502501 0.033191681 
		0.021230102 -0.02046442 0.018268585 -0.011825204 -0.021360517 -0.0015678406 -0.003644824 
		-0.015512943 0.008263588 0.0031443834 0.025913 0.015446663 -0.0077149868 0.021155834 
		0.019067764 -0.013541102 0.027271271 0.026725769 -0.037644982 -0.0083312988 0.025714874 
		-0.031661868 -0.00014507771 0.0287714 -0.031568766 -0.018232822 0.012464523 -0.013737559 
		-0.026652575 -0.0013074875 -0.0011730194 -0.019567013 7.2479248e-05 0.016187906 -0.029787064 
		-0.029370308 -0.0051482916 -0.029745102 -0.001581192 0.018990874 -0.044557333 -0.044662476 
		0.0073424578 -0.042156577 0.00096511841 -0.0065517426 -0.020102262 -0.018380165 0.023791313 
		-0.00026655197 0.0082206726 0.0081557035 -0.034589887 -0.049876213 0.031792998 0.0070571899 
		0.00051689148 0.018711567 0.013299465 -0.0074596405 0.04063499 -0.002446413 -0.014946938 
		0.019984245 0.0035736561 -0.0054283142 -0.0039372444 -0.034441113 0.0085382462 0.0097563267 
		-0.026100755 0.0082054138 -0.001891017 -0.02741468 0.0066146851 -0.011101723 -0.026822805 
		0.0045986176 0.0063209534 -0.041302443 0.03293705 0.038805962 -0.053391457 0.075841904 
		0.048036337 0.048789263 -0.01482296 -0.01430583 -0.0041115284 0.059825897 0.050636292 
		0.02636981 0.012077332 0.020348072 -0.021001697 0.0083351135 0.0056653023 -0.030721784 
		0.017662048 0.010903597 -0.028423667 0.016013145 0.0094559193 -0.035348296 0.010228157 
		0.013585567 -0.00671947 0.003288269 -0.0091261864 -0.0079821348 0.0035276413 -0.0043518543 
		-0.0041675568 0.005443573 -0.010142088 -0.0072726011 0.004693985 0.0021705627 0.00087034702 
		0.0037508011 0.0022907257 0.0019574165 0.0030193329 -0.0030763149 -0.0018562078 0 
		0 0 0 0 0 0 0 0 0 0 0 0.010528564 -0.005730629 0.0084372163 -0.00044727325 0.00063610077 
		6.0200691e-05 0 0 0 0.0038909912 -0.0032763481 0.0027820766 0.0014657974 0.016336203 
		0.05377233 0.046438217 -0.062459946 -0.030292511 0.036137581 -0.028203487 0.047271937 
		0.050254822 -0.062896729 -0.012158573 0.043344498 -0.094059467 -0.080950677 0.036587715 
		-0.072817326 -0.068479896 0.026078224 -0.033140659 -0.052444816 0.026201248 -0.024905205 
		-0.025257587 -0.0225811 -0.023139954 -0.14070344 0.0068187714 -0.15510941 -0.23653662 
		0.047228813 -0.06064105 -0.042133808 -0.0067424774 0.1120615 0.033782244 0.019265175 
		0.017810583 -0.0010045171 0.020263672 0.01635313 0.0045167804 0.025719643 0.025479317 
		0.010725409 0.02458477 0.027392149 0.0061630011 0.025405884 0.009304285 -0.013478771 
		0.025310516 0.012874126 -0.0089460164 0.02973938 -0.011434793 -0.042245843 0.020044327 
		0.033237338 0.015142232 -0.021253586 -0.0052558184 0.022943646 -0.0044355392 -0.020758629 
		-0.0069338083 0.0047874451 0.0072036982 -0.010960966 0.0026664734 0.011618733 -0.0023473203 
		0.0045852661 0.014739394 -0.001113534 0.00040054321 -0.0039134026 0.0073893666 -0.00038528442 
		-0.0054956675 0.0019713044 -0.0015573502 -0.015694737 0.0074132085 -5.2452087e-05 
		0.012608767 -0.011111617 -0.014457703 -0.013643861 -0.0014929175 -0.0075950623 -0.011151552 
		-0.0042567849 -0.008377552 -0.0062623024 0.0017216206 0.004983902 -0.0036728382 -0.017598987 
		0.015817642 -0.0030773878 -0.016284347 0.017524719 -0.012097597 -0.0082058311 -0.0016918182 
		-0.010435462 0.0090577602 0.0036811829 0.011999607 -0.028550506 0.0078058243 0.0058534145 
		-0.0035678148 0.0025062561 0.010899305 0.0039349794 0.011419296 -0.0070633888 -0.054023504 
		0.027059555 0.033320427 -0.024775624 0.029066086 0.034403801 -0.059865952 -0.025057793 
		-0.026757956 0.0073782206 0.0013837814 -0.010429621 0.0036706924 0.0075101852 0.045723677 
		0.05246532 0.0088577271 0.02216959 0.00020718575 0.0077991486 -0.00218606 -0.045999169 
		0.013569832 0.026343107 -0.015613914 0.0041074753 0.0020604134 -0.015827537 0.0053672791 
		0.005109787 -0.013419986 0.0060958862 -0.0016069412 -0.019663334 0.0077934265 0.012206793 
		-0.0049808025 0.0075721741 0.01258564 -0.00059449673 0.0068407059 0.0048952103 -0.0062814951 
		0.0074253082 0.015696287 0.007240057 0.01239109 0.016453981 0.012155533 -0.0024461746 
		-0.028701544 -0.027756572 0.0041675568 -0.010946989 -0.016688526 0.002758503 -0.005238533 
		-0.0026624203 -0.0079226494 0.013895988 -0.009658277 0.0092687607 -0.044683456 -0.0020701289 
		0.015344143 -0.064244032 0.0045464039 0.01192379 -0.019932747 0.062300146 -0.011813164 
		0.055342197 0.0065715313 -0.0104146 0.056693077 0.002974689 0.01792717 -0.030431032 
		0.070842564 0.014538765 0.049143076 0.010534883 -0.011701107 0.031992197 -0.029871404 
		0.012360096 0.029224396 -0.023280919 0.014713764 0.034073591 -0.0133726 0.013140678 
		0.027951717 -0.017361283 0.0091266632 0.023441792 0.0015295148 0.0098786354 0.014345407 
		-0.039862931 0.0045995712 0.01369977 -0.017031491 -0.0026745796 0.0094268322 -0.03933382 
		0.018813133 0.019984722 0.0076549053 0.0055761337 0.0076289177 -0.0058355331 0.00050592422 
		-0.0050320625 -0.03990674 -0.0018200874 -0.0071101189 -0.082991362 0.02467823 0.0067269802 
		-0.06876111 -0.0076141357 0.044351697 0.089127183 -0.0033178329 0.011123419 0.050777555 
		0.016994476 0.028728962 0.074543476 -0.030575752 -0.067971945 0.0049846172 0.0011348724 
		-0.026460409 -0.020202637 0.035112381 0.0076708794 -0.017752409 0.0065774918 0.0092394352 
		-0.0074714422 -0.0089797974 0.0054857731 -0.018277168 0.0033683777 0.019889593 -0.010101914 
		-0.0079803467 -0.00078761578 -0.031148911 0.0039663315 0.010274291 0.0049105883 -0.00095558167 
		-0.015058875 -0.01969707 -0.0024585724 -0.022022367 -0.028356075 0.011909485 -0.0080504417 
		-0.026269794 0.0067453384 -0.0029040575 -0.021992922 0.0058431625 -0.0020933151 -0.028193116 
		0.0039606094 0.0062015057 -0.0036236048 0.010131836 0.013760805 -0.028303981 -0.0022993088 
		-0.002661705 -0.0031473637 0.0070886612 -0.010135174 0.0078629255 -0.0098667145 -0.0053687096 
		0.041226149 -0.00045013428 0.00068092346 0.0038427114 0.0033788681 0.012979507 0.0097749233 
		0.00091266632 0.00031590462 -0.0041143894 0.0017280579 0.0042450428 1.1920929e-05 
		0.00053596497 -0.001073122 -0.0049085617 0.0028600693 0.011259317 0.0097339153 0.0028953552 
		0.012454271 0.013264179 0.0023241043 0.0055651665 0.0033838749 0.0059223175 0.019111156 
		0.018077612 0.010533333 0.023465633 0.019688904 -0.0048770905 -0.033739328 -0.041984618 
		0.004527092 -0.010293722 -0.017631114 0.011287212 -0.028341532 -0.017520607 -0.0072517395 
		0.033019304 0.014607489;
	setAttr ".pt[1328:1493]" -0.011600971 0.037465811 -0.024515092 0.0021972656 
		-0.0025541782 -0.061018229 0.0081262589 0.011902094 -0.0077288151 -0.030085564 -0.071763277 
		-0.031027913 -0.0032567978 0.042083263 0.065453529 0.015057564 0.02278626 0.07468915 
		-0.032081604 -0.045375586 -0.054170251 0.020227432 0.013598442 -0.02314055 0.0087585449 
		-0.0011446476 -0.01626122 0.021914959 0.0045471191 -0.022573829 0.027981281 0.023465157 
		-0.017535806 0.0053987503 0.0014357567 -0.015868783 0.011376381 -0.0059931278 -0.011054158 
		-0.011000633 0.0062832832 -0.031027794 0.016607285 -0.040552139 -0.018366575 0.0071134567 
		-0.015672922 -0.025764942 0.0091266632 -0.028125763 -0.031719685 -0.0074691772 -0.0025401115 
		-0.023837328 0.019961357 -0.00018358231 -0.031225324 -0.0195508 -0.022449732 0.0032618046 
		-0.0060944557 -0.00035762787 -0.011814356 -0.0043907166 -0.0047507286 0.0074789524 
		-0.0025291443 -0.0019850731 0.0092632771 0.017348289 0.059337854 0.028480053 0.010624886 
		-0.021570921 -0.029962063 0.016076088 -0.045734406 0.041015387 0.018877506 -0.039027691 
		0.054428101 -0.013717651 0.033288479 -0.033736944 -0.02376461 0.017199516 -0.060731173 
		-0.020241261 -0.026653051 -0.07164073 -0.0053906441 -0.009503603 -0.010500908 -0.0087966919 
		-0.011868715 -0.0021500587 -0.015037537 -0.024560213 -0.023003936 0.016658783 -0.0062248707 
		-0.038556099 -0.024116039 -0.034500599 -0.0059951544 -0.015873909 -0.019539595 0.015154123 
		0.00552845 -0.018531799 0.003051281 -0.012200356 -0.017168999 0.028254628 -0.010112762 
		-0.010057449 0.032201409 -0.01287365 -0.024813175 0.014507055 -0.0095472336 -0.017027617 
		0.013140917 -0.012170792 -0.023043156 0.0069082975 -0.0093011856 -0.01200366 0.020565987 
		-0.011274338 -0.012568951 0.023754954 -0.013506889 -0.017150879 0.011179924 -0.011205673 
		-0.0065393448 0.023753524 -0.013112068 -0.004086256 0.019456625 0.00019550323 -0.024683952 
		-0.045630038 0.0026783943 0.0045917034 0.023294926 -0.0045938492 -0.029420376 -0.014534473 
		0.0039253235 -0.0039551258 0.0061260462 -0.0015978813 0.0072176456 -0.00048327446 
		0.0081691742 -0.01231575 0.012953997 0.00016784668 0.0021147728 0.0028071404 -0.0070829391 
		-0.0038580894 0.029577136 -0.0024557114 0.00019073486 0.013563395 -0.0041027069 -0.0078952312 
		0.0042002201 0.0085010529 -1.502037e-05 0.018294692 0.012711048 -0.0093536377 0.031641245 
		0.011856556 -0.0017962456 0.020386219 0.008787632 -0.020542383 0.0096930265 -0.0050301552 
		0.01650095 -0.0030310154 -0.0070180893 0.026760578 0.0030163527 -0.0066461563 0.022417307 
		0.00094056129 0.0039482117 -0.044817686 0.0025959015 0.0035066605 -0.029434681 0.00094234943 
		0.0020465851 -0.0073094368 -0.0030186176 0.013411999 -0.021415949 0.021838188 -0.0080385208 
		-0.00027418137 -0.026025176 0.00088977814 -0.024573803 -0.0081466436 0.0071754456 
		-0.001459837 0.0083105564 -1.7166138e-05 0.0044822693 0.0091496706 -9.727478e-05 
		-0.0087561607 -0.0086249113 0.0051727295 -0.0061364174 -0.0017699003 0.0067901611 
		-0.012749434 -0.0078178644 0.01553154 -0.0074820518 0.011096358 0.015926361 -0.0082597733 
		0.013534665 0.0153265 -0.01444912 0.004137516 0.0098290443 -0.014919043 0.014642954 
		0.0073890686 -0.021791935 -0.0067549944 0.0025777817 -0.014254808 -0.0086560249 0.0043449402 
		-0.01070857 -0.0027928352 0.015404701 -0.011330366 0.019162178 0.0037236214 -0.043413162 
		0.013006449 0.012103558 -0.031068087 0.056045175 0.0084042549 0.025727987 0.0024709105 
		-0.012980938 0.017183542 -0.070055634 0.014333725 -0.042910814 0.036719203 -0.01439333 
		0.019309759 -0.021226764 0.005689621 0.0093307495 -0.087638795 0.017825127 0.037896633 
		-0.077458382 0.0022649765 0.011384487 0.0022861958 0.0007982254 0.012064219 0.0165613 
		-0.010119438 0.00030004978 0.026301593 -0.0093574524 0.0076482296 0.033434778 0.0060067177 
		0.021030664 -0.013217688 0.0085601807 0.038714647 0.018883884 0.012176991 0.053277254 
		0.0069383979 0.010986328 0.010285378 -0.069950581 0.016347885 -0.04999876 0.03550896 
		-0.020679474 0.024313927 -0.013758332 -0.011332035 0.012421846 -0.0030591488 0 0 
		0 -0.0083599091 0.012552261 0.010048017 0.021188736 -0.042247295 -0.056768805 -0.00066566467 
		-0.0030727386 0.0085498095 0.015286446 -0.037020683 -0.053787053 0.014350891 -0.069966316 
		-0.13166851 0.04706955 -0.12061119 -0.12045133 0.010549545 0.022919416 -0.018104672 
		0.0058145523 0.024187088 -0.02856487 0.037176132 -0.085461378 -0.037879169 -0.02624321 
		0.067473412 0.026180804 -0.0028762817 -0.0029547215 -0.0021460652 0.0020666122 0.0049421787 
		0.0028252602 0.0099830627 0.011455297 0.0096692741 0.0059738159 0.015693188 0.0099545419 
		0.0055828094 0.0010790825 -0.0043826103 0.0056695938 0.0034008026 -0.0019262917 0.008928299 
		-0.019024134 -0.03823711 -0.0087738037 0.0086107254 0.028426975 -0.011619091 0.03407979 
		-0.028529882 0.010721207 -0.029478073 0.037416369 -0.031713486 0.027433157 -0.022498637 
		0.033597946 -0.092922211 -0.031761348 0.030941963 -0.09921217 -0.03488493 -0.028048515 
		0.046225309 0.027550161 -0.002222538 -0.0033364296 -0.00067067146 0.00078678131 0.0035185814 
		0.0026144385 0.0026626587 0.0050554276 0.0078372061 -0.0036683083 0.0083646774 0.0097930133 
		-0.0043067932 -0.0062258244 -0.0028982759 -0.0062952042 -0.0043420792 0.00098237209 
		-0.0054788589 -0.027967453 -0.038130432 0.0069108009 0.040542603 0.013198942 0.0067257881 
		-3.5762787e-05 -0.065261006 0.0057954788 -0.014807224 0.024930865 0.0024080276 -0.0074913502 
		0.015212461 0 0 0 -0.0041780472 0.0049972534 0.0188828 0.042307854 -0.094022512 -0.024765879 
		0.017097473 -0.067745686 0.04969883 -0.0030164719 0.01315093 -0.022791684 0.043580055 
		-0.084222317 -0.056723893 0.011558056 0.033507347 -0.031308815 -0.010059834 0.030148745 
		-0.032471284 0.042286396 -0.072300911 -0.067332327 -0.020414829 0.056985617 0.021066248 
		0.0042333603 0.0075359344 -0.010244191 0.0056447983 0.009626627 -0.0052504241 0.011276245 
		0.018357038 -0.0034123659 0.00715065 0.024796247 -0.0067407936 0.0079274178 0.0172472 
		-0.026748337 0.0074052811 0.02213192 -0.024287648 0.010252476 0.028661013 -0.032705329 
		-0.0078368187 0.040080786 -0.01784651 0.0091891289 0.037964106 -0.012392439 -0.0032219887 
		0.04489994 -0.024040733 -0.0057339668 0.030287981 -0.018128447 -0.0020575523 0.0062122345 
		-0.0057792664 -0.018209934 0.037226439 0.014375657 0.035468578 -0.062116861 -0.072820306 
		-0.019892216 0.052797318 0.02112332 0.00097894669 0.0092563629 -0.0073743761 0.0035448074 
		0.019432545 -0.0090365708 0.011496544 0.033333302 -0.010979906;
	setAttr ".pt[1494:1502]" -0.0088615417 -0.0079421401 -0.034381211 0.0099687576 
		-0.0096802115 -0.041242778 -0.0015354156 -0.010449409 -0.052652061 0.002207756 -0.033383548 
		-0.050060749 -0.0093612671 0.049272329 -0.054764867 0.0037231445 0.054678619 -0.055871248 
		-0.0097408295 0.056770265 -0.031182528 -0.032495499 -0.02587533 -0.026484489 0.0021848679 
		-0.010941029 -0.058647394;
	setAttr -s 1503 ".vt";
	setAttr ".vt[0:165]"  -8.80040073 4.051788807 1.96532822 -9.065250397 0.5774228 0.63215196
		 -9.37085629 0.44877422 0.60662603 -9.13064957 0.54084921 -0.16564757 -9.13028812 0.45696789 -0.29575461
		 -9.28538513 1.79806125 -0.81093043 -9.29453087 1.93868756 -1.026761889 -9.12081242 0.42100984 0.71797466
		 -9.070615768 0.56103379 0.62332773 -9.06770134 0.59392345 0.64022934 -9.13238621 0.54046088 0.60686898
		 -9.11513996 0.53499299 0.60492516 -9.38089085 0.4497385 0.61392218 -8.89539528 0.54439873 0.5327639
		 -9.13739681 0.54086637 0.41954666 -9.1624155 0.54948211 0.4263711 -9.19821453 0.52237701 0.28317982
		 -9.010147095 0.65645117 0.21020953 -9.23711491 0.61894751 0.27310008 -9.097415924 0.60758519 -0.1895979
		 -9.12960529 0.46070719 -0.28370613 -8.97929382 1.43537784 -0.39961231 -9.31748486 1.81866908 -0.74811238
		 -9.22902298 1.79142344 -0.85097122 -9.09380722 1.80423093 -0.91767043 -9.3170948 2.24651885 -1.098905563
		 -9.30842304 2.24775028 -1.10016036 -9.34314251 1.82904673 -1.07792294 -9.24519825 1.98789501 -1.023495436
		 -9.27624321 1.88813519 -1.012945175 -8.90412903 1.73622358 -1.040920377 -9.37265205 1.95633185 -1.097899079
		 -9.16905308 2.035571814 -1.11415029 -9.25444031 2.19348311 -1.12559843 -9.5913868 2.38497734 -1.19509685
		 -9.48189068 2.30935621 -1.33166051 -9.11479759 2.15726042 -2.1015799 -8.87004662 1.41293132 -2.81187844
		 -9.14639282 1.33993471 -2.77761412 -8.66489983 4.16495132 2.050734043 -8.65887547 4.14919949 2.059337378
		 -8.81651688 4.16500759 2.012422562 -8.94893456 4.17757797 1.80719614 -9.0095052719 4.071045876 1.62767339
		 -8.96768856 4.044130802 1.63837671 -8.77807713 1.41665077 -2.80630851 -8.7675705 1.46315837 -3.091422081
		 -8.60292816 1.66547453 -2.7895484 -8.61006927 1.75859642 -2.63750887 -8.61803913 1.86587644 -2.44119072
		 -8.62119961 1.99171591 -2.15970421 -8.62641811 2.062633753 -1.94834185 -8.63624096 2.11876869 -1.73492384
		 -8.64014149 2.15553451 -1.60981941 -8.63653755 2.28988981 -1.50093412 -8.63406086 2.3706522 -1.3937552
		 -8.62821674 2.46116114 -1.35908294 -8.6230135 2.61365557 -1.31191862 -8.62237549 2.7028513 -1.2773757
		 -8.62246132 2.78818226 -1.23244917 -8.62259197 2.81555629 -1.21513379 -8.62287331 2.86897445 -1.17807031
		 -8.62310696 2.94963527 -1.1226027 -8.62293816 3.0059537888 -1.087890744 -8.62132072 3.12201238 -1.018419743
		 -8.60663986 3.40916371 -0.82685292 -8.60185337 3.46801853 -0.79346693 -8.5967474 3.52899313 -0.76525879
		 -8.58603096 3.69994545 -0.66304696 -8.5812006 3.82432866 -0.55198038 -8.58360195 3.94439173 -0.39103723
		 -8.58903313 4.0042433739 -0.26987764 -8.61069012 4.23495197 0.15921746 -8.61862946 4.36822605 0.34822011
		 -8.62883186 4.51731205 0.6831063 -8.62919903 4.68028498 0.98050392 -8.626544 4.74055481 1.18335569
		 -8.62712669 4.74253798 1.37856793 -8.62783909 4.71139717 1.52568042 -8.63177967 4.65290737 1.61496615
		 -8.64091492 4.54500675 1.7002852 -8.64927673 4.43576431 1.77317417 -8.65310764 4.38596439 1.81357658
		 -8.65660763 4.33952999 1.85814154 -8.80035591 4.17934132 2.011092424 -8.91985226 4.24243259 1.83092153
		 -8.98001003 4.20998192 1.75664032 -9.017149925 4.14422417 1.67073929 -8.95066547 3.70357823 1.37773943
		 -8.87075043 3.68154287 1.4004972 -8.63307953 3.40148568 1.2352097 -8.62777424 3.22703218 1.11307204
		 -8.60663128 2.77260113 0.91613543 -8.60245705 2.64104152 0.84619349 -8.6040163 2.46603823 0.6983242
		 -8.60748768 2.34491277 0.5403077 -8.60867882 2.2393074 0.41643071 -8.60939598 2.15670609 0.32622766
		 -8.61102581 2.04761076 0.2052595 -8.61345482 1.9656775 0.11454374 -8.61646652 1.77053905 -0.08963187
		 -8.61679363 1.72536564 -0.14960194 -8.625103 1.62156439 -0.29277304 -8.63093948 1.57976651 -0.35183007
		 -8.6361618 1.53602004 -0.45449984 -8.63615131 1.52879584 -0.49282229 -8.63130951 1.5327456 -0.57705283
		 -8.62400913 1.57671821 -0.69000411 -8.62947083 1.66839015 -0.87567699 -8.63084984 1.69195986 -1.04535532
		 -8.63661003 1.63793433 -1.25593042 -8.64379501 1.66718042 -1.40360975 -8.62245274 1.79181147 -1.61809993
		 -8.6026907 1.76204896 -1.82226193 -8.60076332 1.70274544 -2.0093362331 -8.60316181 1.61841071 -2.25893068
		 -8.60048676 1.55565369 -2.44487524 -8.60151196 1.49861193 -2.58902669 -8.60965443 1.44684613 -2.7261219
		 -8.92741489 1.48209 -2.80597281 -8.94916439 1.40042067 -2.79035521 -9.099952698 1.27174628 -2.75098395
		 -9.085572243 1.28374195 -2.72930908 -9.13484859 1.27881682 -2.77674222 -8.99284458 1.36598158 -2.79613233
		 -9.052632332 1.4403342 -2.77773285 -8.98938084 1.46456146 -2.77448988 -8.8191309 4.32000113 1.85329342
		 -8.78146839 4.19245338 2.0096843243 -8.85619068 4.3016243 1.84814906 -8.94229984 4.27997112 1.78330874
		 -9.088348389 4.13369131 1.58621943 -9.15340805 4.20461464 1.53336239 -9.00065231323 3.72235298 1.35850739
		 -8.88451862 1.47181892 -0.44437405 -8.89185524 1.46355236 -0.52119458 -8.88601303 1.48234892 -0.40925193
		 -8.98991394 1.46120238 -0.36924988 -9.076872826 1.4690783 -0.34918299 -9.13120937 1.41496944 -0.35101277
		 -9.2262249 0.63471854 0.28689802 -9.1059227 0.70798337 0.25433376 -9.25129986 0.60985315 0.30303991
		 -9.25698757 0.59331667 0.29510805 -9.27149868 0.58656698 0.32556045 -9.26606846 0.60209268 0.33210781
		 -9.24568367 0.54172081 0.29316106 -9.2891655 0.58097976 0.35491365 -9.26214504 0.54005778 0.32409996
		 -9.28009224 0.53717035 0.35412169 -9.25648785 0.52165568 0.36667106 -9.23169518 0.52347445 0.3859216
		 -9.318923 0.50129479 0.5217241 -9.37298775 0.45524746 0.61128402 -9.38202 0.44760618 0.61374247
		 -9.37838745 0.45081082 0.59652036 -9.37539196 0.44635391 0.60523653 -9.33743 0.49940842 0.51081461
		 -9.35588455 0.50883317 0.50528508 -9.28352928 0.59531415 0.3606506 -9.26101303 0.61389434 0.37849775
		 -9.24133015 0.62212873 0.35310894 -9.22351074 0.63127589 0.32822609 -9.21058178 0.62237817 0.38073102
		 -9.18592739 0.63432193 0.36185458 -9.18399239 0.61501813 0.41158542;
	setAttr ".vt[166:331]" -9.15898037 0.630072 0.40024865 -9.08426857 0.64712048 0.38133383
		 -9.067219734 1.40983748 -0.34520343 -8.97483921 1.40595496 -0.45548418 -8.9474287 1.48375964 -0.62680227
		 -8.91080093 1.54982591 -0.70680493 -8.8762331 1.55259061 -0.70171565 -8.86851978 1.67823267 -0.86851186
		 -8.867939 1.71943402 -1.042410731 -8.84889698 1.66813755 -1.25183964 -8.83759689 1.68456531 -1.38386023
		 -8.87159634 1.75024366 -1.56770563 -8.91034222 1.69823742 -1.77370143 -8.91725445 1.63410056 -1.96784472
		 -8.91870594 1.55364418 -2.22612667 -8.92067051 1.49454534 -2.41514802 -8.91598415 1.44848609 -2.57312751
		 -8.89914417 1.41475785 -2.72763777 -8.99117374 1.35272181 -2.72102022 -8.98581505 1.35084355 -2.75540376
		 -8.93316269 1.39135921 -2.76161575 -8.91026402 1.41776919 -2.81986332 -9.016385078 1.57511103 -2.6839447
		 -8.93183708 1.58650613 -2.7067976 -8.93685913 1.69700706 -2.56626034 -8.93447781 1.82527876 -2.39048529
		 -8.92791939 1.97137368 -2.13407779 -8.91089439 2.056049824 -1.92576003 -8.88062763 2.11179113 -1.71021807
		 -8.86432457 2.14720964 -1.58037233 -8.87908459 2.25961566 -1.46939158 -8.89112759 2.34069014 -1.36845648
		 -8.90764141 2.43292284 -1.33276153 -8.91901588 2.5902729 -1.28877616 -8.92090511 2.67930198 -1.25439453
		 -8.92000771 2.76441193 -1.20986295 -8.91944218 2.79187632 -1.19299078 -8.91835403 2.84609747 -1.1571939
		 -8.91741276 2.9280026 -1.10254288 -8.91750908 2.98419809 -1.067166567 -8.92124748 3.098826647 -0.9963038
		 -8.96548462 3.37838674 -0.80154836 -8.98094463 3.43505621 -0.76510084 -8.99779129 3.4925561 -0.73199487
		 -9.035222054 3.65481663 -0.62675142 -9.044290543 3.77666092 -0.51639497 -9.034235954 3.90084124 -0.35571295
		 -9.017319679 3.96432495 -0.23518114 -8.9511919 4.20544386 0.18869707 -8.93208599 4.33886576 0.37478566
		 -8.90067291 4.49083662 0.70333606 -8.89867496 4.64784861 0.99777663 -8.90492439 4.70394421 1.19638824
		 -8.90503216 4.70180702 1.38675332 -8.90092754 4.66545057 1.5232687 -8.88940144 4.6095624 1.60690618
		 -8.86487007 4.51136446 1.69083619 -8.84018803 4.41000032 1.7655623 -8.8295269 4.364151 1.80753088
		 -8.86975479 4.34264088 1.80115175 -8.96035194 4.31790686 1.74013698 -9.085058212 4.20893764 1.61766946
		 -9.09112072 3.77003527 1.31116676 -8.88968563 3.42118454 1.21754122 -8.90515041 3.25000143 1.094703674
		 -8.96487808 2.80091572 0.88974458 -8.97359467 2.6686306 0.81841648 -8.97901726 2.49144363 0.66901249
		 -8.96736145 2.37051153 0.51301754 -8.96263981 2.26395249 0.38804251 -8.96129322 2.18143964 0.29703319
		 -8.95819283 2.073624372 0.17668687 -8.95464516 1.99317956 0.087106355 -8.95019341 1.80143344 -0.10745665
		 -8.94703484 1.74748302 -0.15862012 -8.91994476 1.59640348 -0.26118141 -8.89482594 1.51644409 -0.34223494
		 -9.030597687 1.54656923 -0.29270521 -9.11622715 1.56233382 -0.32089013 -9.13851452 1.47216845 -0.37386948
		 -9.19054413 1.39532566 -0.41047636 -9.096948624 0.68928975 -0.0091450354 -9.1949234 0.62900519 0.1531034
		 -9.18661499 0.62127298 0.10481261 -9.17704391 0.55232656 0.11560546 -9.22808647 0.54403818 0.26158407
		 -9.2182312 0.52328289 0.31127965 -9.2368927 0.52382684 0.33906448 -9.18779278 0.5232389 0.34081882
		 -9.20980644 0.52372789 0.36297277 -9.31028652 0.53493387 0.54630458 -9.34356403 0.56259388 0.54696918
		 -9.37285805 0.53704965 0.51210809 -9.37282658 0.5470463 0.51855147 -9.36172199 0.55999583 0.53369713
		 -9.23433208 0.61324781 0.40138185 -9.18981266 0.56361568 0.43335819 -8.97877598 0.52860099 0.42673621
		 -8.96621418 0.52873766 0.45524329 -8.93706608 0.55663526 0.41483647 -8.92687321 0.55586934 0.44474173
		 -8.89882278 0.59944034 0.56787086 -8.93096542 0.51773131 0.53741866 -8.94467831 0.5941273 0.5891633
		 -8.99865913 0.60952032 0.48245993 -9.012322426 0.6170665 0.45745197 -9.036987305 0.64354038 0.36873832
		 -9.035168648 0.69056475 0.23728731 -9.2167778 0.76035595 0.092474855 -9.011953354 1.38816166 -0.53474689
		 -9.082890511 1.40015364 -0.57384253 -9.045506477 1.50443244 -0.65214562 -9.028970718 1.56160736 -0.71032888
		 -8.90363312 1.68275571 -0.86392903 -9.046260834 1.79330444 -0.94712567 -9.059177399 1.81256235 -0.96731734
		 -8.87681293 1.68328643 -1.25082242 -8.86660004 1.69453418 -1.37658739 -8.90210629 1.73959589 -1.553828
		 -8.94601154 1.67848802 -1.75519848 -8.95563316 1.61138749 -1.95244908 -8.95807743 1.52936125 -2.21417642
		 -8.95956039 1.46950877 -2.4062283 -8.95162868 1.42516303 -2.56812811 -8.93214989 1.39471126 -2.72378707
		 -9.021147728 1.37783802 -2.56145 -9.15817165 1.28516197 -2.5625267 -9.20039082 1.27471936 -2.56732202
		 -9.23742199 1.32603753 -2.58374166 -9.027765274 1.69484735 -2.55227828 -9.023386002 1.82023096 -2.37250423
		 -9.0059337616 1.95801795 -2.11296558 -8.97777176 2.038898945 -1.90459847 -8.93441677 2.093296528 -1.69020224
		 -8.91363335 2.13246703 -1.55701232 -8.93199253 2.23429275 -1.44717658 -8.95019913 2.31597543 -1.34887195
		 -8.97001076 2.4145503 -1.31372941 -8.98892689 2.57192659 -1.27190399 -8.99198437 2.66055512 -1.23833978
		 -8.99025154 2.74582887 -1.19523275 -8.98932838 2.77351189 -1.17872941 -8.98748207 2.82808757 -1.14307654
		 -8.98559952 2.91049743 -1.08816123 -8.98521328 2.96685457 -1.052217007 -8.98901653 3.080707073 -0.98017967
		 -9.047674179 3.35087919 -0.78183365 -9.070668221 3.40314198 -0.74199361 -9.096898079 3.45508361 -0.70461339
		 -9.14886665 3.60722899 -0.59587252 -9.15495014 3.7332859 -0.48605281 -9.13656521 3.86382008 -0.32559425
		 -9.1147337 3.92966914 -0.2060222 -9.027931213 4.17918301 0.21190891 -9.0049505234 4.31472158 0.3967385
		 -8.96313381 4.46844625 0.72044981 -8.95962429 4.62129831 1.012912035 -8.96700478 4.67289162 1.20819998
		 -8.9673214 4.66707325 1.39263809 -8.961586 4.62771988 1.52187419 -8.94695282 4.57505417 1.602314
		 -8.91608238 4.48331738 1.68453193 -8.88378906 4.38656235 1.75889397 -8.96309853 4.44726753 1.67717385
		 -9.15206051 4.27993393 1.56916285 -9.20389462 4.25566626 1.49693274;
	setAttr ".vt[332:497]" -9.16432095 3.83088923 1.25241196 -8.980793 3.44810176 1.19414091
		 -9.0030508041 3.28188109 1.069653034 -9.096396446 2.83401036 0.868348 -9.1064949 2.70385027 0.79830587
		 -9.11013412 2.53368831 0.63981086 -9.092098236 2.40691304 0.47928792 -9.085806847 2.29814601 0.35128847
		 -9.086103439 2.21634173 0.25821546 -9.08502388 2.11073732 0.13617258 -9.083124161 2.031926155 0.046060964
		 -9.092774391 1.84281313 -0.15666217 -9.10023499 1.78590608 -0.20766555 -9.059598923 1.61448741 -0.26400039
		 -9.14736843 1.63250089 -0.31023932 -9.20256424 1.63787842 -0.37849456 -9.17262745 1.56919479 -0.37641323
		 -9.20807648 1.56252551 -0.47576582 -9.18843174 1.45987654 -0.44554669 -9.19053745 1.44644737 -0.49901524
		 -9.19825935 1.37249899 -0.45712674 -9.19222832 1.36067033 -0.47809756 -9.18152714 1.34941435 -0.49641407
		 -9.017110825 0.71462607 0.037304088 -9.12268066 0.68937254 -0.0092053693 -9.027279854 0.66080856 0.068705097
		 -9.080598831 0.63339639 -0.0086813429 -9.16744518 0.60270238 -0.0013311603 -9.14467335 0.52184492 0.11941475
		 -9.086603165 0.5205707 0.11350797 -9.063908577 0.51563317 0.23208608 -9.015435219 0.56097901 0.19516532
		 -8.96417141 0.55540234 0.32146871 -8.97251606 0.62706882 0.3346113 -8.95149517 0.62027299 0.42575759
		 -8.94240093 0.61694318 0.45688978 -9.011077881 0.52562046 0.34169817 -9.045396805 0.5674268 0.099175349
		 -9.063818932 0.5641675 0.0024654137 -9.16415691 0.55470908 0.0051478012 -9.080601692 0.56610262 -0.17713341
		 -9.14077759 0.53152275 0.0052895024 -9.094700813 0.53036195 0.0048282631 -9.10063553 0.54023963 -0.16630478
		 -9.14711666 0.58685398 -0.18073341 -9.14517593 0.55400717 -0.1700097 -9.20283318 0.72236806 0.045024972
		 -9.21464729 0.73992938 0.068632737 -9.19451427 0.79863244 0.13676885 -9.11176205 0.82744801 0.17045331
		 -9.05061245 0.81820691 0.1606282 -8.99570847 0.76882052 0.10507882 -9.0014123917 1.3628552 -0.41897804
		 -9.099975586 1.32238734 -0.52603507 -9.030708313 1.32886469 -0.49167764 -9.10794163 1.40726566 -0.5741986
		 -9.16943359 1.43079865 -0.54360652 -9.078116417 1.51353025 -0.64872879 -9.067124367 1.57019496 -0.70204163
		 -9.062879562 1.70785356 -0.8205452 -9.021407127 1.69984519 -0.83726215 -9.46656227 1.92971814 -0.71437639
		 -9.28435421 1.78976345 -0.85765076 -9.20004463 1.8825171 -0.95389616 -9.10446262 1.824929 -0.93756568
		 -8.97709179 1.78305435 -1.050866127 -8.92841244 1.71921539 -1.25034094 -9.035515785 1.41987693 -2.39066935
		 -9.22832489 1.42929733 -2.62001204 -9.099944115 1.55702233 -2.67490172 -8.98000526 2.065753937 -1.66738653
		 -9.060559273 1.97002625 -1.60835469 -9.1687603 1.75688362 -1.72725606 -9.14880276 1.67350936 -1.68900442
		 -9.029055595 1.56854033 -1.92095375 -9.034119606 1.48219538 -2.19066358 -9.25217724 1.5382762 -2.45051336
		 -9.11237907 1.67331457 -2.53117204 -9.1056881 1.79475343 -2.34514713 -9.077541351 1.92879224 -2.083632946
		 -9.03834343 2.009323597 -1.87802684 -9.20090961 1.56028783 -1.88033748 -9.18954277 1.40356803 -2.14654064
		 -9.18853378 1.32592404 -2.36518931 -9.23677158 1.33352983 -2.36833644 -9.26544094 1.40446293 -2.39261436
		 -9.24488831 1.65583479 -2.25285435 -9.20314789 1.79410136 -1.99100864 -9.14636517 1.88756418 -1.7964704
		 -9.16963387 1.51734388 -1.86658001 -9.23585224 1.42999887 -2.15206289 -9.2245369 1.64963651 -1.91725969
		 -9.26252556 1.5106734 -2.18276787 -9.12551403 1.63138747 -1.67308235 -9.085365295 1.86378682 -1.55702686
		 -9.023548126 2.034651756 -1.45311332 -9.11198807 2.15039682 -1.42060161 -9.094313622 2.12289953 -1.54874957
		 -9.21018791 2.098639011 -1.73821497 -9.075621605 2.091076612 -1.7203021 -9.16488457 2.10462976 -2.065916538
		 -9.030554771 2.20192671 -1.55341971 -8.98825932 2.2234962 -1.44372737 -8.95372295 2.11373901 -1.52845573
		 -9.0099363327 2.30671024 -1.35554242 -9.033574104 2.40202808 -1.3149991 -9.055286407 2.5543313 -1.26357639
		 -9.059357643 2.64306259 -1.22811937 -9.057795525 2.72704387 -1.18452561 -9.056753159 2.75424814 -1.16801488
		 -9.054844856 2.80803537 -1.13175797 -9.052490234 2.88970375 -1.074823499 -9.050608635 2.9461627 -1.038376808
		 -9.052711487 3.058828354 -0.96507668 -9.12320232 3.31411099 -0.76093662 -9.15598297 3.35726738 -0.71609372
		 -9.048462868 4.48057938 1.59254384 -9.20094585 4.33606625 1.52888632 -9.25042057 4.32835484 1.43383861
		 -9.2078867 3.88240194 1.20292938 -9.14470863 3.53161383 1.1228826 -9.18642902 1.88941336 -0.20634341
		 -9.24068928 1.82438755 -0.35264313 -9.22984219 1.62858844 -0.49520051 -9.19194984 1.60816264 -0.60999137
		 -9.18312836 1.54798818 -0.574512 -9.19817257 1.55465698 -0.54394865 -9.16232681 1.54052067 -0.60103941
		 -9.1822834 1.4390198 -0.52297807 -9.12378597 1.32581747 -0.52604878 -9.16692162 1.59924936 -0.64159137
		 -9.20979309 1.74540544 -0.70432401 -9.17749405 1.73547626 -0.7415812 -9.23593903 1.75688827 -0.66207659
		 -9.26728344 1.78030515 -0.57307994 -9.26623726 1.80866265 -0.43826327 -9.35102463 1.85920572 -0.64953405
		 -9.44915962 1.89264464 -0.79777515 -9.43894672 1.87725425 -0.8382284 -9.42965984 1.86402178 -0.87685436
		 -9.38163185 1.83346057 -1.016208053 -9.35589695 1.82848287 -1.061095953 -9.16584301 1.93084764 -1.013298035
		 -9.13385868 1.92158175 -1.03956461 -9.076859474 1.89736414 -1.1029222 -9.021761894 1.83678663 -1.27209711
		 -8.9195776 1.72114396 -1.36530948 -8.95865536 1.72332644 -1.52832365 -9.0097084045 1.64450812 -1.71875978
		 -9.052454948 2.076898336 -1.35632539 -9.11334324 2.076472759 -1.99208498 -9.32212067 2.22657633 -1.948138
		 -9.15568542 2.13289452 -2.11695719 -9.073609352 2.098945141 -1.99512506 -9.065114975 2.21081901 -1.72728956
		 -9.05206871 2.27031589 -1.53203011 -9.26054764 3.28882289 -0.70441175 -9.66795349 2.42446327 -0.80048823
		 -9.57457352 2.21736884 -0.74480498 -9.51373196 2.024544477 -0.77009106 -9.48455715 1.97972345 -0.88286448
		 -9.47312927 1.96748233 -0.91908401 -9.41819763 1.9447577 -1.048512936 -9.38850117 1.95030046 -1.086828351
		 -9.40626431 1.97034049 -1.23482168 -9.40651226 1.94311929 -1.60207462;
	setAttr ".vt[498:663]" -9.38287735 1.93936527 -1.55141449 -9.38192558 2.010118246 -1.46584582
		 -9.31702614 2.0066661835 -1.24400008 -9.30028725 2.026558876 -1.15372193 -9.18641186 1.97562075 -1.045147657
		 -9.15376091 1.96531749 -1.067456007 -9.099544525 1.94525337 -1.1252718 -9.04337883 1.88911533 -1.28993487
		 -9.051048279 1.75484061 -1.50726652 -9.071497917 1.79154372 -1.5231986 -9.041142464 1.93557167 -1.41533804
		 -9.15125656 2.13226748 -1.18774247 -9.21598721 2.20689368 -1.26498556 -9.18808746 2.14922905 -1.45280862
		 -9.31095695 2.26711512 -1.99530816 -9.24661541 2.33853722 -2.065792561 -9.099052429 2.30336809 -1.71075344
		 -9.090688705 2.37591672 -1.5108676 -9.091388702 2.42428827 -1.41342556 -9.12985325 2.56284332 -1.33400702
		 -9.14702988 2.64476156 -1.27751231 -9.15561771 2.72251177 -1.21539903 -9.15706635 2.74704933 -1.19365072
		 -9.15718365 2.79442239 -1.14895713 -9.15415192 2.86509085 -1.077364445 -9.14921379 2.91838169 -1.032652378
		 -9.14428997 3.026096821 -0.95331901 -9.21598244 3.25798464 -0.74540609 -9.34592533 3.25847149 -0.78022766
		 -9.45384502 3.21622944 -0.73784059 -9.56976128 2.97822785 -0.70466632 -9.58814335 2.77887464 -0.87614143
		 -9.66167641 2.38782406 -0.86511314 -9.55740833 2.16654229 -0.84679997 -9.54591751 2.13521409 -0.91373748
		 -9.510952 2.054908991 -1.10149646 -9.41572666 1.9121387 -1.54199362 -9.45069408 1.92347264 -1.54018235
		 -9.49548721 1.99299133 -1.56796956 -9.4460783 2.024311781 -1.59049392 -9.58078098 2.11827159 -1.33705378
		 -9.49189949 2.23627424 -1.40274906 -9.43052673 2.19261575 -1.3517015 -9.38453484 2.20174384 -1.24070847
		 -9.34528065 2.26512027 -1.17074203 -9.32936668 2.26541972 -1.17838359 -9.27903271 2.24385142 -1.2091769
		 -9.29934502 2.23720932 -1.10443926 -9.35535526 2.23261261 -1.16648626 -9.35147572 2.21398401 -1.16862237
		 -9.33033657 2.14987779 -1.179842 -9.26428604 2.18453312 -1.1190052 -9.19351864 2.039284706 -1.10129416
		 -9.12291241 2.022271395 -1.15837646 -9.058104515 1.97122002 -1.32088554 -9.031378746 1.86025119 -1.3847177
		 -9.012176514 1.81468678 -1.36929309 -9.3061552 2.23141575 -1.10273552 -9.25037193 2.13544178 -1.59040427
		 -9.36986732 2.27415204 -1.85774231 -9.36412716 2.33043385 -1.90046906 -9.097549438 2.12645817 -2.06438899
		 -9.13840866 2.28230953 -1.96594644 -9.47782421 3.16128421 -0.81911051 -9.57872105 2.70482898 -1.0072112083
		 -9.64959717 2.33374453 -0.96043122 -9.53997707 2.12058806 -0.94652522 -9.53424072 2.10646963 -0.97874117
		 -9.50053787 2.030846119 -1.15936852 -9.4958744 2.019134521 -1.18857324 -9.48834038 1.99362051 -1.25141454
		 -9.43242264 2.24226427 -1.30459094 -9.39506245 2.28535914 -1.33598351 -9.34737778 2.24155664 -1.36640716
		 -9.41923141 2.33079052 -1.72771943 -9.41944695 2.39485598 -1.76793671 -9.29229546 2.43040609 -1.9796741
		 -9.24451256 2.45831537 -2.0033893585 -9.1998024 2.35678577 -2.083502293 -9.21402645 2.53320932 -1.83159828
		 -9.13927555 2.42999172 -1.65424454 -9.15767384 2.50724554 -1.58698678 -9.18873882 2.63495684 -1.47930765
		 -9.2078371 2.71412683 -1.41199565 -9.22486019 2.79084301 -1.33950436 -9.22956753 2.81510019 -1.31341171
		 -9.23739624 2.86065125 -1.25946927 -9.24481487 2.92146349 -1.17429185 -9.24777603 2.95993066 -1.11738443
		 -9.25113297 3.038476944 -1.0073412657 -9.30319023 3.23756886 -0.78945005 -9.38204098 3.21891952 -0.85622984
		 -9.49284935 3.042941093 -1.03141427 -9.54996777 2.9533658 -0.98466748 -9.54168987 2.8861537 -1.11484838
		 -9.57129288 2.66705561 -1.074470878 -9.55554581 2.60786629 -1.17891145 -9.54146767 2.56633854 -1.25283229
		 -9.64026737 2.29844213 -1.021974087 -9.63529587 2.28091621 -1.051951408 -9.63047028 2.26350498 -1.081436634
		 -9.59333801 2.14800262 -1.27935052 -9.49262714 2.268785 -1.36819315 -9.49028015 2.28367662 -1.35370541
		 -9.38377094 2.26674628 -1.22049832 -9.36947441 2.27258158 -1.22730303 -9.50217247 2.45028758 -1.36886227
		 -9.44938183 2.37265968 -1.62999833 -9.34674358 2.5294764 -1.85243583 -9.1614933 2.31414557 -2.021064997
		 -9.17515182 2.39343023 -1.92412925 -9.33716869 3.2164259 -0.8585062 -9.40324211 3.11439371 -1.061801434
		 -9.48167515 2.98010421 -1.1610291 -9.56246281 2.74152136 -1.12039793 -9.5148592 2.52850413 -1.39466679
		 -9.29393482 2.5685389 -1.87728786 -9.19650459 2.42688894 -1.96653914 -9.23276615 2.56315088 -1.8628391
		 -9.23648643 2.62525511 -1.75277877 -9.26712036 2.76169348 -1.61964774 -9.28476238 2.84215927 -1.53775191
		 -9.30197716 2.91261506 -1.4466691 -9.30666447 2.93579507 -1.41610479 -9.319664 2.97801876 -1.35287285
		 -9.33568859 3.033434868 -1.25492346 -9.34496403 3.066702366 -1.19208217 -9.35713196 3.12589121 -1.065460205
		 -9.39122868 3.056326866 -1.19104278 -9.47238541 2.94908333 -1.2270968 -9.51873779 2.80728602 -1.28201771
		 -9.49630547 2.50267434 -1.4978348 -9.48657036 2.43424392 -1.46532142 -9.45291519 2.43874145 -1.66754961
		 -9.38557816 2.58930826 -1.7533946 -9.38097286 3.02461338 -1.25585699 -9.3631115 2.97314119 -1.35527933
		 -9.45336342 2.9023633 -1.3267498 -9.53869915 2.6585443 -1.29324567 -9.49856758 2.76298261 -1.38374114
		 -9.4735918 2.71951485 -1.48522663 -9.44421577 2.67440295 -1.58651352 -9.32736683 2.63976789 -1.78194237
		 -9.2554884 2.65326643 -1.78142715 -9.29558659 2.78613496 -1.64177024 -9.31966019 2.85542464 -1.55135906
		 -9.43006325 2.85435033 -1.42733502 -9.34333801 2.91585779 -1.45325482 -9.43796635 2.87085676 -1.39387441
		 -9.34963608 2.93514895 -1.4206984 -9.40262985 2.8024919 -1.52631092 -9.37649632 2.74572468 -1.62379098
		 -9.60987377 2.19547367 -1.19493914 -9.59910393 2.16349006 -1.25109875 -9.5329895 2.54626679 -1.29239547
		 -9.4951067 1.9933219 -0.84585559 -9.58329868 2.25334668 -0.67627341 -9.67638874 2.4994626 -0.67030019
		 -9.52290344 3.13744044 -0.68323612 -9.39642334 3.29440498 -0.64300621 -9.34216309 3.36001825 -0.5873397
		 -9.34191513 3.48000717 -0.50970155 -9.33936119 3.62195349 -0.40416884 -9.31683159 3.75963092 -0.24794191
		 -9.28959942 3.83002758 -0.13237867 -9.16333675 4.10803223 0.27337912;
	setAttr ".vt[664:829]" -9.13392067 4.25127888 0.45513234 -9.07494545 4.40895844 0.76541686
		 -9.065937996 4.55105829 1.054162979 -9.074680328 4.58826351 1.24164951 -9.075500488 4.57271576 1.40773404
		 -9.067778587 4.52936649 1.5215714 -9.24891186 3.95744133 1.13030434 -9.038630486 3.47174454 1.17407656
		 -9.065494537 3.30901957 1.048597574 -9.1867981 2.85703468 0.86006504 -9.20019341 2.72332144 0.79289258
		 -9.19468307 2.56220245 0.62122333 -9.16720867 2.43725276 0.45167172 -9.1617384 2.32835078 0.32138434
		 -9.16401005 2.24773288 0.22666149 -9.16520882 2.14356256 0.10242282 -9.16438484 2.065888405 0.010744585
		 -9.35896111 1.94467759 -0.43438739 -9.36282253 1.91432023 -0.51700485 -9.48326778 1.98840594 -0.58937567
		 -9.535285 2.077657223 -0.6549024 -9.54559135 2.1140275 -0.57932866 -9.59513474 2.32704544 -0.54035842
		 -9.67454243 2.6350069 -0.44393042 -9.58460999 2.90754366 -0.6564278 -9.4852562 3.21593237 -0.5777725
		 -9.15667915 4.49687862 1.4271878 -9.13896084 4.51107264 1.27349293 -9.23355103 3.60495472 1.055976152
		 -9.32475662 2.14556193 -0.056914523 -9.34497643 2.004099369 -0.28486276 -9.57548046 2.96406126 -0.56730443
		 -9.51635742 3.17489767 -0.42999762 -9.23281097 4.39193916 1.32440889 -9.12820053 4.48695755 1.090240717
		 -9.19781208 4.37286997 1.15330327 -9.18172264 3.37480235 0.99598122 -9.35128498 2.9246912 0.81892252
		 -9.37770939 2.78309941 0.75022638 -9.35582829 2.61111259 0.57032543 -9.30064392 2.51018786 0.38595253
		 -9.3039341 2.40049434 0.25629944 -9.31491756 2.31771469 0.16407874 -9.32294178 2.21594024 0.037986897
		 -9.4883709 2.025557995 -0.50928915 -9.55860424 2.18633151 -0.43402296 -9.60030556 2.46055651 -0.30817077
		 -9.55451965 3.041620255 -0.4538129 -9.45965099 3.38497734 -0.43349758 -9.4678297 3.52756286 -0.33857906
		 -9.43764591 3.6607399 -0.18409881 -9.40149879 3.73913264 -0.071384355 -9.24751568 4.045166969 0.33093032
		 -9.21233463 4.19215012 0.50883412 -9.22446251 4.24414444 0.88846636 -9.14284992 4.35212135 0.80785918
		 -9.27071095 4.062037468 1.035265684 -9.33456802 3.75420713 0.90912819 -9.28598309 3.66615772 0.99670142
		 -9.27997398 3.45203018 0.92532736 -9.48189831 2.23063922 -0.12490326 -9.48897648 2.096649647 -0.36059076
		 -9.66533184 2.69518113 -0.349071 -9.54716396 3.10735464 -0.37459028 -9.3360815 3.51521158 0.85942829
		 -9.47350407 3.013343811 0.72374022 -9.51100826 2.87235737 0.65090352 -9.48091698 2.69843626 0.4808329
		 -9.42250538 2.59359694 0.31169999 -9.44583797 2.47604728 0.19771439 -9.4631052 2.39481115 0.10398993
		 -9.47715759 2.29665375 -0.026141223 -9.56127548 2.32029104 -0.19532952 -9.59537888 2.52168632 -0.2109354
		 -9.64140606 2.77807403 -0.22731744 -9.58025074 3.21003938 -0.2913698 -9.30532932 4.074397087 0.61024839
		 -9.55531406 2.38453722 -0.095855735 -9.58075047 2.6087153 -0.084894367 -9.62209511 2.84396958 -0.14206176
		 -9.61417198 3.34591389 -0.19315447 -9.58304501 3.49847269 -0.050255768 -9.53520203 3.5897634 0.056052905
		 -9.35013103 3.92892385 0.44039124 -9.35708332 3.87392378 0.79307592 -9.38558006 3.60570621 0.76161826
		 -9.52991009 3.086267471 0.62369752 -9.56944275 2.95605898 0.54911935 -9.54397774 2.78537726 0.39422107
		 -9.49555302 2.66815591 0.23945418 -9.56513405 2.6798625 0.0045079687 -9.51902294 2.55647087 0.12623455
		 -9.53887367 2.47858 0.034446429 -9.41197586 3.7286396 0.63658637 -9.57491589 2.77602243 0.1227489
		 -9.63159561 2.935184 -0.032224588 -9.67916107 3.058486938 0.093200289 -9.66954422 3.22971296 0.23085406
		 -9.61820698 3.34361982 0.31731397 -9.58465767 3.19479418 0.4841086 -9.63376522 3.072668552 0.40639555
		 -9.63158989 2.89365077 0.26276594 -9.21808243 1.93085992 -0.98118973 -9.21141052 1.6160444 -0.57428724
		 -9.091917992 0.61842221 0.65168858 -9.15229416 0.60140902 0.6379748 -9.15423584 0.56774938 0.62094116
		 -9.14570999 0.55250913 0.6124984 -9.12314987 0.42026287 0.71612424 -9.12456989 0.41791213 0.71919781
		 -9.12250614 0.42067581 0.72108895 -9.14262104 0.61366516 0.64536476 -9.07730484 0.60850322 0.64772916
		 -9.081856728 0.54768872 0.61468476 -8.89104652 4.018542767 1.66696858 -8.83198738 4.11457443 2.00013184547
		 -8.6508131 4.061872482 2.041626692 -8.013818741 0.44760618 0.61374247 -8.015825272 0.44701007 0.60431468
		 -8.32861996 1.40983748 -0.34520343 -8.01420784 1.83346057 -1.016208053 -8.11959553 1.88813519 -1.012945175
		 -7.86705685 2.43906593 -1.28909338 -8.073718071 2.22657633 -1.948138 -8.31026745 1.28374195 -2.72930908
		 -8.73173618 1.32858396 -3.24729347 -8.6143713 4.19245338 2.0096843243 -8.65846157 4.042116165 2.017460823
		 -8.41582966 4.20998192 1.75664032 -8.50479221 4.018542767 1.66696858 -8.19802761 4.37286997 1.15330327
		 -8.27502728 0.42100984 0.71797466 -8.020447731 0.44635391 0.60523653 -8.45116138 0.5941273 0.5891633
		 -8.33058834 0.5774228 0.63215196 -8.32522392 0.56103379 0.62332773 -8.3971796 0.60952032 0.48245993
		 -8.38351631 0.6170665 0.45745197 -8.3281374 0.59392345 0.64022934 -8.31398296 0.54768872 0.61468476
		 -8.31853485 0.60850322 0.64772916 -8.3039217 0.61842221 0.65168858 -8.28069973 0.53499299 0.60492516
		 -8.26345348 0.54046088 0.60686898 -8.38476086 0.52562046 0.34169817 -8.21184635 0.61501813 0.41158542
		 -8.23342419 0.54948211 0.4263711 -8.31157112 0.64712048 0.38133383 -8.28991604 0.70798337 0.25433376
		 -8.38040447 0.56097901 0.19516532 -8.15872478 0.61894751 0.27310008 -8.20091629 0.62900519 0.1531034
		 -8.2092247 0.62127298 0.10481261 -8.21879578 0.55232656 0.11560546 -8.16775227 0.54403818 0.26158407
		 -8.31524086 0.63339639 -0.0086813429 -8.26623344 0.46070719 -0.28370613 -8.24847126 1.63250089 -0.31023932
		 -8.41654587 1.43537784 -0.39961231 -8.31896687 1.4690783 -0.34918299 -7.9994154 3.29440498 -0.64300621
		 -8.44841099 1.48375964 -0.62680227 -8.48503876 1.54982591 -0.70680493 -8.51960564 1.55259061 -0.70171565
		 -8.11045456 1.79806125 -0.81093043 -8.11148548 1.78976345 -0.85765076;
	setAttr ".vt[830:995]" -8.078354836 1.81866908 -0.74811238 -8.16681576 1.79142344 -0.85097122
		 -8.29137611 1.824929 -0.93756568 -8.039941788 1.82848287 -1.061095953 -8.078743935 2.24651885 -1.098905563
		 -8.10130787 1.93868756 -1.026761889 -8.023187637 1.95633185 -1.097899079 -8.41874695 1.78305435 -1.050866127
		 -8.49171066 1.73622358 -1.040920377 -8.34957886 1.79330444 -0.94712567 -8.33666229 1.81256235 -0.96731734
		 -8.0073385239 1.95030046 -1.086828351 -7.98957491 1.97034049 -1.23482168 -8.14139938 2.19348311 -1.12559843
		 -8.24458218 2.13226748 -1.18774247 -7.88097954 2.52850413 -1.39466679 -7.85437107 2.56633854 -1.25283229
		 -7.89366627 2.45028758 -1.36886227 -8.28385162 2.15039682 -1.42060161 -8.30152607 2.12289953 -1.54874957
		 -8.36528397 2.20192671 -1.55341971 -8.44211674 2.11373901 -1.52845573 -7.98835659 1.9950484 -1.54460382
		 -7.98011208 1.9121387 -1.54199362 -8.2810421 2.15726042 -2.1015799 -8.2730341 2.13388109 -2.13006353
		 -8.49669552 1.41475785 -2.72763777 -8.4636898 1.39471126 -2.72378707 -8.462677 1.39135921 -2.76161575
		 -8.52579308 1.41293132 -2.81187844 -8.24944592 1.33993471 -2.77761412 -8.67620468 1.26583838 -3.20117664
		 -8.66410351 1.32858396 -3.24729347 -8.63292599 1.29524875 -3.24394846 -8.63639832 1.26167333 -3.22414136
		 -8.65329647 1.26295865 -3.21119022 -8.6488142 4.11960697 2.068733215 -8.56952953 4.14824963 2.0091567039
		 -8.57619762 4.073981285 1.98145866 -8.45703983 4.09195137 1.74748755 -8.38633442 4.071045876 1.62767339
		 -8.39314461 4.24271584 1.71534133 -8.42815113 4.044130802 1.63837671 -8.44517422 3.70357823 1.37773943
		 -8.52508926 3.68154287 1.4004972 -8.63915539 3.66602182 1.4167881 -8.6282692 1.46315837 -3.091422081
		 -8.59548378 4.17934132 2.011092424 -8.53964901 4.3016243 1.84814906 -8.47598648 4.24243259 1.83092153
		 -8.31078053 4.20893764 1.61766946 -8.3074913 4.13369131 1.58621943 -8.61776161 1.41665077 -2.80630851
		 -8.4684248 1.48209 -2.80597281 -8.48557472 1.41776919 -2.81986332 -8.40645885 1.46456146 -2.77448988
		 -8.44667435 1.40042067 -2.79035521 -8.40299511 1.36598158 -2.79613233 -8.2609911 1.27881682 -2.77674222
		 -8.41002369 1.35084355 -2.75540376 -8.40466595 1.35272181 -2.72102022 -8.37469101 1.37783802 -2.56145
		 -8.23766804 1.28516197 -2.5625267 -8.19544792 1.27471936 -2.56732202 -8.29588699 1.27174628 -2.75098395
		 -8.34320736 1.4403342 -2.77773285 -8.37945461 1.57511103 -2.6839447 -8.46400261 1.58650613 -2.7067976
		 -8.45897961 1.69700706 -2.56626034 -8.46136189 1.82527876 -2.39048529 -8.46791935 1.97137368 -2.13407779
		 -8.4849453 2.056049824 -1.92576003 -8.51521206 2.11179113 -1.71021807 -8.53151512 2.14720964 -1.58037233
		 -8.5167551 2.25961566 -1.46939158 -8.5047121 2.34069014 -1.36845648 -8.48819733 2.43292284 -1.33276153
		 -8.47682381 2.5902729 -1.28877616 -8.47493362 2.67930198 -1.25439453 -8.47583103 2.76441193 -1.20986295
		 -8.47639656 2.79187632 -1.19299078 -8.47748566 2.84609747 -1.1571939 -8.47842693 2.9280026 -1.10254288
		 -8.47833061 2.98419809 -1.067166567 -8.47459126 3.098826647 -0.9963038 -8.43035507 3.37838674 -0.80154836
		 -8.4148941 3.43505621 -0.76510084 -8.3980484 3.4925561 -0.73199487 -8.36061668 3.65481663 -0.62675142
		 -8.35154915 3.77666092 -0.51639497 -8.36160278 3.90084124 -0.35571295 -8.37851906 3.96432495 -0.23518114
		 -8.44464779 4.20544386 0.18869707 -8.4637537 4.33886576 0.37478566 -8.49516582 4.49083662 0.70333606
		 -8.49716377 4.64784861 0.99777663 -8.49091434 4.70394421 1.19638824 -8.49080753 4.70180702 1.38675332
		 -8.49491215 4.66545057 1.5232687 -8.50643826 4.6095624 1.60690618 -8.53096962 4.51136446 1.69083619
		 -8.55565166 4.41000032 1.7655623 -8.56631279 4.364151 1.80753088 -8.57670879 4.32000113 1.85329342
		 -8.52608395 4.34264088 1.80115175 -8.48808765 4.31520844 1.79362714 -8.47153187 4.35672092 1.75079942
		 -8.28260612 4.39005995 1.59169459 -8.24243164 4.20461464 1.53336239 -8.39518642 3.72235298 1.35850739
		 -8.50615311 3.42118454 1.21754122 -8.49068928 3.25000143 1.094703674 -8.43096161 2.80091572 0.88974458
		 -8.42224503 2.6686306 0.81841648 -8.41682148 2.49144363 0.66901249 -8.42847824 2.37051153 0.51301754
		 -8.43319988 2.26395249 0.38804251 -8.43454647 2.18143964 0.29703319 -8.43764687 2.073624372 0.17668687
		 -8.44119453 1.99317956 0.087106355 -8.44564629 1.80143344 -0.10745665 -8.4488039 1.74748302 -0.15862012
		 -8.47589493 1.59640348 -0.26118141 -8.49357605 1.53942609 -0.31137145 -8.50982571 1.48234892 -0.40925193
		 -8.51132011 1.47181892 -0.44437405 -8.5039835 1.46355236 -0.52119458 -8.4059248 1.46120238 -0.36924988
		 -8.365242 1.54656923 -0.29270521 -8.27961254 1.56233382 -0.32089013 -8.25732422 1.47216845 -0.37386948
		 -8.26463032 1.41496944 -0.35101277 -8.20529556 1.39532566 -0.41047636 -8.19757938 1.37249899 -0.45712674
		 -8.20361042 1.36067033 -0.47809756 -8.1811924 0.73992938 0.068632737 -8.21431255 1.34941435 -0.49641407
		 -8.27315807 0.68937254 -0.0092053693 -8.29889107 0.68928975 -0.0091450354 -8.37872887 0.71462607 0.037304088
		 -8.40013027 0.76882052 0.10507882 -8.34522724 0.81820691 0.1606282 -8.28407764 0.82744801 0.17045331
		 -8.18735027 0.64397562 0.30411536 -8.14453888 0.60985315 0.30303991 -8.17232895 0.63127589 0.32822609
		 -8.13885117 0.59331667 0.29510805 -8.12434006 0.58656698 0.32556045 -8.12977028 0.60209268 0.33210781
		 -8.11574745 0.53717035 0.35412169 -8.058409691 0.49940842 0.51081461 -8.076916695 0.50129479 0.5217241
		 -8.020240784 0.45717204 0.61171335 -8.014947891 0.4497385 0.61392218 -8.024982452 0.44877422 0.60662603
		 -8.039954185 0.50883317 0.50528508 -8.10667324 0.58097976 0.35491365 -8.11231041 0.59531415 0.3606506
		 -8.13482666 0.61389434 0.37849775 -8.15450859 0.62212873 0.35310894 -8.18525696 0.62237817 0.38073102
		 -8.2099123 0.63432193 0.36185458 -8.23685837 0.630072 0.40024865 -8.35885143 0.64354038 0.36873832
		 -8.33948708 0.69971836 0.24705783 -8.3944273 1.3628552 -0.41897804;
	setAttr ".vt[996:1161]" -8.42100048 1.40595496 -0.45548418 -8.36686802 1.56160736 -0.71032888
		 -8.52731991 1.67823267 -0.86851186 -8.5279007 1.71943402 -1.042410731 -8.54694176 1.66813755 -1.25183964
		 -8.5582428 1.68456531 -1.38386023 -8.52424335 1.75024366 -1.56770563 -8.48549747 1.69823742 -1.77370143
		 -8.47858429 1.63410056 -1.96784472 -8.4771328 1.55364418 -2.22612667 -8.47516823 1.49454534 -2.41514802
		 -8.47985458 1.44848609 -2.57312751 -8.15841675 1.32603753 -2.58374166 -8.39026642 4.40137959 1.6697228
		 -8.19194508 4.25566626 1.49693274 -8.22321224 1.56919479 -0.37641323 -8.20740795 1.45987654 -0.44554669
		 -8.27205372 1.32581747 -0.52604878 -8.17906189 0.76035595 0.092474855 -8.22839355 0.60270238 -0.0013311603
		 -8.23168182 0.55470908 0.0051478012 -8.15015602 0.54172081 0.29316106 -8.19762516 0.52237701 0.28317982
		 -8.17760754 0.52328289 0.31127965 -8.15894699 0.52382684 0.33906448 -8.1336937 0.54005778 0.32409996
		 -8.18603325 0.52372789 0.36297277 -8.16414452 0.52347445 0.3859216 -8.13935089 0.52165568 0.36667106
		 -8.20804691 0.5232389 0.34081882 -8.022981644 0.53704965 0.51210809 -8.023012161 0.5470463 0.51855147
		 -8.16150761 0.61324781 0.40138185 -8.20602608 0.56361568 0.43335819 -8.034116745 0.55999583 0.53369713
		 -8.052274704 0.56259388 0.54696918 -8.085553169 0.53493387 0.54630458 -8.25844288 0.54086637 0.41954666
		 -8.41706276 0.52860099 0.42673621 -8.42962551 0.52873766 0.45524329 -8.46896553 0.55586934 0.44474173
		 -8.50044346 0.54439873 0.5327639 -8.49701691 0.59944034 0.56787086 -8.46487331 0.51773131 0.53741866
		 -8.38569164 0.65645117 0.21020953 -8.19300556 0.72236806 0.045024972 -8.20132446 0.79863244 0.13676885
		 -8.36513138 1.32886469 -0.49167764 -8.38388634 1.38816166 -0.53474689 -8.31294918 1.40015364 -0.57384253
		 -8.35033321 1.50443244 -0.65214562 -8.31772327 1.51353025 -0.64872879 -8.32871437 1.57019496 -0.70204163
		 -8.49220562 1.68275571 -0.86392903 -8.30203247 1.80423093 -0.91767043 -8.4674263 1.71921539 -1.25034094
		 -8.51902676 1.68328643 -1.25082242 -8.5292387 1.69453418 -1.37658739 -8.49373245 1.73959589 -1.553828
		 -8.44982719 1.67848802 -1.75519848 -8.44020653 1.61138749 -1.95244908 -8.43776226 1.52936125 -2.21417642
		 -8.4362793 1.46950877 -2.4062283 -8.44421005 1.42516303 -2.56812811 -8.36032295 1.41987693 -2.39066935
		 -8.20730591 1.32592404 -2.36518931 -8.15906811 1.33352983 -2.36833644 -8.13039875 1.40446293 -2.39261436
		 -8.1675148 1.42929733 -2.62001204 -8.29589558 1.55702233 -2.67490172 -8.36807346 1.69484735 -2.55227828
		 -8.37245369 1.82023096 -2.37250423 -8.38990498 1.95801795 -2.11296558 -8.41806793 2.038898945 -1.90459847
		 -8.46142197 2.093296528 -1.69020224 -8.48220539 2.13246703 -1.55701232 -8.46384621 2.23429275 -1.44717658
		 -8.44563961 2.31597543 -1.34887195 -8.42582893 2.4145503 -1.31372941 -8.40691185 2.57192659 -1.27190399
		 -8.40385437 2.66055512 -1.23833978 -8.40558815 2.74582887 -1.19523275 -8.40651131 2.77351189 -1.17872941
		 -8.40835762 2.82808757 -1.14307654 -8.41024017 2.91049743 -1.08816123 -8.41062546 2.96685457 -1.052217007
		 -8.4068222 3.080707073 -0.98017967 -8.34816456 3.35087919 -0.78183365 -8.32517147 3.40314198 -0.74199361
		 -8.29894161 3.45508361 -0.70461339 -8.24697208 3.60722899 -0.59587252 -8.24088955 3.7332859 -0.48605281
		 -8.25927448 3.86382008 -0.32559425 -8.281106 3.92966914 -0.2060222 -8.36790848 4.17918301 0.21190891
		 -8.39088821 4.31472158 0.3967385 -8.43270588 4.46844625 0.72044981 -8.4362154 4.62129831 1.012912035
		 -8.42883396 4.67289162 1.20819998 -8.42851734 4.66707325 1.39263809 -8.43425369 4.62771988 1.52187419
		 -8.44888592 4.57505417 1.602314 -8.47975731 4.48331738 1.68453193 -8.51205063 4.38656235 1.75889397
		 -8.34737587 4.48057938 1.59254384 -8.24831867 4.44618702 1.53315115 -8.14541817 4.32835484 1.43383861
		 -8.18795204 3.88240194 1.20292938 -8.23151875 3.83088923 1.25241196 -8.30471802 3.77003527 1.31116676
		 -8.2511301 3.53161383 1.1228826 -8.35720825 3.47174454 1.17407656 -8.41504669 3.44810176 1.19414091
		 -8.39278889 3.28188109 1.069653034 -8.29944324 2.83401036 0.868348 -8.28934383 2.70385027 0.79830587
		 -8.28570557 2.53368831 0.63981086 -8.3037405 2.40691304 0.47928792 -8.31003189 2.29814601 0.35128847
		 -8.30973625 2.21634173 0.25821546 -8.31081581 2.11073732 0.13617258 -8.31271458 2.031926155 0.046060964
		 -8.3030653 1.84281313 -0.15666217 -8.29560375 1.78590608 -0.20766555 -8.33624077 1.61448741 -0.26400039
		 -8.18776226 1.56252551 -0.47576582 -8.20530224 1.44644737 -0.49901524 -8.21355629 1.4390198 -0.52297807
		 -8.36855888 0.66080856 0.068705097 -8.33202076 0.5641675 0.0024654137 -8.25506115 0.53152275 0.0052895024
		 -8.25116634 0.52184492 0.11941475 -8.30923653 0.5205707 0.11350797 -8.33193016 0.51563317 0.23208608
		 -8.43166828 0.55540234 0.32146871 -8.42332268 0.62706882 0.3346113 -8.44434357 0.62027299 0.42575759
		 -8.45877266 0.55663526 0.41483647 -8.45343876 0.61694318 0.45688978 -8.35044289 0.5674268 0.099175349
		 -8.29176331 0.58345121 -0.22438553 -8.31030655 0.55192506 -0.20572162 -8.25103855 0.56996739 -0.21104269
		 -8.25060749 0.5431813 -0.19522312 -8.30113888 0.53036195 0.0048282631 -8.29263973 0.53085637 -0.19084045
		 -8.2637701 0.52971047 -0.18877277 -8.26555157 0.45696789 -0.29575461 -8.29586315 1.32238734 -0.52603507
		 -8.28789806 1.40726566 -0.5741986 -8.23351288 1.54052067 -0.60103941 -8.22891808 1.59924936 -0.64159137
		 -8.37443256 1.69984519 -0.83726215 -8.33296013 1.70785356 -0.8205452 -8.18604565 1.74540544 -0.70432401
		 -8.15990067 1.75688827 -0.66207659 -8.1285553 1.78030515 -0.57307994 -8.044815063 1.85920572 -0.64953405
		 -7.94667959 1.89264464 -0.79777515 -7.92927742 1.92971814 -0.71437639 -7.95689344 1.87725425 -0.8382284
		 -7.96617937 1.86402178 -0.87685436 -8.15580654 1.78977847 -0.88465321 -8.052696228 1.82904673 -1.07792294
		 -8.26198101 1.92158175 -1.03956461 -8.31897926 1.89736414 -1.1029222;
	setAttr ".vt[1162:1327]" -8.37407684 1.83678663 -1.27209711 -8.47626114 1.72114396 -1.36530948
		 -8.43718433 1.72332644 -1.52832365 -8.38613129 1.64450812 -1.71875978 -8.36171913 1.48219538 -2.19066358
		 -8.28346062 1.67331457 -2.53117204 -8.29015064 1.79475343 -2.34514713 -8.31829834 1.92879224 -2.083632946
		 -8.35749626 2.009323597 -1.87802684 -8.41583443 2.065753937 -1.66738653 -8.33527946 1.97002625 -1.60835469
		 -8.24947453 1.88756418 -1.7964704 -8.22707939 1.75688362 -1.72725606 -8.27032566 1.63138747 -1.67308235
		 -8.1713028 1.64963651 -1.91725969 -8.22620583 1.51734388 -1.86658001 -8.36678314 1.56854033 -1.92095375
		 -8.14366245 1.5382762 -2.45051336 -8.19493008 1.56028783 -1.88033748 -8.20629597 1.40356803 -2.14654064
		 -8.15998745 1.42999887 -2.15206289 -8.13331413 1.5106734 -2.18276787 -8.15095139 1.65583479 -2.25285435
		 -8.19269085 1.79410136 -1.99100864 -8.24703598 1.67350936 -1.68900442 -8.31047344 1.86378682 -1.55702686
		 -8.37229156 2.034651756 -1.45311332 -8.32021713 2.091076612 -1.7203021 -8.18565178 2.098639011 -1.73821497
		 -8.2824955 2.076472759 -1.99208498 -8.084882736 2.26711512 -1.99530816 -8.27908802 2.096418858 -2.071829796
		 -8.33072472 2.21081901 -1.72728956 -8.34377003 2.27031589 -1.53203011 -8.40757942 2.2234962 -1.44372737
		 -8.38590336 2.30671024 -1.35554242 -8.36226463 2.40202808 -1.3149991 -8.34055328 2.5543313 -1.26357639
		 -8.33648205 2.64306259 -1.22811937 -8.33804417 2.72704387 -1.18452561 -8.33908653 2.75424814 -1.16801488
		 -8.34099388 2.80803537 -1.13175797 -8.3433485 2.88970375 -1.074823499 -8.3452301 2.9461627 -1.038376808
		 -8.3431282 3.058828354 -0.96507668 -8.27263641 3.31411099 -0.76093662 -8.23985577 3.35726738 -0.71609372
		 -8.19524956 3.39199257 -0.67009664 -8.053924561 3.48000717 -0.50970155 -8.056477547 3.62195349 -0.40416884
		 -8.079007149 3.75963092 -0.24794191 -8.10624027 3.83002758 -0.13237867 -8.23250294 4.10803223 0.27337912
		 -8.26191807 4.25127888 0.45513234 -8.32089424 4.40895844 0.76541686 -8.3299017 4.55105829 1.054162979
		 -8.32115936 4.58826351 1.24164951 -8.32033825 4.57271576 1.40773404 -8.32806015 4.52936649 1.5215714
		 -8.16348553 4.40725708 1.44296885 -8.16302872 4.39193916 1.32440889 -8.3303442 3.30901957 1.048597574
		 -8.20904064 2.85703468 0.86006504 -8.19564629 2.72332144 0.79289258 -8.20115662 2.56220245 0.62122333
		 -8.22863007 2.43725276 0.45167172 -8.23410034 2.32835078 0.32138434 -8.23182869 2.24773288 0.22666149
		 -8.23063087 2.14356256 0.10242282 -8.2314539 2.065888405 0.010744585 -8.20940971 1.88941336 -0.20634341
		 -8.15515041 1.82438755 -0.35264313 -8.12960243 1.80866265 -0.43826327 -8.19327545 1.63787842 -0.37849456
		 -8.16599655 1.62858844 -0.49520051 -8.18442822 1.6160444 -0.57428724 -8.19766712 1.55465698 -0.54394865
		 -8.21271133 1.54798818 -0.574512 -8.22640514 1.43079865 -0.54360652 -8.20388889 1.60816264 -0.60999137
		 -8.21834469 1.73547626 -0.7415812 -8.033016205 1.91432023 -0.51700485 -7.91257191 1.98840594 -0.58937567
		 -8.095552444 2.026558876 -1.15372193 -8.15064144 1.98789501 -1.023495436 -8.17775631 1.93085992 -0.98118973
		 -8.22999573 1.93084764 -1.013298035 -8.35512066 1.90965748 -1.40448129 -8.34338379 2.076898336 -1.35632539
		 -8.33773422 1.97122002 -1.32088554 -8.17985153 2.20689368 -1.26498556 -8.11211967 2.16941738 -1.49529958
		 -8.14546776 2.13544178 -1.59040427 -8.025971413 2.27415204 -1.85774231 -8.14922333 2.33853722 -2.065792561
		 -8.32223034 2.098945141 -1.99512506 -8.29678726 2.30336809 -1.71075344 -8.31836605 2.37478352 -1.44397664
		 -8.30445004 2.42428827 -1.41342556 -8.26598549 2.56284332 -1.33400702 -8.24880886 2.64476156 -1.27751231
		 -8.24022102 2.72251177 -1.21539903 -8.23877239 2.74704933 -1.19365072 -8.23865604 2.79442239 -1.14895713
		 -8.24168777 2.86509085 -1.077364445 -8.2466259 2.91838169 -1.032652378 -8.25154972 3.026096821 -0.95331901
		 -8.17985725 3.25798464 -0.74540609 -8.1352911 3.28882289 -0.70441175 -7.94199371 3.21622944 -0.73784059
		 -7.83790588 3.03473568 -0.61668563 -7.85597229 3.079994678 -0.76889992 -7.81122923 2.90754366 -0.6564278
		 -7.80769539 2.77887464 -0.87614143 -7.71945 2.4994626 -0.67030019 -7.72788572 2.42446327 -0.80048823
		 -7.81711912 2.70482898 -1.0072112083 -7.81254101 2.25334668 -0.67627341 -7.73416328 2.38782406 -0.86511314
		 -7.8212657 2.21736884 -0.74480498 -7.8384304 2.16654229 -0.84679997 -7.84992123 2.13521409 -0.91373748
		 -7.90073204 1.9933219 -0.84585559 -7.85586119 2.12058806 -0.94652522 -7.91128206 1.97972345 -0.88286448
		 -7.92270947 1.96748233 -0.91908401 -7.97764254 1.9447577 -1.048512936 -7.8953023 2.030846119 -1.15936852
		 -7.89996529 2.019134521 -1.18857324 -7.90749836 1.99362051 -1.25141454 -8.078813553 2.0066661835 -1.24400008
		 -8.012962341 1.93936527 -1.55141449 -7.98932695 1.94311929 -1.60207462 -7.94514608 1.92347264 -1.54018235
		 -7.96531296 2.19261575 -1.3517015 -8.065502167 2.14987779 -1.179842 -8.2023201 2.039284706 -1.10129416
		 -8.20942783 1.97562075 -1.045147657 -8.24207878 1.96531749 -1.067456007 -8.22678566 2.035571814 -1.11415029
		 -8.29629517 1.94525337 -1.1252718 -8.35245991 1.88911533 -1.28993487 -8.38366318 1.81468678 -1.36929309
		 -8.34479141 1.75484061 -1.50726652 -8.32434177 1.79154372 -1.5231986 -8.36446095 1.86025119 -1.3847177
		 -8.11680603 2.24385142 -1.2091769 -8.0063438416 2.28262877 -1.30660725 -8.048460007 2.24155664 -1.36640716
		 -8.031712532 2.33043385 -1.90046906 -8.10354424 2.43040609 -1.9796741 -8.25743103 2.28230953 -1.96594644
		 -8.25656414 2.42999172 -1.65424454 -8.2381649 2.50724554 -1.58698678 -8.20710087 2.63495684 -1.47930765
		 -8.18800163 2.71412683 -1.41199565 -8.1709795 2.79084301 -1.33950436 -8.16627216 2.81510019 -1.31341171
		 -8.15844345 2.86065125 -1.25946927 -8.15102386 2.92146349 -1.17429185 -8.14806271 2.95993066 -1.11738443
		 -8.14470673 3.038476944 -1.0073412657 -8.092648506 3.23756886 -0.78945005 -8.04991436 3.25847149 -0.78022766
		 -7.91801596 3.16128421 -0.81911051 -7.81899595 2.84945345 -0.92280591;
	setAttr ".vt[1328:1493]" -7.74624252 2.33374453 -0.96043122 -7.86159801 2.10646963 -0.97874117
		 -7.88488674 2.054908991 -1.10149646 -7.90393925 2.23627424 -1.40274906 -7.94976139 2.024311781 -1.59049392
		 -7.90035152 1.99299133 -1.56796956 -7.81505919 2.11827159 -1.33705378 -8.0076150894 2.22533035 -1.22959733
		 -8.040484428 2.23261261 -1.16648626 -8.012068748 2.26674628 -1.22049832 -8.02636528 2.27258158 -1.22730303
		 -8.066473007 2.26541972 -1.17838359 -8.050559044 2.26512027 -1.17074203 -8.27292728 2.022271395 -1.15837646
		 -8.13155365 2.18453312 -1.1190052 -8.044363976 2.21398401 -1.16862237 -8.089684486 2.23141575 -1.10273552
		 -8.096493721 2.23720932 -1.10443926 -8.087415695 2.24775028 -1.10016036 -7.9766078 2.33079052 -1.72771943
		 -7.97639179 2.39485598 -1.76793671 -8.19603729 2.35678577 -2.083502293 -8.23434639 2.31414557 -2.021064997
		 -8.29829025 2.12645817 -2.06438899 -8.013798714 3.21891952 -0.85622984 -7.82454634 2.66705561 -1.074470878
		 -7.84029388 2.60786629 -1.17891145 -7.75557137 2.29844213 -1.021974087 -7.76054382 2.28091621 -1.051951408
		 -7.76536846 2.26350498 -1.081436634 -7.78596497 2.19547367 -1.19493914 -7.79673481 2.16349006 -1.25109875
		 -7.80250072 2.14800262 -1.27935052 -8.011304855 2.20174384 -1.24070847 -7.90926838 2.43424392 -1.46532142
		 -7.94645643 2.37265968 -1.62999833 -8.049096107 2.5294764 -1.85243583 -8.18181229 2.53320932 -1.83159828
		 -8.1593523 2.62525511 -1.75277877 -8.12871933 2.76169348 -1.61964774 -8.11107731 2.84215927 -1.53775191
		 -8.09386158 2.91261506 -1.4466691 -8.089175224 2.93579507 -1.41610479 -8.07617569 2.97801876 -1.35287285
		 -8.0601511 3.033434868 -1.25492346 -8.05087471 3.066702366 -1.19208217 -8.038707733 3.12589121 -1.065460205
		 -8.058670998 3.2164259 -0.8585062 -7.90299082 3.042941093 -1.03141427 -7.90321255 2.268785 -1.36819315
		 -7.90555811 2.28367662 -1.35370541 -7.94292355 2.43874145 -1.66754961 -8.010260582 2.58930826 -1.7533946
		 -8.15132713 2.45831537 -2.0033893585 -8.22068787 2.39343023 -1.92412925 -8.19933414 2.42688894 -1.96653914
		 -8.16307259 2.56315088 -1.8628391 -7.9925971 3.11439371 -1.061801434 -7.91416359 2.98010421 -1.1610291
		 -8.0046110153 3.056326866 -1.19104278 -7.92345428 2.94908333 -1.2270968 -7.83337641 2.74152136 -1.12039793
		 -7.84627867 2.68985057 -1.22315383 -7.85713959 2.6585443 -1.29324567 -7.89727163 2.76298261 -1.38374114
		 -7.92224789 2.71951485 -1.48522663 -8.10190487 2.5685389 -1.87728786 -7.94247532 2.9023633 -1.3267498
		 -7.89953327 2.50267434 -1.4978348 -7.95162392 2.67440295 -1.58651352 -8.068471909 2.63976789 -1.78194237
		 -8.14035034 2.65326643 -1.78142715 -8.10025311 2.78613496 -1.64177024 -8.076179504 2.85542464 -1.55135906
		 -8.052500725 2.91585779 -1.45325482 -8.046203613 2.93514895 -1.4206984 -8.032727242 2.97314119 -1.35527933
		 -8.014866829 3.02461338 -1.25585699 -7.95787382 2.87085676 -1.39387441 -7.96577549 2.85435033 -1.42733502
		 -8.019342422 2.74572468 -1.62379098 -7.99320984 2.8024919 -1.52631092 -7.91394854 2.30935621 -1.33166051
		 -7.86285067 2.54626679 -1.29239547 -7.8541503 2.8861537 -1.11484838 -7.88210773 2.024544477 -0.77009106
		 -7.72129631 2.6350069 -0.44393042 -7.82035923 2.96406126 -0.56730443 -7.86478806 3.11132431 -0.50597841
		 -8.12512875 4.062037468 1.035265684 -8.14692688 3.95744133 1.13030434 -8.16228771 3.60495472 1.055976152
		 -8.050862312 2.004099369 -0.28486276 -8.036877632 1.94467759 -0.43438739 -7.90746927 2.025557995 -0.50928915
		 -7.86055422 2.077657223 -0.6549024 -7.85024691 2.1140275 -0.57932866 -7.80070448 2.32704544 -0.54035842
		 -7.79553366 2.46055651 -0.30817077 -7.84131908 3.041620255 -0.4538129 -7.84908819 3.27991533 -0.35414726
		 -7.82207632 3.42051172 -0.25879857 -7.8567028 3.56610274 -0.10894655 -7.90376806 3.65161324 0.0011357543
		 -8.080488205 3.97740602 0.39500087 -8.12171555 4.12337303 0.56804794 -8.19898891 4.28886366 0.85495055
		 -8.22159481 4.41780949 1.12725854 -8.25687885 4.51107264 1.27349293 -8.10985661 3.66615772 0.99670142
		 -8.061271667 3.75420713 0.90912819 -8.21411705 3.37480235 0.99598122 -8.044553757 2.9246912 0.81892252
		 -8.018130302 2.78309941 0.75022638 -8.040010452 2.61111259 0.57032543 -8.09519577 2.51018786 0.38595253
		 -8.09190464 2.40049434 0.25629944 -8.080922127 2.31771469 0.16407874 -8.072896957 2.21594024 0.037986897
		 -8.071083069 2.14556193 -0.056914523 -7.90686274 2.096649647 -0.36059076 -7.7305069 2.69518113 -0.349071
		 -7.8486743 3.10735464 -0.37459028 -7.87948275 3.17489767 -0.42999762 -8.17137718 4.24414444 0.88846636
		 -8.11586571 3.45203018 0.92532736 -7.92233562 3.013343811 0.72374022 -7.88483047 2.87235737 0.65090352
		 -7.91492128 2.69843626 0.4808329 -7.97333288 2.59359694 0.31169999 -7.95000124 2.47604728 0.19771439
		 -7.93273401 2.39481115 0.10398993 -7.9186821 2.29665375 -0.026141223 -7.91394091 2.23063922 -0.12490326
		 -7.83723545 2.18633151 -0.43402296 -7.83456326 2.32029104 -0.19532952 -7.81558847 3.21003938 -0.2913698
		 -7.78166771 3.34591389 -0.19315447 -7.81279469 3.49847269 -0.050255768 -7.86063814 3.5897634 0.056052905
		 -8.045707703 3.92892385 0.44039124 -8.090510368 4.074397087 0.61024839 -8.038756371 3.87392378 0.79307592
		 -8.059758186 3.51521158 0.85942829 -7.80046082 2.52168632 -0.2109354 -7.75443268 2.77807403 -0.22731744
		 -8.010258675 3.60570621 0.76161826 -7.8659296 3.086267471 0.62369752 -7.82639599 2.95605898 0.54911935
		 -7.85186148 2.78537726 0.39422107 -7.90028667 2.66815591 0.23945418 -7.87681627 2.55647087 0.12623455
		 -7.85696554 2.47858 0.034446429 -7.8405261 2.38453722 -0.095855735 -7.8150897 2.6087153 -0.084894367
		 -7.77374315 2.84396958 -0.14206176 -7.83070564 2.6798625 0.0045079687 -7.76424265 2.935184 -0.032224588
		 -7.7166791 3.058486938 0.093200289 -7.72629499 3.22971296 0.23085406 -7.77763176 3.34361982 0.31731397
		 -7.9838624 3.7286396 0.63658637 -7.81118202 3.19479418 0.4841086 -7.76207352 3.072668552 0.40639555
		 -7.76424837 2.89365077 0.26276594 -7.82092428 2.77602243 0.1227489;
	setAttr ".vt[1494:1502]" -8.2501297 0.55250913 0.6124984 -8.25321865 0.61366516 0.64536476
		 -8.24160385 0.56774938 0.62094116 -8.24354458 0.60140902 0.6379748 -8.27268982 0.42026287 0.71612424
		 -8.27126884 0.41791213 0.71919781 -8.2733326 0.42067581 0.72108895 -8.63632774 3.98388386 1.68330216
		 -8.595438 4.051788807 1.96532822;
	setAttr -s 3005 ".ed";
	setAttr ".ed[0:165]"  128 39 1 0 791 1 778 42 1 770 769 1 9 7 1 7 8 1 8 1 1
		 1 9 1 11 10 1 154 12 1 156 12 1 270 1 1 8 264 1 264 270 1 271 9 1 777 263 1 272 776 1
		 272 167 1 10 14 1 368 11 1 262 165 1 262 15 1 141 167 1 249 250 1 359 356 1 247 358 1
		 358 359 1 375 3 1 454 346 1 21 137 1 168 21 1 172 135 1 5 394 1 5 22 1 23 5 1 23 395 1
		 6 29 1 31 6 1 501 28 1 29 27 1 30 397 1 30 280 1 31 501 1 31 495 1 31 496 1 33 509 1
		 33 32 1 34 604 1 429 433 1 435 428 1 435 433 1 186 37 1 37 183 1 40 866 1 41 866 1
		 41 779 1 779 42 1 42 86 1 86 44 1 86 87 1 44 88 1 89 778 1 89 875 1 45 861 1 37 865 1
		 865 864 1 864 863 1 863 119 1 46 789 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1
		 52 53 1 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1
		 63 64 1 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1
		 74 75 1 75 76 1 76 77 1 77 78 1 78 79 1 79 80 1 80 81 1 81 82 1 82 83 1 83 39 1 128 84 1
		 84 129 1 85 42 1 85 130 1 87 43 1 131 43 1 43 44 1 43 133 1 875 90 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1
		 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1
		 111 112 1 112 113 1 113 114 1 114 115 1 115 116 1 116 117 1 117 118 1 118 45 1 45 37 1
		 37 187 1 187 864 1 119 46 1 119 187 1 120 126 1 124 123 1 124 185 1 185 121 1 122 121 1
		 184 122 1 292 122 1 293 121 1 121 123 1 124 125 1 125 126 1 126 119 1 189 119 1 189 47 1
		 190 48 1 191 49 1;
	setAttr ".ed[166:331]" 192 50 1 193 51 1 194 52 1 195 53 1 196 54 1 197 55 1
		 198 56 1 199 57 1 200 58 1 201 59 1 202 60 1 203 61 1 204 62 1 205 63 1 206 64 1
		 207 65 1 208 66 1 209 67 1 210 68 1 211 69 1 212 70 1 213 71 1 214 72 1 215 73 1
		 216 74 1 217 75 1 218 76 1 219 77 1 220 78 1 221 79 1 222 80 1 223 81 1 224 82 1
		 127 83 1 127 128 1 129 85 1 129 225 1 130 226 1 86 130 1 226 87 1 87 227 1 227 131 1
		 132 131 1 131 228 1 88 89 1 89 229 1 229 90 1 230 91 1 231 92 1 232 93 1 233 94 1
		 234 95 1 235 96 1 236 97 1 237 98 1 238 99 1 239 100 1 240 101 1 241 102 1 242 103 1
		 136 104 1 134 105 1 135 106 1 134 135 1 134 21 1 134 136 1 136 137 1 137 243 1 244 138 1
		 138 137 1 138 168 1 138 245 1 139 168 1 139 246 1 352 274 1 353 379 1 381 141 1 140 141 1
		 140 18 1 18 142 1 142 162 1 18 248 1 248 143 1 143 142 1 143 144 1 144 145 1 145 142 1
		 248 251 1 146 143 1 148 144 1 149 147 1 147 144 1 149 150 1 150 157 1 157 158 1 150 151 1
		 151 152 1 152 256 1 256 153 1 153 260 1 259 12 1 12 153 1 154 155 1 154 258 1 158 155 1
		 155 156 1 2 153 1 2 152 1 152 157 1 158 149 1 147 159 1 159 160 1 160 161 1 161 145 1
		 145 159 1 161 162 1 162 140 1 161 163 1 163 164 1 164 162 1 164 141 1 163 165 1 165 166 1
		 166 164 1 273 141 1 273 382 1 247 356 1 356 378 1 380 246 1 169 21 1 169 135 1 135 170 1
		 170 277 1 171 170 1 172 107 1 172 173 1 173 108 1 173 174 1 174 109 1 174 175 1 175 110 1
		 175 176 1 176 111 1 176 177 1 177 112 1 177 178 1 178 113 1 178 179 1 179 114 1 179 180 1
		 180 115 1 180 181 1 181 116 1 181 182 1 182 117 1 182 183 1 183 118 1 183 290 1 290 184 1
		 184 185 1 185 186 1 186 290 1 124 120 1 120 186 1 120 187 1 184 291 1;
	setAttr ".ed[332:497]" 123 38 1 38 125 1 125 401 1 188 126 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 200 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 220 1 220 221 1 221 222 1 222 223 1 223 224 1 224 127 1 127 129 1
		 224 225 1 225 130 1 225 328 1 227 330 1 330 132 1 132 332 1 332 228 1 133 88 1 88 333 1
		 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1
		 238 239 1 239 240 1 240 241 1 241 242 1 242 136 1 242 243 1 243 244 1 244 348 1 348 245 1
		 245 139 1 245 350 1 246 352 1 353 354 1 354 378 1 461 356 1 355 383 1 380 140 1 380 274 1
		 274 18 1 248 249 1 250 251 1 251 16 1 16 252 1 252 146 1 252 253 1 253 148 1 16 362 1
		 254 252 1 254 255 1 255 253 1 150 253 1 255 151 1 262 256 1 256 257 1 257 260 1 157 156 1
		 2 156 1 158 258 1 258 259 1 259 159 1 147 258 1 259 260 1 160 261 1 261 163 1 261 262 1
		 257 261 1 160 260 1 151 262 1 255 15 1 254 14 1 254 362 1 368 14 1 14 15 1 368 263 1
		 263 264 1 263 265 1 266 264 1 266 13 1 266 367 1 267 13 1 267 269 1 13 268 1 268 264 1
		 268 269 1 269 270 1 270 271 1 271 272 1 272 273 1 17 383 1 355 247 1 379 274 1 380 381 1
		 139 381 1 275 169 1 169 384 1 275 170 1 275 276 1 276 277 1 277 389 1 390 278 1 278 277 1
		 278 171 1 278 392 1 279 171 1 172 171 1 279 173 1 279 30 1 30 174 1 279 392 1 392 280 1
		 24 280 1 24 396 1 281 280 1 398 282 1 282 175 1 282 283 1 283 176 1 283 284 1 284 177 1
		 284 285 1 285 178 1 285 286 1 286 179 1 286 287 1 287 180 1 287 288 1;
	setAttr ".ed[498:663]" 288 181 1 288 289 1 289 182 1 289 290 1 289 291 1 291 399 1
		 415 292 1 292 291 1 416 293 1 293 292 1 294 293 1 294 123 1 400 38 1 401 188 1 295 188 1
		 295 190 1 295 296 1 296 191 1 296 297 1 297 192 1 297 298 1 298 193 1 298 299 1 299 194 1
		 299 300 1 300 195 1 300 301 1 301 196 1 301 302 1 302 197 1 302 303 1 303 198 1 303 304 1
		 304 199 1 304 305 1 305 200 1 305 306 1 306 201 1 306 307 1 307 202 1 307 308 1 308 203 1
		 308 309 1 309 204 1 309 310 1 310 205 1 310 311 1 311 206 1 311 312 1 312 207 1 312 313 1
		 313 208 1 313 314 1 314 209 1 314 315 1 315 210 1 315 316 1 316 211 1 316 317 1 317 212 1
		 317 318 1 318 213 1 318 319 1 319 214 1 319 320 1 320 215 1 320 321 1 321 216 1 321 322 1
		 322 217 1 322 323 1 323 218 1 323 324 1 324 219 1 324 325 1 325 220 1 325 326 1 326 221 1
		 326 327 1 327 222 1 327 328 1 328 223 1 328 226 1 327 329 1 329 226 1 329 227 1 329 448 1
		 330 449 1 449 331 1 450 331 1 331 451 1 228 133 1 333 229 1 333 334 1 334 230 1 334 335 1
		 335 231 1 335 336 1 336 232 1 336 337 1 337 233 1 337 338 1 338 234 1 338 339 1 339 235 1
		 339 340 1 340 236 1 340 341 1 341 237 1 341 342 1 342 238 1 342 343 1 343 239 1 343 344 1
		 344 240 1 344 345 1 345 241 1 345 243 1 345 346 1 346 244 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 246 1 350 351 1 351 352 1 351 460 1 460 353 1 353 352 1 385 247 1 383 382 1
		 382 381 1 379 248 1 378 249 1 359 249 1 355 357 1 17 357 1 357 358 1 357 369 1 370 358 1
		 371 250 1 373 360 1 360 250 1 360 16 1 360 361 1 361 362 1 362 363 1 363 364 1 363 17 1
		 17 365 1 365 364 1 366 265 1 365 366 1 366 367 1 271 366 1 270 367 1 367 267 1 266 265 1
		 265 364 1 364 368 1 368 362 1 365 272 1 17 273 1 363 369 1 369 370 1;
	setAttr ".ed[664:829]" 370 372 1 19 358 1 376 359 1 371 359 1 371 373 1 373 374 1
		 374 361 1 361 369 1 374 370 1 377 371 1 377 3 1 3 373 1 374 375 1 19 376 1 372 19 1
		 375 20 1 20 4 1 4 372 1 372 375 1 4 376 1 20 377 1 377 376 1 378 379 1 382 168 1
		 383 384 1 384 168 1 384 386 1 386 385 1 275 386 1 385 276 1 385 461 1 387 276 1 387 389 1
		 387 388 1 388 459 1 459 389 1 462 390 1 390 389 1 390 391 1 391 392 1 391 464 1 464 23 1
		 23 24 1 24 391 1 463 5 1 465 22 1 466 468 1 468 22 1 469 22 1 470 5 1 471 394 1 394 395 1
		 394 473 1 27 395 1 395 396 1 396 281 1 396 474 1 475 281 1 476 397 1 397 281 1 398 397 1
		 478 283 1 479 284 1 480 285 1 406 286 1 407 287 1 399 288 1 417 294 1 294 400 1 400 401 1
		 401 409 1 409 295 1 410 296 1 411 297 1 412 298 1 402 299 1 402 435 1 435 300 1 402 403 1
		 402 412 1 420 403 1 404 405 1 404 423 1 413 405 1 421 425 1 421 406 1 406 407 1 407 399 1
		 399 415 1 408 400 1 408 409 1 409 410 1 410 411 1 411 412 1 412 420 1 413 421 1 414 407 1
		 414 415 1 422 416 1 416 415 1 424 417 1 417 416 1 417 408 1 408 418 1 418 410 1 418 419 1
		 419 411 1 419 420 1 420 404 1 419 423 1 423 413 1 413 422 1 422 414 1 414 421 1 422 424 1
		 424 418 1 423 424 1 406 480 1 426 403 1 427 403 1 427 435 1 427 481 1 428 429 1 429 556 1
		 430 431 1 482 483 1 512 432 1 431 486 1 429 431 1 433 487 1 434 435 1 434 301 1 434 436 1
		 436 302 1 436 437 1 437 303 1 437 438 1 438 304 1 438 439 1 439 305 1 439 440 1 440 306 1
		 440 441 1 441 307 1 441 442 1 442 308 1 442 443 1 443 309 1 443 444 1 444 310 1 444 445 1
		 445 311 1 445 446 1 446 312 1 446 447 1 447 313 1 447 658 1 658 314 1 659 315 1 660 316 1
		 661 317 1 662 318 1 663 319 1 664 320 1 665 321 1 666 322 1;
	setAttr ".ed[830:995]" 667 323 1 668 324 1 669 325 1 448 326 1 448 330 1 448 669 1
		 450 697 1 450 670 1 670 451 1 451 332 1 332 692 1 452 228 1 671 333 1 672 334 1 673 335 1
		 674 336 1 675 337 1 676 338 1 677 339 1 678 340 1 679 341 1 680 342 1 453 343 1 453 454 1
		 454 344 1 454 467 1 467 347 1 455 349 1 455 767 1 767 458 1 456 457 1 457 458 1 457 459 1
		 388 460 1 460 457 1 351 458 1 388 354 1 387 461 1 461 354 1 456 462 1 462 459 1 456 463 1
		 463 464 1 464 462 1 463 465 1 465 466 1 466 467 1 682 468 1 393 468 1 393 469 1 469 470 1
		 470 471 1 471 472 1 472 473 1 473 27 1 27 31 1 28 6 1 28 766 1 766 395 1 766 474 1
		 474 475 1 475 476 1 476 477 1 477 398 1 398 478 1 478 479 1 479 480 1 480 425 1 425 405 1
		 404 426 1 508 427 1 481 428 1 428 510 1 428 511 1 556 430 1 430 482 1 483 557 1 483 512 1
		 512 513 1 432 482 1 482 485 1 485 431 1 486 433 1 487 434 1 515 436 1 516 437 1 517 438 1
		 518 439 1 519 440 1 520 441 1 521 442 1 522 443 1 523 444 1 524 445 1 525 446 1 488 447 1
		 488 657 1 527 657 1 527 656 1 656 528 1 529 688 1 529 655 1 489 530 1 530 490 1 490 654 1
		 490 531 1 531 491 1 532 653 1 653 491 1 564 492 1 492 493 1 493 471 1 494 472 1 494 495 1
		 495 473 1 494 533 1 566 495 1 567 31 1 496 500 1 500 498 1 498 499 1 497 498 1 498 534 1
		 535 497 1 537 497 1 500 501 1 500 540 1 540 548 1 501 550 1 550 502 1 32 503 1 503 502 1
		 474 502 1 503 475 1 32 551 1 551 504 1 504 503 1 504 476 1 552 505 1 505 504 1 505 477 1
		 477 554 1 554 478 1 506 479 1 506 425 1 506 507 1 507 405 1 507 426 1 507 553 1 508 426 1
		 552 481 1 551 509 1 509 481 1 509 510 1 544 510 1 571 510 1 430 557 1 558 512 1 513 484 1
		 36 484 1 36 559 1 559 432 1 432 484 1 485 560 1 560 486 1 486 514 1;
	setAttr ".ed[996:1161]" 514 487 1 578 515 1 515 487 1 579 516 1 516 515 1 580 517 1
		 517 516 1 581 518 1 518 517 1 582 519 1 519 518 1 583 520 1 520 519 1 584 521 1 521 520 1
		 585 522 1 522 521 1 586 523 1 523 522 1 587 524 1 524 523 1 588 525 1 525 524 1 526 488 1
		 488 525 1 526 527 1 527 561 1 528 688 1 529 562 1 562 489 1 563 531 1 531 532 1 532 564 1
		 564 565 1 565 493 1 493 494 1 533 566 1 568 496 1 496 534 1 534 535 1 499 540 1 499 537 1
		 537 539 1 537 536 1 536 538 1 569 546 1 569 602 1 602 542 1 603 543 1 543 542 1 544 543 1
		 33 544 1 33 545 1 545 543 1 542 546 1 546 547 1 540 541 1 541 547 1 548 549 1 549 550 1
		 501 548 1 550 32 1 551 552 1 552 508 1 553 505 1 553 554 1 506 554 1 553 508 1 549 33 1
		 548 547 1 546 25 1 25 555 1 555 547 1 555 549 1 555 545 1 545 26 1 26 25 1 542 26 1
		 570 571 1 511 556 1 556 572 1 572 557 1 558 557 1 558 574 1 574 513 1 513 576 1 576 36 1
		 607 559 1 485 559 1 608 514 1 514 578 1 526 589 1 561 528 1 528 591 1 591 529 1 562 593 1
		 593 530 1 593 594 1 563 530 1 596 532 1 596 597 1 597 564 1 565 533 1 565 598 1 650 533 1
		 651 566 1 599 567 1 567 566 1 538 568 1 568 567 1 568 535 1 600 541 1 540 539 1 569 541 1
		 570 544 1 571 630 1 605 511 1 511 571 1 572 573 1 573 606 1 558 573 1 574 575 1 575 576 1
		 607 560 1 560 608 1 577 578 1 617 579 1 579 578 1 618 580 1 580 579 1 619 581 1 581 580 1
		 620 582 1 582 581 1 621 583 1 583 582 1 622 584 1 584 583 1 623 585 1 585 584 1 624 586 1
		 586 585 1 625 587 1 587 586 1 609 588 1 588 587 1 609 589 1 526 588 1 561 590 1 590 591 1
		 591 592 1 592 562 1 594 563 1 594 595 1 595 596 1 596 563 1 597 598 1 599 538 1 599 600 1
		 600 539 1 539 538 1 600 601 1 35 602 1 569 601 1 35 34 1 34 603 1;
	setAttr ".ed[1162:1327]" 603 602 1 603 570 1 570 604 1 604 630 1 605 572 1 631 573 1
		 606 574 1 607 576 1 607 615 1 615 608 1 577 608 1 609 625 1 610 589 1 610 590 1 610 626 1
		 611 592 1 611 627 1 612 592 1 612 628 1 628 594 1 636 595 1 637 652 1 613 652 1 613 604 1
		 632 606 1 614 606 1 614 575 1 575 615 1 615 616 1 616 577 1 617 577 1 617 618 1 618 619 1
		 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1 625 610 1 624 626 1 626 611 1
		 627 612 1 627 635 1 628 636 1 636 637 1 638 613 1 613 629 1 629 630 1 629 631 1 631 605 1
		 605 630 1 629 639 1 632 631 1 640 614 1 614 616 1 641 616 1 641 617 1 642 618 1 643 619 1
		 645 620 1 647 621 1 634 622 1 633 623 1 633 626 1 633 627 1 633 634 1 635 628 1 635 646 1
		 646 636 1 646 644 1 644 637 1 637 638 1 638 639 1 639 632 1 639 649 1 649 640 1 640 632 1
		 640 641 1 649 642 1 642 641 1 648 643 1 643 642 1 644 645 1 645 643 1 646 647 1 647 645 1
		 635 634 1 634 647 1 644 648 1 648 638 1 648 649 1 34 598 1 35 650 1 650 598 1 35 601 1
		 601 651 1 651 650 1 651 599 1 597 652 1 652 34 1 652 595 1 593 612 1 590 611 1 561 589 1
		 536 535 1 28 502 1 492 470 1 469 653 1 653 492 1 393 491 1 491 684 1 684 490 1 654 489 1
		 489 655 1 655 687 1 656 689 1 689 657 1 696 658 1 658 657 1 658 659 1 659 660 1 660 661 1
		 661 662 1 662 663 1 663 664 1 664 665 1 665 666 1 666 667 1 667 668 1 668 669 1 669 449 1
		 449 690 1 690 450 1 697 720 1 451 722 1 452 671 1 671 672 1 672 673 1 673 674 1 674 675 1
		 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 680 453 1 453 694 1 681 454 1 681 682 1
		 682 467 1 708 683 1 683 682 1 683 393 1 683 684 1 684 685 1 685 654 1 654 686 1 686 655 1
		 688 695 1 695 656 1 689 696 1 712 659 1 713 660 1 714 661 1 715 662 1;
	setAttr ".ed[1328:1493]" 716 663 1 717 664 1 719 665 1 698 666 1 691 667 1 690 668 1
		 690 691 1 691 697 1 699 697 1 692 452 1 700 452 1 700 672 1 701 673 1 702 674 1 703 675 1
		 704 676 1 705 677 1 706 678 1 707 679 1 693 680 1 693 694 1 694 725 1 708 681 1 681 694 1
		 708 685 1 686 710 1 688 687 1 711 689 1 696 712 1 691 698 1 699 718 1 718 720 1 720 670 1
		 670 721 1 721 722 1 722 692 1 692 723 1 723 700 1 729 701 1 701 700 1 730 702 1 702 701 1
		 731 703 1 703 702 1 732 704 1 704 703 1 733 705 1 705 704 1 734 706 1 706 705 1 735 707 1
		 707 706 1 724 693 1 693 707 1 724 725 1 685 709 1 709 736 1 686 709 1 710 687 1 687 726 1
		 726 695 1 711 695 1 727 696 1 739 712 1 744 713 1 713 712 1 745 714 1 714 713 1 746 715 1
		 715 714 1 747 716 1 716 715 1 740 717 1 717 716 1 718 719 1 719 717 1 699 698 1 698 719 1
		 722 728 1 709 725 1 708 725 1 736 710 1 710 737 1 737 726 1 726 738 1 738 711 1 727 711 1
		 718 740 1 748 720 1 728 723 1 750 729 1 729 723 1 751 730 1 730 729 1 752 731 1 731 730 1
		 753 732 1 732 731 1 755 733 1 733 732 1 756 734 1 734 733 1 741 735 1 735 734 1 736 724 1
		 724 735 1 736 741 1 737 742 1 738 743 1 743 727 1 739 727 1 748 721 1 721 749 1 749 728 1
		 741 737 1 742 754 1 738 742 1 743 759 1 759 739 1 760 744 1 744 739 1 761 745 1 745 744 1
		 762 746 1 746 745 1 757 747 1 747 746 1 748 740 1 740 747 1 748 757 1 763 750 1 750 728 1
		 764 751 1 751 750 1 765 752 1 752 751 1 758 753 1 753 752 1 754 755 1 755 753 1 742 756 1
		 756 755 1 741 756 1 754 758 1 743 754 1 758 759 1 758 765 1 760 759 1 760 761 1 761 762 1
		 762 757 1 757 749 1 749 763 1 763 764 1 764 765 1 765 760 1 764 761 1 763 762 1 29 766 1
		 466 455 1 465 767 1 767 456 1 349 458 1 347 455 1 386 355 1 133 671 1;
	setAttr ".ed[1494:1659]" 132 331 1 30 282 1 149 148 1 148 146 1 146 251 1 167 768 1
		 771 770 1 15 771 1 770 262 1 769 165 1 769 775 1 775 166 1 167 166 1 8 777 1 10 771 1
		 10 772 1 772 773 1 773 771 1 773 769 1 772 7 1 7 774 1 774 773 1 774 775 1 774 776 1
		 776 768 1 768 775 1 9 776 1 772 777 1 11 777 1 41 85 1 41 84 1 40 84 1 40 39 1 875 1501 1
		 1501 778 1 778 44 1 778 0 1 779 780 1 780 866 1 779 0 1 1502 791 1 872 792 1 794 1222 1
		 799 795 1 795 802 1 1032 982 1 781 782 1 983 796 1 797 1039 1 1035 799 1 799 798 1
		 798 800 1 800 801 1 798 802 1 802 801 1 1034 803 1 803 799 1 802 804 1 804 993 1
		 804 805 1 805 811 1 993 801 1 808 1033 1 1033 807 1 807 806 1 806 808 1 1029 810 1
		 812 811 1 1129 1018 1 1040 813 1 815 814 1 815 816 1 815 818 1 1015 967 1 1015 819 1
		 819 968 1 1141 820 1 820 1139 1 1139 1142 1 1233 821 1 1143 820 1 783 823 1 823 957 1
		 822 783 1 1209 824 1 827 826 1 826 825 1 825 956 1 956 827 1 828 829 1 828 830 1
		 831 1158 1 1158 829 1 828 831 1 1158 832 1 831 1050 1 1050 832 1 784 1157 1 784 833 1
		 1157 829 1 829 833 1 835 785 1 836 1159 1 835 836 1 785 1159 1 838 837 1 838 839 1
		 837 840 1 840 839 1 836 841 1 836 842 1 843 844 1 843 1301 1 1301 1341 1 1341 844 1
		 1411 845 1 1411 846 1 786 847 1 848 849 1 848 851 1 851 850 1 853 1295 1 859 858 1
		 858 857 1 857 856 1 856 859 1 886 858 1 859 884 1 860 895 1 863 789 1 861 865 1 862 863 1
		 862 789 1 46 862 1 866 867 1 867 868 1 868 869 1 869 793 1 870 871 1 870 872 1 872 793 1
		 874 873 1 875 874 1 861 882 1 865 859 1 876 883 1 862 876 1 46 876 1 876 47 1 39 790 1
		 40 877 1 877 790 1 877 867 1 879 878 1 867 879 1 879 869 1 792 935 1 869 792 1 792 871 1
		 881 880 1 872 873 1 873 939 1 118 882 1 45 882 1 884 864 1 863 883 1;
	setAttr ".ed[1660:1825]" 883 884 1 883 885 1 885 886 1 886 884 1 886 887 1 888 894 1
		 894 889 1 788 890 1 890 889 1 892 891 1 788 892 1 894 893 1 893 892 1 788 894 1 887 888 1
		 887 895 1 885 895 1 897 896 1 896 885 1 883 897 1 897 47 1 897 898 1 48 898 1 898 899 1
		 49 899 1 899 900 1 50 900 1 900 901 1 51 901 1 901 902 1 52 902 1 902 903 1 53 903 1
		 903 904 1 54 904 1 904 905 1 55 905 1 905 906 1 56 906 1 906 907 1 57 907 1 907 908 1
		 58 908 1 908 909 1 59 909 1 909 910 1 60 910 1 910 911 1 61 911 1 911 912 1 62 912 1
		 912 913 1 63 913 1 913 914 1 64 914 1 914 915 1 65 915 1 915 916 1 66 916 1 916 917 1
		 67 917 1 917 918 1 68 918 1 918 919 1 69 919 1 919 920 1 70 920 1 920 921 1 71 921 1
		 921 922 1 72 922 1 922 923 1 73 923 1 923 924 1 74 924 1 924 925 1 75 925 1 925 926 1
		 76 926 1 926 927 1 77 927 1 927 928 1 78 928 1 928 929 1 79 929 1 929 930 1 80 930 1
		 930 931 1 81 931 1 931 932 1 82 932 1 932 933 1 83 933 1 790 933 1 877 878 1 878 933 1
		 935 934 1 879 935 1 935 936 1 871 936 1 871 880 1 938 937 1 881 938 1 881 1105 1
		 881 870 1 870 939 1 939 1105 1 874 940 1 90 940 1 940 941 1 91 941 1 941 942 1 92 942 1
		 942 943 1 93 943 1 943 944 1 94 944 1 944 945 1 95 945 1 945 946 1 96 946 1 946 947 1
		 97 947 1 947 948 1 98 948 1 948 949 1 99 949 1 949 950 1 100 950 1 950 951 1 101 951 1
		 951 952 1 102 952 1 952 953 1 103 953 1 953 954 1 104 954 1 954 955 1 105 955 1 955 956 1
		 106 956 1 955 822 1 822 957 1 957 954 1 957 958 1 959 958 1 823 959 1 961 960 1 962 963 1
		 962 1042 1 1014 963 1 965 964 1 1041 966 1 965 1041 1 967 968 1 968 969 1 969 970 1
		 971 994 1 812 972 1 973 1042 1 973 814 1 973 975 1 975 974 1 974 814 1 974 976 1
		 976 815 1;
	setAttr ".ed[1826:1991]" 974 978 1 978 977 1 977 976 1 976 1017 1 977 1021 1
		 977 986 1 1021 1017 1 979 1021 1 979 985 1 980 1024 1 980 981 1 982 1030 1 983 1027 1
		 983 781 1 1026 781 1 782 985 1 782 796 1 796 984 1 984 982 1 983 982 1 980 985 1
		 979 986 1 986 987 1 987 988 1 987 978 1 978 989 1 989 988 1 989 975 1 975 991 1 991 990 1
		 990 989 1 812 991 1 991 992 1 809 990 1 811 992 1 811 993 1 993 994 1 812 973 1 812 994 1
		 961 972 1 962 961 1 961 783 1 783 995 1 995 996 1 822 996 1 996 956 1 997 1046 1
		 826 997 1 827 107 1 827 998 1 108 998 1 998 999 1 109 999 1 999 1000 1 110 1000 1
		 1000 1001 1 111 1001 1 1001 1002 1 112 1002 1 1002 1003 1 113 1003 1 1003 1004 1
		 114 1004 1 1004 1005 1 115 1005 1 1005 1006 1 116 1006 1 1006 1007 1 117 1007 1 1007 856 1
		 118 856 1 858 889 1 859 882 1 887 889 1 890 891 1 893 1008 1 1008 888 1 888 860 1
		 896 1065 1 878 934 1 934 932 1 934 1099 1 936 1099 1 936 1009 1 880 1009 1 880 937 1
		 938 1010 1 938 1104 1 873 1108 1 940 1108 1 953 958 1 959 1011 1 823 960 1 960 1011 1
		 960 1012 1 962 1012 1 963 964 1 967 1013 1 970 971 1 814 1014 1 816 1015 1 1015 1016 1
		 816 817 1 817 1016 1 818 817 1 818 1017 1 818 1018 1 1017 1019 1 1019 1018 1 1021 1020 1
		 1020 1019 1 1019 1025 1 1025 1129 1 1020 1022 1 1020 1024 1 1024 1023 1 1023 1022 1
		 1022 1025 1 1023 1029 1 1023 981 1 981 1032 1 796 980 1 984 981 1 985 1026 1 1026 1027 1
		 1026 986 1 987 1027 1 988 1030 1 988 1028 1 990 1028 1 1028 1029 1 809 1029 1 1028 1031 1
		 1031 1030 1 1030 1027 1 1031 1032 1 1032 1029 1 810 1022 1 810 1033 1 1033 1025 1
		 808 1129 1 808 1034 1 1034 1035 1 1036 1133 1 1133 1034 1 1035 1036 1 1036 1037 1
		 1038 1134 1 1039 1037 1 797 1038 1 1038 1037 1 1035 1039 1 1035 800 1 800 797 1 994 1040 1
		 1040 970 1 967 1041 1 1014 1042 1 783 971 1 995 1043 1 1044 1043 1 996 1044 1 1044 825 1
		 1044 1045 1 825 1046 1 1046 1045 1;
	setAttr ".ed[1992:2157]" 1046 1047 1 1048 1047 1 997 1048 1 1049 1148 1 826 1049 1
		 998 1049 1 1049 838 1 839 1148 1 1050 1149 1 839 1050 1 840 832 1 837 1051 1 838 1052 1
		 1052 1051 1 1052 1053 1 1001 1053 1 1053 1054 1 1002 1054 1 1054 1055 1 1003 1055 1
		 1055 1056 1 1004 1056 1 1056 1057 1 1005 1057 1 1057 1058 1 1006 1058 1 1058 1059 1
		 1007 1059 1 1059 857 1 857 890 1 891 1060 1 1061 1060 1 892 1061 1 893 1062 1 1062 1061 1
		 1063 1062 1 1008 1063 1 1008 1064 1 860 1064 1 1064 1065 1 895 1065 1 1066 1167 1
		 896 1066 1 1066 898 1 1066 1067 1 899 1067 1 1067 1068 1 900 1068 1 1068 1069 1 901 1069 1
		 1069 1070 1 902 1070 1 1070 1071 1 903 1071 1 1071 1072 1 904 1072 1 1072 1073 1
		 905 1073 1 1073 1074 1 906 1074 1 1074 1075 1 907 1075 1 1075 1076 1 908 1076 1 1076 1077 1
		 909 1077 1 1077 1078 1 910 1078 1 1078 1079 1 911 1079 1 1079 1080 1 912 1080 1 1080 1081 1
		 913 1081 1 1081 1082 1 914 1082 1 1082 1083 1 915 1083 1 1083 1084 1 916 1084 1 1084 1085 1
		 917 1085 1 1085 1086 1 918 1086 1 1086 1087 1 919 1087 1 1087 1088 1 920 1088 1 1088 1089 1
		 921 1089 1 1089 1090 1 922 1090 1 1090 1091 1 923 1091 1 1091 1092 1 924 1092 1 1092 1093 1
		 925 1093 1 1093 1094 1 926 1094 1 1094 1095 1 927 1095 1 1095 1096 1 928 1096 1 1096 1097 1
		 929 1097 1 1097 1098 1 930 1098 1 1098 1099 1 931 1099 1 1009 1100 1 937 1100 1 1010 1101 1
		 1010 1102 1 1010 1103 1 1103 1104 1 1104 1105 1 1107 1106 1 939 1107 1 1108 1107 1
		 1108 1109 1 941 1109 1 1109 1110 1 942 1110 1 1110 1111 1 943 1111 1 1111 1112 1
		 944 1112 1 1112 1113 1 945 1113 1 1113 1114 1 946 1114 1 1114 1115 1 947 1115 1 1115 1116 1
		 948 1116 1 1116 1117 1 949 1117 1 1117 1118 1 950 1118 1 1118 1119 1 951 1119 1 1119 1120 1
		 952 1120 1 1120 958 1 959 821 1 1011 1235 1 1011 1121 1 1012 1121 1 1012 1122 1 963 1122 1
		 964 1123 1 964 966 1 966 1013 1 1013 1144 1 968 1144 1 969 1043 1 1014 965 1 815 965 1
		 816 1041 1 819 1124 1 1124 969 1 1125 1135 1 819 1125 1 1127 1126 1 817 1127 1;
	setAttr ".ed[2158:2323]" 1018 1127 1 1127 1128 1 1129 1128 1 1129 813 1 813 1130 1
		 1130 1131 1 1131 993 1 1130 1133 1 1133 1132 1 1132 1131 1 1132 1134 1 1132 801 1
		 1134 1036 1 1134 800 1 1130 808 1 1131 1040 1 813 1135 1 1135 1124 1 1040 1124 1
		 819 1136 1 1136 1137 1 1136 1138 1 1015 1138 1 1016 1139 1 1016 1126 1 1126 1140 1
		 1128 1140 1 1128 1135 1 1125 1140 1 1140 1141 1 1125 1137 1 1137 1141 1 1138 1139 1
		 1126 1142 1 1142 1141 1 1137 1143 1 1138 1143 1 972 971 1 995 970 1 1043 1144 1 1045 1144 1
		 1145 1013 1 1045 1145 1 1145 1047 1 1047 1146 1 1147 1146 1 1048 1147 1 1048 1149 1
		 997 1148 1 1148 1149 1 831 1242 1 1242 1150 1 828 1150 1 1150 1151 1 830 1151 1 1151 1152 1
		 830 1153 1 1153 1152 1 1153 1155 1 830 1154 1 1154 1155 1 1154 1156 1 828 1156 1
		 1156 1157 1 1159 833 1 1158 1159 1 1160 1248 1 840 1160 1 1161 1160 1 837 1161 1
		 1162 1161 1 1051 1162 1 1051 1163 1 1053 1163 1 1163 1164 1 1054 1164 1 1164 1165 1
		 1055 1165 1 1165 1178 1 1056 1178 1 1178 1166 1 1057 1166 1 1166 1060 1 1058 1060 1
		 1059 891 1 1065 1167 1 1167 1168 1 1067 1168 1 1168 1169 1 1068 1169 1 1169 1170 1
		 1069 1170 1 1170 1171 1 1070 1171 1 1071 851 1 851 1171 1 1171 1172 1 1172 1173 1
		 1173 1174 1 1186 1175 1 1186 1180 1 1180 1176 1 1178 1177 1 1063 1179 1 1179 1064 1
		 1167 1179 1 1177 1180 1 1177 1181 1 1166 1181 1 1181 1061 1 1062 1182 1 1182 1181 1
		 1183 1182 1 1063 1183 1 1179 1184 1 1168 1184 1 1184 1185 1 1169 1185 1 1185 1173 1
		 1170 1173 1 1174 1176 1 1182 1180 1 1183 1184 1 1183 1176 1 1185 1176 1 1177 1175 1
		 1174 1186 1 1174 1187 1 1187 1172 1 1188 1249 1 1172 1188 1 1188 851 1 848 1250 1
		 849 1189 1 1189 1190 1 1190 1191 1 1191 787 1 1191 1193 1 1193 1192 1 1192 787 1
		 1189 1257 1 849 850 1 850 1194 1 850 1195 1 1196 1195 1 851 1196 1 1072 1196 1 1196 1197 1
		 1073 1197 1 1197 1198 1 1074 1198 1 1198 1199 1 1075 1199 1 1199 1200 1 1076 1200 1
		 1200 1201 1 1077 1201 1 1201 1202 1 1078 1202 1 1202 1203 1 1079 1203 1 1203 1204 1
		 1080 1204 1 1204 1205 1 1081 1205 1 1205 1206 1;
	setAttr ".ed[2324:2489]" 1082 1206 1 1206 1207 1 1083 1207 1 1207 1208 1 1084 1208 1
		 1208 1209 1 1085 1209 1 1209 1210 1 1086 1210 1 1210 1211 1 1087 1211 1 1211 1212 1
		 1088 1212 1 1212 1213 1 1089 1213 1 1213 1214 1 1090 1214 1 1214 1215 1 1091 1215 1
		 1215 1216 1 1092 1216 1 1216 1217 1 1093 1217 1 1217 1218 1 1094 1218 1 1218 1219 1
		 1095 1219 1 1219 1220 1 1096 1220 1 1220 1100 1 1097 1100 1 1098 1009 1 1101 1220 1
		 937 1101 1 1102 1221 1 1105 1106 1 1107 1223 1 1109 1223 1 1223 1224 1 1110 1224 1
		 1224 1225 1 1111 1225 1 1225 1226 1 1112 1226 1 1226 1227 1 1113 1227 1 1227 1228 1
		 1114 1228 1 1228 1229 1 1115 1229 1 1229 1230 1 1116 1230 1 1230 1231 1 1117 1231 1
		 1231 1232 1 1118 1232 1 1233 1232 1 1233 1234 1 821 1235 1 1235 1234 1 1236 1152 1
		 1235 1236 1 1236 1121 1 1121 1238 1 1238 1237 1 1239 1241 1 1238 1239 1 1239 1146 1
		 1239 1123 1 1240 1146 1 1123 1122 1 1238 1122 1 1123 1240 1 966 1240 1 1145 1240 1
		 1147 1241 1 1150 1241 1 1147 1242 1 1242 1149 1 1243 1234 1 1153 1243 1 1244 1243 1
		 1155 1244 1 836 1245 1 1245 1246 1 835 1246 1 785 1247 1 1247 1246 1 1247 1248 1
		 832 1248 1 1187 1249 1 1249 1251 1 1188 1250 1 1250 1251 1 848 1252 1 848 1253 1
		 849 1254 1 787 1255 1 1192 1256 1 1193 855 1 855 1256 1 1191 1257 1 1189 1194 1 1194 1258 1
		 1195 1258 1 1195 1259 1 1197 1259 1 1259 1260 1 1198 1260 1 1260 1261 1 1199 1261 1
		 1261 1262 1 1200 1262 1 1262 1263 1 1201 1263 1 1263 1264 1 1202 1264 1 1264 1265 1
		 1203 1265 1 1265 1266 1 1204 1266 1 1266 1267 1 1205 1267 1 1267 1268 1 1206 1268 1
		 1268 1269 1 1207 1269 1 1269 1270 1 1208 1270 1 1270 824 1 824 1271 1 1271 1272 1
		 1272 1273 1 1273 1274 1 1274 1275 1 1275 1276 1 1275 1278 1 1276 1277 1 1277 1278 1
		 1277 1279 1 1281 1280 1 1281 1282 1 1282 1413 1 1284 1283 1 1286 1285 1 1284 1286 1
		 1286 1287 1 1287 1157 1 1287 1288 1 784 1288 1 833 841 1 841 1288 1 1330 1288 1 841 1289 1
		 1289 1290 1 836 1290 1 1290 1291 1 842 1291 1 842 1292 1 1292 1293 1 1293 852 1 852 1332 1
		 1332 1294 1 1294 1293 1 1294 1295 1 853 1293 1;
	setAttr ".ed[2490:2655]" 1292 1245 1 1292 1296 1 1245 1297 1 1245 1298 1 1298 1299 1
		 1298 1301 1 1299 1300 1 1160 1300 1 1300 1301 1 1300 1302 1 1161 1302 1 1302 1341 1
		 1302 1303 1 1162 1303 1 1303 1251 1 1162 1304 1 1163 1304 1 1304 1305 1 1164 1305 1
		 1305 1175 1 1165 1175 1 1186 1306 1 1306 1305 1 1306 1187 1 1249 1307 1 1307 1306 1
		 1250 844 1 844 1252 1 1252 1308 1 1309 1308 1 1252 1310 1 1253 1310 1 1190 1254 1
		 1190 1255 1 1255 1311 1 1192 1311 1 1312 1311 1 854 1349 1 855 854 1 1193 1351 1
		 1351 1257 1 1194 1313 1 1259 1314 1 1315 1314 1 1260 1315 1 1316 1315 1 1261 1316 1
		 1317 1316 1 1262 1317 1 1263 1318 1 1318 1317 1 1264 1319 1 1319 1318 1 1320 1319 1
		 1265 1320 1 1321 1320 1 1266 1321 1 1322 1321 1 1267 1322 1 1323 1322 1 1268 1323 1
		 1324 1323 1 1269 1324 1 1325 1324 1 1270 1325 1 1271 1325 1 1271 1326 1 1273 1326 1
		 1275 1327 1 1277 1280 1 1280 1328 1 1282 1328 1 1282 1283 1 1283 1285 1 1287 1329 1
		 1330 1329 1 1289 1330 1 842 853 1 1295 1333 1 1332 1333 1 1296 1331 1 1296 852 1
		 1331 1332 1 1333 1334 1 1331 1334 1 1361 1335 1 1335 1336 1 1336 1340 1 1340 1337 1
		 1339 1338 1 1339 1308 1 1308 843 1 1339 1345 1 1339 1340 1 1343 1297 1 1343 1361 1
		 1296 1297 1 1298 1342 1 1303 1307 1 1304 1307 1 1251 1341 1 1342 1297 1 1343 1336 1
		 1336 834 1 1343 1344 1 1344 834 1 1344 1342 1 1345 1344 1 1342 843 1 843 1345 1 1345 1346 1
		 1346 1340 1 1346 834 1 1254 1253 1 1254 1347 1 1255 1347 1 1348 1347 1 1311 1348 1
		 1256 1312 1 1256 1349 1 1349 1350 1 854 1351 1 1351 1350 1 1257 1313 1 1313 1350 1
		 1258 1382 1 1258 1314 1 1325 1352 1 1326 1352 1 1273 1327 1 1278 1412 1 1278 1353 1
		 1280 1353 1 1328 1354 1 1328 1355 1 1283 1355 1 1285 1356 1 1329 1357 1 1285 1329 1
		 1330 1358 1 1358 1357 1 1359 1358 1 1289 1359 1 1290 1360 1 1360 1359 1 1334 1360 1
		 1291 1334 1 1295 1291 1 1296 1361 1 1361 1377 1 1335 1378 1 1337 1338 1 1310 1309 1
		 1310 1362 1 1363 1362 1 1253 1363 1 1347 1363 1 1312 1364 1 1349 1381 1 1382 1365 1
		 1314 1365 1 1366 1365 1 1315 1366 1 1367 1366 1 1316 1367 1 1368 1367 1;
	setAttr ".ed[2656:2821]" 1317 1368 1 1318 1369 1 1369 1368 1 1319 1370 1 1370 1369 1
		 1371 1370 1 1320 1371 1 1372 1371 1 1321 1372 1 1373 1372 1 1322 1373 1 1374 1373 1
		 1323 1374 1 1375 1374 1 1324 1375 1 1326 1376 1 1327 1376 1 1327 1412 1 1353 1354 1
		 1355 846 1 1355 1356 1 1356 1357 1 1377 1360 1 1331 1377 1 1377 1378 1 1378 1410 1
		 1335 1337 1 1337 1410 1 1338 786 1 1338 1309 1 1363 1379 1 1348 1379 1 1379 1380 1
		 1348 1364 1 1364 1380 1 1381 1394 1 1312 1381 1 1350 1383 1 1313 1382 1 1382 1383 1
		 1365 1384 1 1384 1383 1 1375 1352 1 1385 1374 1 1352 1385 1 1385 1376 1 1385 1387 1
		 1386 1387 1 1386 1412 1 1389 1388 1 1389 1390 1 1390 1354 1 846 1391 1 1411 1392 1
		 1393 1392 1 845 1393 1 845 847 1 847 1362 1 1394 1398 1 1364 1394 1 1381 1383 1 1366 1399 1
		 1386 1388 1 1388 1395 1 1390 1395 1 1390 1391 1 845 1396 1 1362 1396 1 1379 1396 1
		 1380 1397 1 1380 1398 1 1394 1384 1 1384 1399 1 1399 1400 1 1367 1400 1 1400 1401 1
		 1368 1401 1 1401 1402 1 1369 1402 1 1402 1403 1 1370 1403 1 1403 1404 1 1371 1404 1
		 1404 1405 1 1372 1405 1 1373 1387 1 1387 1405 1 1388 1405 1 1395 1404 1 1395 1406 1
		 1391 1406 1 1392 1407 1 1391 1392 1 1396 1397 1 1397 1393 1 1398 1408 1 1399 1398 1
		 1400 1408 1 1409 1408 1 1401 1409 1 1402 1407 1 1403 1406 1 1406 1407 1 1407 1409 1
		 1393 1409 1 1397 1408 1 786 1357 1 786 1410 1 1358 1410 1 1359 1378 1 1411 1356 1
		 786 1411 1 846 1354 1 1353 1389 1 1389 1412 1 1386 1376 1 847 1309 1 1299 1246 1
		 1248 1299 1 1284 1154 1 1156 1286 1 1284 1413 1 1281 1423 1 1281 1279 1 1274 1414 1
		 1272 1415 1 824 1416 1 1209 1451 1 1101 1221 1 1222 1417 1 1222 1102 1 1102 1418 1
		 1418 1417 1 1418 1103 1 1104 1419 1 1419 1437 1 1419 1106 1 1232 1420 1 1233 1421 1
		 1421 1420 1 1243 1421 1 1422 1421 1 1244 1422 1 1155 1413 1 1413 1423 1 1423 1424 1
		 1279 1424 1 1279 1425 1 1425 1276 1 1414 1426 1 1276 1414 1 1416 1427 1 1272 1416 1
		 1451 1428 1 1428 1210 1 1428 1429 1 1211 1429 1 1429 1430 1 1212 1430 1 1430 1431 1
		 1213 1431 1 1431 1432 1 1214 1432 1 1432 1433 1 1215 1433 1 1433 1434 1;
	setAttr ".ed[2822:2987]" 1216 1434 1 1434 1435 1 1217 1435 1 1435 1436 1 1218 1436 1
		 1436 1221 1 1219 1221 1 1222 1436 1 794 1452 1 1103 1437 1 1106 1439 1 1439 1223 1
		 1439 1440 1 1224 1440 1 1440 1441 1 1225 1441 1 1441 1442 1 1226 1442 1 1442 1443 1
		 1227 1443 1 1443 1444 1 1228 1444 1 1444 1445 1 1229 1445 1 1445 1446 1 1230 1446 1
		 1446 1447 1 1231 1447 1 1420 1447 1 1420 1448 1 1422 1448 1 1244 1423 1 1425 1462 1
		 1425 1426 1 1414 1449 1 1274 1415 1 1415 1449 1 1415 1427 1 1451 1450 1 1416 1451 1
		 794 1435 1 1417 1452 1 1418 1438 1 1419 1453 1 1439 1453 1 1454 1453 1 1440 1454 1
		 1455 1454 1 1441 1455 1 1456 1455 1 1442 1456 1 1457 1456 1 1443 1457 1 1458 1457 1
		 1444 1458 1 1459 1458 1 1445 1459 1 1460 1459 1 1446 1460 1 1461 1460 1 1447 1461 1
		 1448 1461 1 1422 1424 1 1424 1462 1 1427 1473 1 1427 1450 1 1450 1464 1 1428 1464 1
		 1465 1464 1 1429 1465 1 1466 1465 1 1430 1466 1 1467 1466 1 1431 1467 1 1468 1467 1
		 1432 1468 1 1469 1468 1 1433 1469 1 1452 1469 1 1434 1452 1 1417 1470 1 1438 1470 1
		 1437 1438 1 1437 1471 1 1453 1471 1 1448 1462 1 1462 1463 1 1426 1463 1 1426 1472 1
		 1449 1472 1 1449 1473 1 1450 1483 1 1470 1469 1 1475 1471 1 1454 1475 1 1476 1475 1
		 1455 1476 1 1477 1476 1 1456 1477 1 1478 1477 1 1457 1478 1 1479 1478 1 1458 1479 1
		 1480 1479 1 1459 1480 1 1481 1480 1 1460 1481 1 1463 1481 1 1461 1463 1 1472 1481 1
		 1473 1482 1 1473 1483 1 1464 1485 1 1438 1474 1 1472 1482 1 1483 1484 1 1483 1485 1
		 1465 1486 1 1487 1486 1 1466 1487 1 1488 1487 1 1467 1488 1 1489 1488 1 1468 1489 1
		 1470 1489 1 1474 1489 1 1471 1474 1 1490 1474 1 1475 1490 1 1491 1490 1 1476 1491 1
		 1492 1491 1 1477 1492 1 1493 1492 1 1478 1493 1 1484 1493 1 1479 1484 1 1480 1482 1
		 1482 1484 1 1485 1486 1 1485 1493 1 1486 1492 1 1487 1491 1 1488 1490 1 1247 1158 1
		 1234 1152 1 1237 1151 1 1236 1237 1 1237 1241 1 821 1120 1 972 1042 1 1233 1119 1
		 838 999 1 1000 1052 1 1024 979 1 803 806 1 807 1494 1 1494 810 1 1029 1496 1 1496 1497 1
		 809 1497 1 809 992 1 992 1495 1 805 1495 1 1494 1496 1 1495 1497 1;
	setAttr ".ed[2988:3004]" 1494 1499 1 1499 1498 1 1498 807 1 1497 1499 1 1499 1500 1
		 1500 795 1 795 1498 1 1495 1500 1 804 1500 1 803 1498 1 874 793 1 793 1501 1 780 868 1
		 780 791 1 1502 868 1 1502 793 1 1501 791 1;
	setAttr -s 1503 ".n";
	setAttr ".n[0:165]" -type "float3"  -0.11568079 -0.31393281 0.050592389 -0.24275224
		 -0.21318682 0.10058917 -0.28049821 0.055710819 0.180866 -0.11891116 -0.20019692 0.24551328
		 0.32555211 0.0021637618 0.092231132 0.28129554 -0.14402144 0.12093842 0.23456414
		 -0.24366279 0.010176284 0.20867427 -0.24178331 -0.11176459 0.0082783438 0.30033094
		 0.15565425 -0.20142828 0.27115351 0.019946391 0.20354797 0.051194802 0.26541054 0.12623909
		 0.23401856 0.20927125 -0.31571776 -0.090062395 -0.081893303 0.023404913 -0.28569397
		 -0.179796 0.10576317 -0.28846928 -0.14175709 -0.33797273 0.0022818218 0.016268434
		 0.033133026 0.33458155 0.038115956 -0.13210386 -0.31133759 0.010626509 0.047054622
		 0.33441982 0.021087414 0.16119942 -0.27144128 0.12177774 0.056239154 -0.29721129
		 0.15165111 0.17438488 0.28929704 0.019813489 0.26633921 -0.12234724 0.16908585 -0.096206844
		 0.32276338 0.032611012 0.19830011 -0.053234134 0.26895842 0.027350912 -0.32925126
		 0.073081985 0.068421483 -0.32706484 0.053315453 0.040516328 -0.27068368 -0.19895785
		 -0.087823138 -0.32166696 0.057557818 -0.32579565 -0.078276582 -0.047174264 -0.25742435
		 -0.12214512 -0.18250674 -0.22768156 -0.24692139 -0.041065492 -0.21577649 -0.25732997
		 -0.041439634 -0.30156037 0.14828089 -0.039617814 -0.17788951 -0.14138936 -0.25071859
		 0.14932093 -0.15409683 -0.26163498 0.060931258 0.33192486 -0.024672344 -0.13127619
		 -0.31186518 0.0014552827 -0.3309285 -0.027252287 -0.065108292 0.15924478 -0.27789596
		 0.10913472 0.29773721 -0.15372904 0.047067814 0.29282171 0.1154619 0.12417505 0.19453548
		 -0.26315272 0.08603508 0.062518761 -0.25478414 0.21370985 -0.16996177 -0.086677417
		 0.27945566 0.097931013 -0.28456938 -0.15467782 0.054857183 -0.24831012 -0.22322236
		 -0.013708339 -0.2531223 -0.22413529 0.08108487 -0.27586615 -0.17837758 -0.098769791
		 -0.3148956 0.074704386 -0.11071881 -0.31974474 -0.00030312836 0.28587726 0.032925963
		 -0.17800428 -0.055118892 -0.33218727 -0.033301134 -0.11694451 -0.21065493 -0.23757932
		 -0.11711943 -0.26522699 -0.17445095 -0.27744788 -0.14735839 -0.12571244 -0.23984146
		 -0.12067617 -0.20593393 -0.29453179 -0.16370299 -0.030786378 0.28076151 0.019868325
		 -0.18781286 0.28494751 0.064022198 -0.1708845 0.29309672 0.045849528 -0.16275004
		 -0.0037113915 -0.33325085 -0.058528055 -0.16757083 -0.29195625 0.034307651 -0.16779512
		 -0.25774869 -0.14108811 -0.22241277 -0.22838077 -0.11344704 -0.25367171 -0.22063182
		 -0.038310666 -0.16827518 -0.027703347 -0.29225233 -0.235387 -0.15669775 -0.18583387
		 -0.25352538 -0.11240881 -0.19386746 -0.18127345 -0.1149223 -0.26158795 -0.30239299
		 0.087152757 -0.12433153 -0.33131224 -0.0084320335 -0.068238817 -0.10694667 -0.22901636
		 -0.22496524 0.10638787 -0.084181361 -0.30998477 -0.069665767 -0.32025677 0.084129237
		 0.0089802947 -0.32925805 0.077485055 0.31141451 0.11894269 -0.058043718 0.035254337
		 0.19899708 -0.27139038 0.057873052 -0.32096341 0.090158992 0.098847084 -0.31374094
		 0.079317853 0.18965161 -0.26954401 0.076640308 0.20565884 -0.26856649 -0.0084806029
		 0.15799555 -0.2761429 -0.11522999 -0.15264551 -0.087857649 -0.28892183 -0.22921412
		 0.049742885 0.24388927 -0.19873689 -0.16775984 0.21646185 -0.13246632 -0.18830773
		 0.24796836 -0.058799669 -0.18588473 0.27655905 0.0071417899 -0.31659612 0.11921131
		 -0.00028662602 -0.31608754 0.12076433 0.0085615497 -0.31700855 0.11801578 0.28509781
		 0.072963193 -0.16700615 -0.25030667 0.17889537 -0.1408491 0.069043137 0.27767238
		 -0.18062817 0 0.25063041 -0.22733201 -0.14262909 0.22627023 0.20725387 -0.1318136
		 0.17578934 0.25733 0.061178438 0.16349103 0.28986779 0.064885937 0.26157358 0.20460823
		 -0.2306501 -0.019234192 0.24683197 -0.16822456 0.19754405 0.21719182 -0.28336847
		 0.055254143 0.1764787 -0.19443581 0.16864991 0.21965283 -0.21033822 0.072072364 0.25506637
		 -0.24595188 -0.13626732 0.18824011 -0.1600014 -0.16710667 0.24692176 0.30021369 0.030998982
		 -0.152991 -0.061484605 0.19088186 -0.27254209 -0.09669663 0.057697177 -0.31908658
		 0.20824882 -0.26648504 0.010657778 0.04887747 -0.33373198 0.027007313 -0.29117671
		 0.02025383 -0.17117634 0.19100554 -0.26814359 0.078175053 0.12184869 -0.31082335
		 0.055110633 0.19069001 -0.26727447 0.081835978 0.023172043 -0.32881406 0.076418728
		 -0.12634987 -0.3080759 0.060169719 -0.17843087 0.15738548 -0.2405986 -0.043571856
		 0.23439366 -0.24011779 -0.070333272 0.2400399 -0.22788051 0.17242439 0.24418297 -0.15855582
		 -0.038954351 0.26567382 -0.20590152 0.14671834 0.26780635 -0.14577012 -0.0595567
		 0.28735375 -0.16845252 0.12761287 0.2835812 -0.13338709 -0.095361792 0.30266184 -0.11746223
		 0.09035746 0.30743808 -0.10868671 -0.1155347 0.315299 -0.041637778 -0.0032778364
		 0.32953355 -0.076761574 -0.12392598 0.31427011 -0.01928951 0.0029825529 0.33409384
		 -0.053552378 -0.18311593 0.19250841 -0.20953402 0.08545617 0.21141176 -0.24999551
		 -0.17307191 0.22797225 -0.18047218 0.080873601 0.28001305 -0.1718941 -0.13150273
		 0.087099813 -0.2993595 0.057630617 0.11120149 -0.314338 -0.096015729 0.072512344
		 -0.31625685 0.051427152 0.086663321 -0.32301727 -0.099197827 0.093085572 -0.30982304
		 0.051098369 0.10182291 -0.31861654 -0.10167731 0.15398401 -0.28363022 0.057123162
		 0.16228493 -0.29136917 -0.10139008 0.16462325 -0.2776953 0.058325984 0.17227727 -0.28533149
		 -0.101207 0.17385243 -0.27208072 0.057887245 0.1805627 -0.28025278 -0.10139268 0.18099356
		 -0.26731309 0.051773753 0.19111691 -0.27438888 -0.10218195 0.17585348 -0.27042532
		 0.050670195 0.18198551 -0.28072986 -0.10878785 0.16744648 -0.27317089 0.055557225
		 0.17390093 -0.28489876 -0.11099222 0.16875538 -0.27147338 0.055604555 0.17879705
		 -0.2818425 -0.11894313 0.15904774 -0.27395582 0.054207265 0.17406939 -0.28505591
		 -0.12483653 0.1322431 -0.28534725 0.054648377 0.13801755 -0.30407262 -0.13622403
		 0.14502007 -0.27369261 0.060084447 0.16763023 -0.28772455 -0.14397721 0.20250095
		 -0.22969408 0.063125782 0.2235163 -0.2460712 -0.14439008 0.23837708 -0.19189402 0.064774342
		 0.25996995 -0.20667693 -0.14014493 0.27360767 -0.14139901;
	setAttr ".n[166:331]" -type "float3"  0.060892683 0.29292339 -0.15806141 -0.13994542
		 0.27554676 -0.13778497 0.066549987 0.28315654 -0.17288409 -0.13985869 0.24737343
		 -0.18368825 0.063560307 0.26211676 -0.20432901 -0.13222064 0.2878077 -0.11907925
		 0.057985708 0.30488139 -0.13483486 -0.1449478 0.27640817 -0.13070618 0.067996457
		 0.29654881 -0.14809029 -0.1524701 0.2816343 -0.10922652 0.068942748 0.30719799 -0.12398281
		 -0.15664485 0.29919669 -0.020956486 0.066885762 0.33075058 -0.025015911 -0.16138643
		 0.29020265 0.065056115 0.073464207 0.32627973 0.051380802 -0.16160913 0.24559604
		 0.16751274 0.079030611 0.28365198 0.16670682 -0.12832652 0.18202496 0.25474429 0.067079715
		 0.19871736 0.26553187 -0.12451217 0.16133513 0.2701169 0.058190163 0.18200333 0.2792564
		 -0.13914022 0.18968754 0.24321611 0.048675831 0.20811546 0.26232433 -0.14376196 0.20006882
		 0.23194915 0.052144207 0.22932892 0.243279 -0.13654394 0.21227022 0.22537203 0.060651619
		 0.2529293 0.21643379 -0.15987027 0.19229393 0.22794735 -0.17059971 0.13089649 0.26126096
		 -0.18668452 0.15409298 0.23643115 -0.28788385 -0.093691647 0.15112978 -0.24261075
		 -0.14663006 0.18475685 -0.11627296 -0.18584581 0.2577545 0.050861672 -0.19890837
		 0.26896837 0.035506677 -0.17812505 0.28549287 -0.091431268 -0.11506689 0.30478743
		 0.050173648 -0.12209785 0.31156087 -0.088558219 -0.14987364 0.29015645 0.054943059
		 -0.15457247 0.29594603 -0.11299205 -0.20326842 0.24578483 0.054113496 -0.21533145
		 0.25534201 -0.11605093 -0.24704324 0.19999316 0.049800575 -0.25946137 0.21141224
		 -0.11741391 -0.24290876 0.20421742 0.052365329 -0.25455457 0.21669167 -0.11985769
		 -0.23612507 0.21065265 0.053243365 -0.24684818 0.22522558 -0.12294319 -0.23558488
		 0.20947596 0.053476505 -0.24606815 0.2260225 -0.12709679 -0.2372454 0.20507674 0.054852352
		 -0.25049135 0.22077306 -0.13029954 -0.22087993 0.22074765 0.055563416 -0.24141914
		 0.23048849 -0.12470993 -0.21775734 0.22699033 0.05138272 -0.25627562 0.21489081 -0.091320083
		 -0.1795992 0.27184594 0.010657663 -0.2633529 0.21219593 -0.00017353274 -0.17449374
		 0.28990921 -0.10690246 -0.2320004 0.22190793 0.026413541 -0.19332716 0.27644598 -0.15238567
		 -0.26395226 0.14698049 0.099291421 -0.26837128 0.18059213 -0.15529756 -0.29122701
		 0.074598461 0.1747376 -0.28573325 0.048152957 -0.13941798 -0.30745745 -0.022978019
		 -0.10003185 -0.2883465 -0.14610054 -0.0789598 -0.15612468 0.28963059 -0.24211681
		 -0.12018435 0.20354512 -0.27521452 -0.040009908 0.19274756 -0.054191757 0.220871
		 0.25054878 -0.33439639 0.0058112312 -0.051387951 -0.33812708 0.0094560534 0.0087242424
		 -0.32057112 0.068404004 0.083967157 -0.33615717 0.032113437 0.021506375 -0.31585249
		 -0.027612751 -0.11819551 -0.32782045 -0.054150946 -0.064006865 -0.20852093 -0.10611306
		 -0.24444728 -0.2343118 -0.15592554 -0.18783145 -0.13106413 0.20550658 0.23470129
		 -0.10779068 0.24235278 0.21009935 0.29029289 0.16116105 0.065211929 0.2933417 0.11008528
		 0.12777846 -0.31721237 0.050162308 0.10656212 -0.33648962 -0.013725543 0.032890424
		 -0.26513651 0.19682409 -0.073880613 -0.097738534 0.31370547 0.080817692 -0.30096588
		 0.09528707 -0.1218005 -0.29165384 0.10572576 -0.13511309 -0.25798011 0.19752623 -0.094472721
		 -0.14242724 -0.29508135 -0.084480263 -0.13212225 -0.2957522 -0.097825356 -0.13619784
		 -0.29163602 -0.10437448 -0.30028713 0.054231558 -0.14622593 -0.035953347 -0.33320487
		 -0.046661705 0.1042537 -0.28315094 -0.15314098 -0.29309586 -0.053782102 -0.16030516
		 0.10719545 -0.28399253 0.14950861 0.19910131 -0.2552948 -0.098380268 -0.33144182
		 -0.02092237 -0.064838357 -0.30630881 -0.078214467 -0.12063517 0.20674016 -0.25763628
		 -0.073331349 -0.27106184 0.1726222 -0.10593631 -0.13810648 0.3082636 -0.019889319
		 -0.066468231 0.32407922 0.071063958 -0.048454728 0.31650734 0.10941064 -0.087202951
		 0.31172049 0.09859737 -0.2639606 0.18803921 0.097270191 -0.18770294 0.27687433 0.051026016
		 0.31225932 -0.074846424 -0.10671261 0.18406819 -0.25816736 -0.11816921 -0.04575802
		 -0.20294382 -0.26686224 -0.10000905 -0.21300997 -0.24314684 -0.10568561 -0.31382412
		 -0.069573104 0.063148782 -0.32778004 -0.055388723 -0.08777266 -0.281746 -0.16556145
		 -0.14053546 -0.3032749 0.052626647 0.084642984 -0.31600779 0.086429708 -0.14972837
		 -0.29187575 0.082978301 0.092602156 -0.32298756 -0.039991483 -0.016849097 -0.31461614
		 -0.12340268 0.010939151 -0.28962508 -0.17462268 0.095707737 -0.32013014 -0.053405814
		 -0.08752121 -0.31371084 -0.091766015 0.19066387 -0.26733708 0.081692174 -0.18244785
		 -0.27268201 0.082781307 0.18915191 -0.26813337 0.082592353 -0.16392286 -0.28214547
		 0.089547075 0.18905205 -0.26842213 0.081879951 -0.14943542 -0.29038638 0.088545255
		 0.18785439 -0.26853079 0.084246002 -0.12364425 -0.2957755 0.10827924 0.17828676 -0.27483732
		 0.084697813 -0.093094751 -0.30707917 0.10738341 -0.037629876 -0.31685382 0.11261927
		 -0.32417479 0.033819303 -0.090897761 -0.25375417 0.093177028 -0.20352469 -0.26048759
		 0.14289664 -0.16193272 -0.15568179 0.18097468 0.23980574 -0.17134379 0.14328901 0.25417516
		 -0.28655759 -0.091939025 0.15468487 -0.14395311 -0.17185941 0.25345075 -0.29842338
		 -0.1066442 0.11859992 -0.33718902 -0.028258266 -0.00068564608 -0.068774603 -0.17462222
		 -0.28155386 -0.23547155 -0.24216399 -0.020129533 -0.14351545 -0.30533886 -0.025825195
		 -0.058456704 -0.3317585 -0.031852145 -0.053682517 -0.33079287 -0.046794157 0.2558223
		 -0.20628497 -0.080603369 0.019678501 -0.33579296 0.036759809 0.049290743 -0.31322843
		 0.11812633 -0.27236784 0.025881086 0.19910139 0.037088059 0.32465184 0.087869756
		 -0.17113245 -0.26939192 0.1124149 0.29278481 -0.14438559 -0.089024194 0.32011235
		 -0.025406463 -0.10666795 0.23157994 -0.090611503 -0.22946836 0.14267911 0.30652949
		 -0.013333715 0.21671352 0.25602534 0.044516433 0.075529419 0.094096251 0.31612757
		 -0.1643033 -0.29554105 -0.012464114 0.31031504 -0.11884784 -0.063837454 0.3145608
		 -0.080409363 -0.095295809 0.26603499 -0.12737712 -0.16581886 0.12931775 -0.2129932
		 -0.22892413 -0.022652064 -0.18504883 -0.28238139;
	setAttr ".n[332:497]" -type "float3"  -0.16246918 -0.18587017 -0.23141196 -0.1716994
		 -0.18101145 -0.22858174 -0.10830504 -0.21771668 -0.23529749 -0.12302672 -0.29408345
		 -0.1134671 -0.1741142 -0.18860424 -0.22047253 -0.2726171 -0.20037442 0.0050439429
		 -0.1750337 -0.28159171 0.067562908 -0.028446836 -0.33451205 -0.042283684 0.099056527
		 -0.32326981 0.013411345 0.19096777 -0.26706219 0.081881292 0.19088897 -0.267115 0.081892796
		 0.19110538 -0.26698628 0.08180771 0.19085142 -0.26710096 0.082025982 0.19047943 -0.26732159
		 0.08217182 0.18354036 -0.27132195 0.084810302 -0.10421468 -0.29882497 0.119743 -0.25207868
		 -0.2066395 0.09083993 -0.33031711 0.064294532 -0.03538736 -0.28910899 0.1087628 -0.13813792
		 -0.27013558 0.17614658 -0.10244317 -0.12362288 0.25871128 -0.17966996 -0.14133887
		 0.27258044 -0.14219236 -0.16138487 0.28318718 -0.09085919 -0.1728086 0.2906985 -0.011269867
		 -0.1793924 0.28690097 -0.0012842539 -0.11993783 0.20204899 -0.24348833 -0.042586215
		 0.26370019 -0.2077115 0.0023032494 0.12482173 -0.31449908 -0.043596491 0.084052585
		 -0.32485375 -0.066149145 0.099667005 -0.31652209 -0.087371953 0.15455948 -0.28805026
		 -0.090447582 0.16488425 -0.28129676 -0.093333401 0.17374825 -0.27494702 -0.10332787
		 0.18301651 -0.26518628 -0.1084284 0.17768036 -0.26677409 -0.11850107 0.16857183 -0.26839611
		 -0.12381177 0.16893573 -0.26575705 -0.14743726 0.1532872 -0.26317436 -0.15914197
		 0.12671763 -0.27039215 -0.17582874 0.12238258 -0.26192021 -0.18320359 0.18403222
		 -0.21694247 -0.18144564 0.22187634 -0.17984386 -0.17760535 0.25981274 -0.12429451
		 -0.17110729 0.26545614 -0.1214528 -0.17262749 0.23405091 -0.17296059 -0.16570924
		 0.2749376 -0.10698228 -0.1806176 0.26126719 -0.11667126 -0.19066423 0.26180857 -0.097973786
		 -0.19503655 0.27620378 -0.012948406 -0.19990595 0.26376411 0.070438243 -0.19516052
		 0.22203197 0.16465001 -0.16312572 0.16364008 0.24719903 -0.15695383 0.15406564 0.25714728
		 -0.19685145 0.17256229 0.21439964 -0.2013521 0.2448708 0.11828383 -0.2948353 -0.086091019
		 0.14197157 -0.2099933 -0.14529067 0.22201099 -0.15935513 -0.16542383 0.248468 -0.090543471
		 -0.10848465 0.30745474 -0.060605455 -0.15321128 0.29554817 -0.091061994 -0.22425477
		 0.2364592 -0.14029169 -0.24031144 0.19252037 -0.1503835 -0.23326521 0.19356547 -0.15127888
		 -0.22682954 0.20039587 -0.15373182 -0.22644556 0.19895823 -0.15761873 -0.22847341
		 0.19352438 -0.17278264 -0.20516808 0.20627081 -0.17685053 -0.19266884 0.21470459
		 -0.19077158 -0.13252544 0.24604604 -0.17314607 -0.11985489 0.26485977 -0.21972583
		 -0.091870107 0.24036615 -0.30667016 -0.095761888 0.10620037 -0.31487659 -0.10343485
		 0.068186581 -0.3260929 -0.042655736 -0.079620011 -0.30862215 -0.030569158 -0.13532673
		 0.018342346 -0.18173258 -0.28483728 0.26484334 -0.13713692 -0.159834 0.30173862 -0.11348628
		 -0.10281107 0.31217778 -0.11085974 -0.068924636 0.31677872 -0.11088944 -0.043014131
		 -0.14172456 -0.30593354 -0.028535157 -0.16019958 -0.2960493 -0.034443304 0.27304342
		 -0.18975432 -0.06273783 0.28084525 -0.17384528 -0.07347931 0.29646274 -0.12881726
		 -0.10005701 0.2457417 0.22849034 -0.043573268 0.26515645 0.20097491 -0.061616514
		 0.32531911 -0.06989792 -0.061459005 0.14876156 0.065886855 -0.296689 -0.28007153
		 0.041785739 -0.18522783 0.054068234 -0.332479 -0.032090332 -0.21348205 0.011913644
		 -0.26225734 -0.13783254 -0.1237009 -0.28318849 -0.20768495 -0.089369223 -0.25174502
		 -0.24457952 -0.14551701 -0.18303306 -0.20533022 -0.16336516 -0.21365105 -0.20462742
		 -0.1748125 -0.20509425 -0.26319551 -0.14963639 -0.1511043 -0.28902385 -0.13213436
		 -0.11619454 -0.12972853 -0.30295986 0.07668943 -0.30928382 -0.11353197 -0.077132702
		 -0.17163153 -0.27366719 0.10071905 -0.29461843 -0.16523851 0.019790191 -0.29460791
		 -0.16637833 -0.0044583906 -0.29342851 -0.16768101 -0.016680259 -0.12727164 -0.229131
		 -0.21400084 -0.23716857 -0.19128884 -0.14715669 -0.28258443 -0.16639456 -0.083392702
		 -0.31214496 -0.13044596 -0.0066949069 -0.17133211 -0.25185493 0.14734265 -0.087057471
		 -0.25428981 0.20555566 0.025889477 -0.28839317 0.17508441 0.17728473 -0.27392095
		 0.089626364 0.1818676 -0.27241987 0.084894232 -0.27209705 0.18843246 -0.070369311
		 -0.26860061 0.20418443 -0.025648883 -0.26711264 0.20688239 -0.018600209 -0.2345545
		 0.24102761 0.03721993 -0.27932149 0.17658122 0.07276006 -0.26839271 0.19833431 0.055895466
		 -0.28686064 -0.032303035 0.17653023 -0.2963126 -0.004018107 0.16333443 -0.31602967
		 -0.088356264 0.082546122 -0.29199359 -0.13671108 0.10269011 -0.00036905968 -0.29796347
		 0.160353 -0.26974508 -0.06489215 0.19370611 -0.316791 0.10401483 -0.057617821 -0.1997218
		 -0.24305435 0.12462438 -0.28845158 -0.14634736 0.099365868 -0.31607622 -0.092172019
		 0.078074239 -0.31387386 0.12328998 -0.027896797 -0.31290683 0.12680045 -0.022503575
		 -0.30244747 -0.0014397381 0.15171982 -0.33176127 -0.043369565 0.050487414 -0.31839731
		 0.027551748 -0.11117321 -0.26195267 -0.13331133 -0.16764346 0.3201808 -0.10938453
		 -0.0038385007 -0.20578223 -0.26655129 0.033159181 -0.19211921 -0.27752426 0.023789192
		 -0.30241325 -0.10566449 -0.1089802 -0.28853813 0.004064797 -0.17670503 0.11003689
		 -0.30669484 -0.09124472 0.057576172 -0.33037141 -0.045112751 0.3119643 0.11866825
		 -0.055601772 0.30946571 0.12398361 -0.057917979 0.30916125 0.12448088 -0.05847453
		 0.26502827 0.18567561 -0.098894 0.26405576 0.14956909 -0.14966324 0.20722593 0.14986558
		 -0.22156978 0.16197734 0.14948535 -0.25673509 0.028128015 0.16813032 -0.29229516
		 0.0095566437 0.17853998 -0.28727615 -0.010357032 0.18657954 -0.28209263 -0.045510057
		 0.20452279 -0.26569664 -0.0721009 0.19277051 -0.26858228 -0.10577404 0.17801145 -0.26761767
		 -0.11811886 0.17653033 -0.26340166 -0.15579712 0.16240105 -0.25268281 -0.15121287
		 0.15871045 -0.25776175 -0.24691948 0.16018775 -0.16693141 -0.22737309 0.153689 -0.19793083
		 -0.23099047 0.19175345 -0.15610719 -0.23522195 0.22333579 -0.096370101 -0.21528462
		 0.24491683 -0.09035331 -0.2336313 0.19661213 -0.14579277 -0.22513838 0.24045493 -0.077392429;
	setAttr ".n[498:663]" -type "float3"  -0.24216473 0.22351916 -0.076751962 -0.25300518
		 0.21454306 -0.066746511 -0.25663698 0.22051144 -0.002760208 -0.21759419 0.24687292
		 0.078752592 -0.20924102 0.2423909 0.10936312 -0.20739245 0.25380984 0.084049903 -0.30223319
		 0.14589351 -0.04319277 -0.32527965 0.026964694 0.089227192 -0.29470232 -0.082001977
		 0.14464323 -0.27990761 -0.084746137 0.17019182 -0.19442084 -0.1521751 0.23138437
		 -0.1164791 -0.12226665 0.29322165 -0.11888337 -0.23750108 0.20965549 -0.13486202
		 -0.28514686 0.12247016 -0.20476471 -0.20699956 0.17238924 -0.19186981 -0.20676599
		 0.18689366 -0.18014689 -0.21429111 0.19005752 -0.18137781 -0.22249094 0.17915165
		 -0.21090181 -0.20593564 0.16615169 -0.21825536 -0.20531283 0.1571836 -0.23840971
		 -0.1173785 0.20947208 -0.27216899 -0.19029051 0.064876787 -0.319491 -0.0968398 0.05516335
		 -0.29338101 -0.11928032 -0.11914381 -0.31773347 -0.074186645 -0.089650631 -0.26925868
		 -0.13389835 -0.15513362 -0.27618706 -0.12774079 -0.14798123 -0.18045276 -0.26354185
		 0.11170471 -0.29105216 -0.16634557 0.045969944 0.00034879122 -0.28137857 -0.18793993
		 -0.080753662 -0.25469327 -0.20761892 0.27326712 0.042201579 -0.19503731 -0.32764176
		 -0.079731837 -0.028092014 -0.21091953 -0.26211739 0.036095444 -0.31561273 -0.092191271
		 -0.079905026 -0.2034677 0.1105395 -0.24673338 0.29505125 0.01271729 -0.16516198 0.3094236
		 0.124105 -0.057882812 0.30939019 0.12415009 -0.057964768 0.30916667 0.12443126 -0.058551557
		 0.3081148 0.12498804 -0.062759057 0.30667409 0.12668344 -0.066315494 0.29165766 0.13827354
		 -0.1015464 0.28291997 0.14590368 -0.11473382 0.27511331 0.15307136 -0.12400515 0.23818496
		 0.18334921 -0.15539125 0.20575455 0.19965853 -0.17971361 0.061757091 0.22081316 -0.24884343
		 0.0081969192 0.21898627 -0.25782412 -0.023251282 0.23419894 -0.24311659 0.0286332
		 0.29120696 -0.16992378 -0.22101155 0.24617611 -0.071039826 -0.31682181 0.09203288
		 -0.075161956 -0.33522999 0.015175036 -0.043428186 -0.3232255 -0.092489913 0.038292807
		 -0.33364162 -0.052221704 0.021251244 -0.31978416 0.064713344 -0.089697957 -0.32111022
		 -0.10669228 0.00065672229 -0.32958436 -0.075901799 0.01041658 -0.31466281 -0.12424962
		 -0.0066933124 -0.30361038 -0.14559141 0.03345627 -0.31222653 -0.1266723 -0.031050766
		 -0.31288105 -0.12876867 -0.0044173645 -0.28219178 -0.18052909 0.047670752 -0.31092879
		 -0.12600979 -0.044048447 -0.30920672 -0.12404349 -0.059159588 -0.23441358 -0.24192609
		 -0.031898003 -0.16736929 -0.29403272 0.005265383 -0.29826939 -0.15637095 0.032847278
		 -0.2963517 -0.16042706 0.030565659 -0.29698354 -0.15955009 0.028982546 -0.29560927
		 -0.16391367 -0.015585613 -0.069671825 -0.32346681 0.070784889 0.27649477 0.15354289
		 -0.12029409 0.040921018 -0.33239952 -0.048285346 -0.22589403 -0.13710341 -0.21135274
		 -0.27353072 0.077272706 -0.18359008 -0.29223362 -0.16904522 -0.022774212 -0.069077
		 -0.3261762 0.057731312 -0.31342965 -0.11420145 -0.056703791 0.052587107 -0.32789466
		 0.064924054 0.25152826 0.17038736 -0.14898704 0.18458179 0.13233341 -0.25082439 -0.097509906
		 -0.24746442 -0.20916171 -0.23771898 -0.17935091 -0.16068098 -0.12382257 -0.24579942
		 -0.19684018 -0.28636101 -0.15225458 -0.096495375 -0.32115629 -0.10521084 -0.016874554
		 -0.28772399 -0.085337549 0.15629409 -0.27715048 -0.07400053 0.17946301 -0.29368219
		 -0.035454668 0.16428384 -0.3154099 -0.056696389 0.10861662 -0.089099959 -0.31623539
		 0.080943264 -0.099162661 -0.3226923 0.02306293 -0.12822793 -0.25785327 -0.17766468
		 -0.24239273 -0.23222005 0.04260353 -0.30608445 0.01790823 -0.143133 -0.21745631 0.14982547
		 -0.21156685 0.30765069 0.12612747 -0.062756315 0.31002474 0.12078114 -0.061579403
		 0.31127688 0.11760563 -0.061408952 0.30939001 0.12415049 -0.057964783 0.30938455
		 0.12415791 -0.057978008 0.3093729 0.12417334 -0.058007222 0.30896547 0.12483902 -0.058745135
		 0.30872536 0.12526122 -0.059107739 0.30831775 0.12597944 -0.05970576 0.30597442 0.13008736
		 -0.062867902 0.30346724 0.13442856 -0.065818183 0.28157729 0.16287862 -0.09316773
		 0.26655617 0.17740551 -0.10941001 0.14262235 0.26920921 -0.14724372 0.07305561 0.29359755
		 -0.15152159 -0.24532135 0.22552787 -0.058737222 -0.21986762 0.23217991 -0.11066236
		 -0.33341625 0.057519529 0.0045329621 -0.32639369 0.086696737 0.021125501 -0.31882539
		 0.10506401 -0.042513262 -0.30202818 0.13083519 -0.078463905 -0.31619713 0.068670876
		 -0.098990582 -0.29849741 -0.15560105 0.034395538 -0.28652218 0.1052378 -0.14603248
		 -0.30948746 0.061403286 -0.12223989 0.2495556 0.086534813 -0.21149273 0.22575386
		 0.013902171 -0.25166917 -0.06862168 -0.32704088 -0.053204935 0.24081424 -0.21141577
		 -0.10866147 0.088062219 -0.15466146 -0.2877852 -0.033471383 -0.3361038 -0.020232404
		 -0.17210576 -0.025299311 -0.29023266 0.23002537 0.1294087 -0.21174787 0.25718006
		 0.14951487 -0.16124257 -0.061139621 0.050772771 -0.32890654 0.082487226 0.054142531
		 -0.3236663 -0.011612467 0.09507405 -0.32453278 -0.12714249 -0.059385888 -0.30790186
		 -0.32014948 -0.089336887 -0.063393064 -0.31571651 0.014138649 -0.1209075 0.30947274
		 0.12401593 -0.057811085 0.3091343 0.12465867 -0.05823781 -0.043157503 0.30586863
		 -0.1381204 -0.30194664 0.1287092 -0.082204685 -0.33509809 0.011686695 -0.045476723
		 -0.33484924 0.0023717419 -0.048639551 -0.3155064 0.068220235 -0.10147494 -0.31472313
		 0.06762249 -0.10426887 -0.31299073 0.068971947 -0.10851321 -0.31070867 0.069646351
		 -0.11447681 -0.31087548 0.070204489 -0.11368031 -0.31012264 0.066000231 -0.11816664
		 -0.28358671 0.11298899 -0.1459709 -0.28717145 0.10814878 -0.14258975 -0.32397702
		 -0.092663735 -0.030785717 -0.32414141 -0.089615494 -0.037374601 -0.23102282 0.1555469
		 -0.19216932 0.18606611 0.22269072 -0.17402209 0.3085627 0.12564579 -0.059140865 0.30495876
		 0.13159844 -0.064633124 0.29727408 0.14395593 -0.073486432 0.24552083 0.20369586
		 -0.11279613 0.22314201 0.21892859 -0.12951201 0.19327442 0.2359696 -0.1464882 0.1264763
		 0.27555549 -0.15022771 0.089046948 0.29896045 -0.13110581 0.073361188 0.2962938 -0.14602591
		 0.026428604 0.30793774 -0.13773645;
	setAttr ".n[664:829]" -type "float3"  0.052489914 0.30346343 -0.1401792 -0.22011809
		 0.22987758 -0.11489026 -0.3054533 0.086569868 -0.11704433 -0.28589693 0.10805637
		 -0.14519715 -0.3266086 0.0016981682 -0.088427238 -0.2512916 0.15101534 -0.16894481
		 0.12384 0.22472109 -0.22058904 0.29002994 0.15125601 -0.086600855 0.27955142 0.15845408
		 -0.10601301 -0.18892398 0.25071299 -0.12627815 -0.19231384 0.23662227 -0.14669946
		 -0.28579396 0.15463053 -0.094375059 -0.21705461 0.21562451 -0.14452963 -0.33517301
		 0.014350303 -0.044142567 -0.33462638 0.010439795 -0.049108528 -0.28864071 0.12854749
		 -0.12106825 -0.28578052 0.13064231 -0.12552896 -0.26588812 0.14382131 -0.15203412
		 -0.15985999 0.21989924 -0.20145608 -0.052835327 0.261307 -0.20838071 -0.20899703
		 0.21255054 -0.16011859 -0.32996622 -0.0047815819 -0.074798927 -0.26136416 0.14564262
		 -0.15802671 -0.10846419 0.24875973 -0.20211275 -0.16935781 0.23148993 -0.17951544
		 -0.1743608 0.23238981 -0.17346102 -0.17583568 0.23350303 -0.17045115 -0.18235582
		 0.23016138 -0.16812952 -0.195614 0.23124135 -0.1508577 -0.20442487 0.21482393 -0.16296194
		 -0.26473239 0.15826249 -0.13915889 -0.24104165 0.16662775 -0.16920274 -0.24556401
		 0.16612411 -0.16308446 -0.30987573 -0.13417798 0.021650517 -0.32235548 -0.071851075
		 0.073619381 -0.31478995 0.1229992 -0.016550723 -0.32192084 0.10420389 -0.0019943668
		 -0.3056381 0.047997307 -0.13702935 -0.32388198 0.091635518 0.034624275 -0.29600856
		 0.148752 -0.068900004 -0.31147385 -0.038953494 0.12634128 -0.2013783 -0.23432438
		 0.13796489 -0.19628058 -0.2494849 0.11716085 -0.28443938 -0.17069125 0.066739649
		 -0.30472788 -0.14054699 0.043392457 -0.3321304 -0.063683845 0.011366764 -0.33518738
		 -0.033077691 0.032415085 -0.31589168 0.12068019 -0.012007887 -0.29323232 0.063014857
		 -0.1566505 -0.29285598 0.13992822 -0.095660411 -0.27369562 0.1953366 -0.037812207
		 -0.27114692 0.1986791 -0.038747936 -0.29373705 0.14960732 -0.07636521 -0.28146023
		 0.18542473 -0.029887419 -0.29812202 0.15741836 -0.028950939 -0.29974985 0.15430993
		 -0.028877724 -0.29298791 0.15864229 -0.059043698 -0.30644578 0.14151077 -0.02368816
		 -0.32081121 0.10481557 0.02427559 -0.32826251 0.02480432 0.078255393 -0.26576781
		 0.013615238 0.20899169 -0.20913234 -0.14376637 0.22380871 -0.20094784 -0.086220108
		 0.25822762 -0.21427238 -0.19948065 0.16967694 -0.19113895 -0.2706309 0.068704218
		 -0.1863949 -0.19553529 0.20376047 -0.16193987 -0.20716207 0.21296665 -0.16388424
		 -0.22186705 0.19599085 -0.1711781 -0.23486558 0.17329647 -0.19801557 -0.23303272
		 0.14484827 -0.27507067 -0.17749454 0.085599385 -0.29846492 -0.14576373 0.064552829
		 -0.3210133 -0.050571766 0.094278306 -0.32938126 0.061592735 -0.047008231 -0.28992367
		 -0.0085314224 0.17426106 -0.29852229 -0.13334945 0.087165423 -0.26909721 -0.20501424
		 0.0071622571 -0.263363 -0.10810398 0.18289039 -0.26412308 -0.12727061 0.16892789
		 -0.26409414 -0.14990918 0.14925474 -0.26453301 -0.1673636 0.12848018 -0.26463342
		 -0.17550066 0.11689359 -0.33250958 -0.04704459 0.041468542 -0.32256126 -0.031158684
		 0.09735918 -0.32739791 -0.017105471 -0.083746381 -0.33264518 0.045189727 -0.042432405
		 -0.31622821 0.11959978 0.013822285 -0.30852792 0.13580531 0.029374978 -0.32380858
		 0.097970679 0.0067226682 -0.32594198 0.090558305 0.0075146863 -0.32930022 0.037871428
		 0.067989454 -0.29771343 0.042945478 0.1549769 -0.33391863 -0.018127685 0.051625229
		 -0.32988858 -0.05856641 0.04731762 -0.30810741 0.078119159 0.11602873 -0.30657473
		 0.02353863 0.14125624 -0.30947039 -0.10010222 0.093290307 -0.27787185 -0.18616448
		 0.051239233 -0.31974488 -0.063211881 0.090900503 -0.32615456 -0.018262537 0.088233411
		 -0.32943437 -0.029030167 0.071593948 -0.33043063 -0.032891639 0.065032139 -0.32719436
		 -0.029200388 0.081158109 -0.32220775 -0.08801017 -0.054146312 -0.32401213 -0.081807524
		 0.053095374 -0.33785263 -0.01812025 -0.0047634533 -0.32054704 0.079207063 0.073968142
		 -0.31108642 0.091312379 0.096864492 -0.31309295 0.094599687 0.086713053 -0.30876672
		 0.076733053 0.11519803 -0.31754848 0.060996406 0.099688657 -0.33500129 -0.043501396
		 0.019421712 -0.30518237 -0.14420447 -0.02375377 -0.055660237 -0.27733988 -0.18568784
		 -0.16960821 -0.27299085 -0.10585129 0.021485629 -0.29331055 0.16734016 0.17766106
		 -0.17149009 0.23135069 0.16987522 -0.25913611 -0.13596444 0.176801 -0.28671002 -0.032159287
		 0.24382816 -0.2034491 0.11684063 -0.19411163 -0.22347626 0.16393435 0.11425845 -0.032999124
		 0.31678307 0.052276436 -0.33096364 0.047177065 -0.11589412 -0.31354153 0.052494802
		 0.10896047 -0.23247097 0.22040942 0.096746191 -0.26536623 0.18632334 0.11568079 -0.31393281
		 0.050592389 0.11891116 -0.20019692 0.24551328 0.28049821 0.055710819 0.180866 0.24275224
		 -0.21318682 0.10058917 -0.32555211 0.0021637618 0.092231132 -0.20867427 -0.24178331
		 -0.11176459 -0.23456414 -0.24366279 0.010176284 -0.28129554 -0.14402144 0.12093842
		 -0.0082783438 0.30033094 0.15565425 -0.12623909 0.23401856 0.20927125 -0.20354797
		 0.051194802 0.26541054 0.20142828 0.27115351 0.019946391 0.31571776 -0.090062395
		 -0.081893303 0.33797273 0.0022818218 0.016268434 -0.10576317 -0.28846928 -0.14175709
		 -0.023404913 -0.28569397 -0.179796 -0.033133026 0.33458155 0.038115956 0.13210386
		 -0.31133759 0.010626509 -0.047054622 0.33441982 0.021087414 -0.056239154 -0.29721129
		 0.15165111 -0.16119942 -0.27144128 0.12177774 -0.17438488 0.28929704 0.019813489
		 -0.26633921 -0.12234724 0.16908585 -0.19830011 -0.053234134 0.26895842 0.096206844
		 0.32276338 0.032611012 -0.027350912 -0.32925126 0.073081985 0.087823138 -0.32166696
		 0.057557818 -0.040516328 -0.27068368 -0.19895785 -0.068421483 -0.32706484 0.053315453
		 0.32579565 -0.078276582 -0.047174264 0.21577649 -0.25732997 -0.041439634 0.22768156
		 -0.24692139 -0.041065492 0.25742435 -0.12214512 -0.18250674 0.30156037 0.14828089
		 -0.039617814 -0.060931258 0.33192486 -0.024672344 -0.14932093 -0.15409683 -0.26163498
		 0.17788951 -0.14138936 -0.25071859 0.13127619 -0.31186518 0.0014552827 -0.29773721
		 -0.15372904 0.047067814 -0.15924478 -0.27789596 0.10913472;
	setAttr ".n[830:995]" -type "float3"  0.3309285 -0.027252287 -0.065108292 -0.29282171
		 0.1154619 0.12417505 0.16996177 -0.086677417 0.27945566 -0.062518761 -0.25478414
		 0.21370985 -0.19453548 -0.26315272 0.08603508 -0.097931013 -0.28456938 -0.15467782
		 -0.08108487 -0.27586615 -0.17837758 0.013708339 -0.2531223 -0.22413529 -0.054857183
		 -0.24831012 -0.22322236 0.098769791 -0.3148956 0.074704386 0.055118892 -0.33218727
		 -0.033301134 -0.28587726 0.032925963 -0.17800428 0.11071881 -0.31974474 -0.00030312836
		 0.11711943 -0.26522699 -0.17445095 0.11694451 -0.21065493 -0.23757932 0.27744788
		 -0.14735839 -0.12571244 0.29453179 -0.16370299 -0.030786378 0.23984146 -0.12067617
		 -0.20593393 -0.28076151 0.019868325 -0.18781286 0.0037113915 -0.33325085 -0.058528055
		 -0.29309672 0.045849528 -0.16275004 -0.28494751 0.064022198 -0.1708845 0.16757083
		 -0.29195625 0.034307651 0.25367171 -0.22063182 -0.038310666 0.22241277 -0.22838077
		 -0.11344704 0.16779512 -0.25774869 -0.14108811 0.16827518 -0.027703347 -0.29225233
		 0.18127345 -0.1149223 -0.26158795 0.25352538 -0.11240881 -0.19386746 0.235387 -0.15669775
		 -0.18583387 0.30239299 0.087152757 -0.12433153 -0.10638787 -0.084181361 -0.30998477
		 0.10694667 -0.22901636 -0.22496524 0.33131224 -0.0084320335 -0.068238817 0.069665767
		 -0.32025677 0.084129237 -0.035254337 0.19899708 -0.27139038 -0.31141451 0.11894269
		 -0.058043718 -0.0089802947 -0.32925805 0.077485055 -0.057873052 -0.32096341 0.090158992
		 -0.20565884 -0.26856649 -0.0084806029 -0.18965161 -0.26954401 0.076640308 -0.098847084
		 -0.31374094 0.079317853 0.15264551 -0.087857649 -0.28892183 -0.15799555 -0.2761429
		 -0.11522999 0.064938158 0.24465114 -0.22455356 0.19873689 -0.16775984 0.21646185
		 0.22921412 0.049742885 0.24388927 0.058799669 -0.18588473 0.27655905 0.13246632 -0.18830773
		 0.24796836 -0.018035294 -0.31732273 0.11608813 0.19645813 0.22287652 -0.16194354
		 0.25030667 0.17889537 -0.1408491 0.14262909 0.22627023 0.20725387 0.1318136 0.17578934
		 0.25733 0.2306501 -0.019234192 0.24683197 0.28336847 0.055254143 0.1764787 0.16822456
		 0.19754405 0.21719182 0.19443581 0.16864991 0.21965283 0.24595188 -0.13626732 0.18824011
		 0.21033822 0.072072364 0.25506637 0.1600014 -0.16710667 0.24692176 0.061484605 0.19088186
		 -0.27254209 0.09669663 0.057697177 -0.31908658 0.29117671 0.02025383 -0.17117634
		 -0.04887747 -0.33373198 0.027007313 -0.20824882 -0.26648504 0.010657778 -0.12184869
		 -0.31082335 0.055110633 -0.19100554 -0.26814359 0.078175053 -0.023172043 -0.32881406
		 0.076418728 -0.19069001 -0.26727447 0.081835978 0.12634987 -0.3080759 0.060169719
		 0.17843087 0.15738548 -0.2405986 0.070333272 0.2400399 -0.22788051 0.043571856 0.23439366
		 -0.24011779 0.038954351 0.26567382 -0.20590152 0.0595567 0.28735375 -0.16845252 0.095361792
		 0.30266184 -0.11746223 0.1155347 0.315299 -0.041637778 0.12392598 0.31427011 -0.01928951
		 0.18311593 0.19250841 -0.20953402 0.17307191 0.22797225 -0.18047218 0.13150273 0.087099813
		 -0.2993595 0.096015729 0.072512344 -0.31625685 0.099197827 0.093085572 -0.30982304
		 0.10167731 0.15398401 -0.28363022 0.10139008 0.16462325 -0.2776953 0.101207 0.17385243
		 -0.27208072 0.10139268 0.18099356 -0.26731309 0.10218195 0.17585348 -0.27042532 0.10878785
		 0.16744648 -0.27317089 0.11099222 0.16875538 -0.27147338 0.11894313 0.15904774 -0.27395582
		 0.12483653 0.1322431 -0.28534725 0.13622403 0.14502007 -0.27369261 0.14397721 0.20250095
		 -0.22969408 0.14439008 0.23837708 -0.19189402 0.14014493 0.27360767 -0.14139901 0.13994542
		 0.27554676 -0.13778497 0.13985869 0.24737343 -0.18368825 0.13222064 0.2878077 -0.11907925
		 0.1449478 0.27640817 -0.13070618 0.1524701 0.2816343 -0.10922652 0.15664485 0.29919669
		 -0.020956486 0.16138643 0.29020265 0.065056115 0.16160913 0.24559604 0.16751274 0.12832652
		 0.18202496 0.25474429 0.12451217 0.16133513 0.2701169 0.13914022 0.18968754 0.24321611
		 0.14376196 0.20006882 0.23194915 0.13654394 0.21227022 0.22537203 0.15987027 0.19229393
		 0.22794735 0.17059971 0.13089649 0.26126096 0.28788385 -0.093691647 0.15112978 0.18668452
		 0.15409298 0.23643115 0.24261075 -0.14663006 0.18475685 0.11627296 -0.18584581 0.2577545
		 0.091431268 -0.11506689 0.30478743 0.088558219 -0.14987364 0.29015645 0.11299205
		 -0.20326842 0.24578483 0.11605093 -0.24704324 0.19999316 0.11741391 -0.24290876 0.20421742
		 0.11985769 -0.23612507 0.21065265 0.12294319 -0.23558488 0.20947596 0.12709679 -0.2372454
		 0.20507674 0.13029954 -0.22087993 0.22074765 0.12470993 -0.21775734 0.22699033 0.091320083
		 -0.1795992 0.27184594 0.00017353274 -0.17449374 0.28990921 -0.026413541 -0.19332716
		 0.27644598 -0.099291421 -0.26837128 0.18059213 -0.1747376 -0.28573325 0.048152957
		 0.24211681 -0.12018435 0.20354512 0.0789598 -0.15612468 0.28963059 0.054191757 0.220871
		 0.25054878 0.27521452 -0.040009908 0.19274756 0.33439639 0.0058112312 -0.051387951
		 0.33615717 0.032113437 0.021506375 0.32057112 0.068404004 0.083967157 0.33812708
		 0.0094560534 0.0087242424 0.32782045 -0.054150946 -0.064006865 0.31585249 -0.027612751
		 -0.11819551 0.2343118 -0.15592554 -0.18783145 0.20852093 -0.10611306 -0.24444728
		 0.13106413 0.20550658 0.23470129 -0.2933417 0.11008528 0.12777846 -0.29029289 0.16116105
		 0.065211929 0.10779068 0.24235278 0.21009935 0.31721237 0.050162308 0.10656212 0.33648962
		 -0.013725543 0.032890424 0.097738534 0.31370547 0.080817692 0.26513651 0.19682409
		 -0.073880613 0.30096588 0.09528707 -0.1218005 0.25798011 0.19752623 -0.094472721
		 0.29165384 0.10572576 -0.13511309 0.14242724 -0.29508135 -0.084480263 0.13212225
		 -0.2957522 -0.097825356 0.30028713 0.054231558 -0.14622593 0.13619784 -0.29163602
		 -0.10437448 0.035953347 -0.33320487 -0.046661705 0.29309586 -0.053782102 -0.16030516
		 -0.1042537 -0.28315094 -0.15314098 -0.19910131 -0.2552948 -0.098380268 -0.10719545
		 -0.28399253 0.14950861 0.33144182 -0.02092237 -0.064838357 0.30630881 -0.078214467
		 -0.12063517 -0.20674016 -0.25763628 -0.073331349;
	setAttr ".n[996:1161]" -type "float3"  0.27106184 0.1726222 -0.10593631 0.066468231
		 0.32407922 0.071063958 0.13810648 0.3082636 -0.019889319 0.087202951 0.31172049 0.09859737
		 0.048454728 0.31650734 0.10941064 0.18770294 0.27687433 0.051026016 0.2639606 0.18803921
		 0.097270191 -0.31225932 -0.074846424 -0.10671261 -0.18406819 -0.25816736 -0.11816921
		 0.10000905 -0.21300997 -0.24314684 0.04575802 -0.20294382 -0.26686224 0.10568561
		 -0.31382412 -0.069573104 0.14053546 -0.3032749 0.052626647 0.14972837 -0.29187575
		 0.082978301 0.016849097 -0.31461614 -0.12340268 -0.095707737 -0.32013014 -0.053405814
		 -0.19066387 -0.26733708 0.081692174 -0.18915191 -0.26813337 0.082592353 -0.18905205
		 -0.26842213 0.081879951 -0.18785439 -0.26853079 0.084246002 -0.17828676 -0.27483732
		 0.084697813 0.32417479 0.033819303 -0.090897761 0.25375417 0.093177028 -0.20352469
		 0.26048759 0.14289664 -0.16193272 0.15568179 0.18097468 0.23980574 0.17134379 0.14328901
		 0.25417516 0.28655759 -0.091939025 0.15468487 0.14395311 -0.17185941 0.25345075 0.29842338
		 -0.1066442 0.11859992 0.33718902 -0.028258266 -0.00068564608 0.068774603 -0.17462222
		 -0.28155386 0.23547155 -0.24216399 -0.020129533 0.058456704 -0.3317585 -0.031852145
		 0.14351545 -0.30533886 -0.025825195 0.053682517 -0.33079287 -0.046794157 -0.019678501
		 -0.33579296 0.036759809 -0.2558223 -0.20628497 -0.080603369 -0.049290743 -0.31322843
		 0.11812633 0.27236784 0.025881086 0.19910139 -0.037088059 0.32465184 0.087869756
		 0.17113245 -0.26939192 0.1124149 -0.32011235 -0.025406463 -0.10666795 -0.29278481
		 -0.14438559 -0.089024194 -0.23157994 -0.090611503 -0.22946836 -0.21671352 0.25602534
		 0.044516433 -0.14267911 0.30652949 -0.013333715 -0.075529419 0.094096251 0.31612757
		 0.1643033 -0.29554105 -0.012464114 -0.31031504 -0.11884784 -0.063837454 -0.3145608
		 -0.080409363 -0.095295809 -0.12931775 -0.2129932 -0.22892413 -0.26603499 -0.12737712
		 -0.16581886 0.022652064 -0.18504883 -0.28238139 0.1716994 -0.18101145 -0.22858174
		 0.16246918 -0.18587017 -0.23141196 0.12302672 -0.29408345 -0.1134671 0.10830504 -0.21771668
		 -0.23529749 0.1741142 -0.18860424 -0.22047253 0.2726171 -0.20037442 0.0050439429
		 0.1750337 -0.28159171 0.067562908 0.028446836 -0.33451205 -0.042283684 -0.099056527
		 -0.32326981 0.013411345 -0.19096777 -0.26706219 0.081881292 -0.19088897 -0.267115
		 0.081892796 -0.19110538 -0.26698628 0.08180771 -0.19085142 -0.26710096 0.082025982
		 -0.19047943 -0.26732159 0.08217182 0.10421468 -0.29882497 0.119743 -0.18354036 -0.27132195
		 0.084810302 0.25207868 -0.2066395 0.09083993 0.33031711 0.064294532 -0.03538736 0.28910899
		 0.1087628 -0.13813792 0.12362288 0.25871128 -0.17966996 0.27013558 0.17614658 -0.10244317
		 0.14133887 0.27258044 -0.14219236 0.16138487 0.28318718 -0.09085919 0.1728086 0.2906985
		 -0.011269867 0.1793924 0.28690097 -0.0012842539 0.11993783 0.20204899 -0.24348833
		 0.042586215 0.26370019 -0.2077115 -0.0023032494 0.12482173 -0.31449908 0.043596491
		 0.084052585 -0.32485375 0.066149145 0.099667005 -0.31652209 0.087371953 0.15455948
		 -0.28805026 0.090447582 0.16488425 -0.28129676 0.093333401 0.17374825 -0.27494702
		 0.10332787 0.18301651 -0.26518628 0.1084284 0.17768036 -0.26677409 0.11850107 0.16857183
		 -0.26839611 0.12381177 0.16893573 -0.26575705 0.14743726 0.1532872 -0.26317436 0.15914197
		 0.12671763 -0.27039215 0.17582874 0.12238258 -0.26192021 0.18320359 0.18403222 -0.21694247
		 0.18144564 0.22187634 -0.17984386 0.17760535 0.25981274 -0.12429451 0.17110729 0.26545614
		 -0.1214528 0.17262749 0.23405091 -0.17296059 0.16570924 0.2749376 -0.10698228 0.1806176
		 0.26126719 -0.11667126 0.19066423 0.26180857 -0.097973786 0.19503655 0.27620378 -0.012948406
		 0.19990595 0.26376411 0.070438243 0.19516052 0.22203197 0.16465001 0.16312572 0.16364008
		 0.24719903 0.15695383 0.15406564 0.25714728 0.19685145 0.17256229 0.21439964 0.2013521
		 0.2448708 0.11828383 0.2948353 -0.086091019 0.14197157 0.15935513 -0.16542383 0.248468
		 0.2099933 -0.14529067 0.22201099 0.090543471 -0.10848465 0.30745474 0.060605455 -0.15321128
		 0.29554817 0.091061994 -0.22425477 0.2364592 0.14029169 -0.24031144 0.19252037 0.1503835
		 -0.23326521 0.19356547 0.15127888 -0.22682954 0.20039587 0.15373182 -0.22644556 0.19895823
		 0.15761873 -0.22847341 0.19352438 0.17278264 -0.20516808 0.20627081 0.17685053 -0.19266884
		 0.21470459 0.19077158 -0.13252544 0.24604604 0.17314607 -0.11985489 0.26485977 0.21972583
		 -0.091870107 0.24036615 0.30667016 -0.095761888 0.10620037 0.31487659 -0.10343485
		 0.068186581 0.3260929 -0.042655736 -0.079620011 0.30862215 -0.030569158 -0.13532673
		 -0.018342346 -0.18173258 -0.28483728 -0.26484334 -0.13713692 -0.159834 -0.30173862
		 -0.11348628 -0.10281107 -0.31677872 -0.11088944 -0.043014131 -0.31217778 -0.11085974
		 -0.068924636 0.16019958 -0.2960493 -0.034443304 0.14172456 -0.30593354 -0.028535157
		 -0.27304342 -0.18975432 -0.06273783 -0.28084525 -0.17384528 -0.07347931 -0.2457417
		 0.22849034 -0.043573268 -0.29646274 -0.12881726 -0.10005701 -0.26515645 0.20097491
		 -0.061616514 -0.14876156 0.065886855 -0.296689 -0.32531911 -0.06989792 -0.061459005
		 0.28007153 0.041785739 -0.18522783 -0.054068234 -0.332479 -0.032090332 0.21348205
		 0.011913644 -0.26225734 0.13783254 -0.1237009 -0.28318849 0.24457952 -0.14551701
		 -0.18303306 0.20768495 -0.089369223 -0.25174502 0.20533022 -0.16336516 -0.21365105
		 0.20462742 -0.1748125 -0.20509425 0.26319551 -0.14963639 -0.1511043 0.12972853 -0.30295986
		 0.07668943 0.28902385 -0.13213436 -0.11619454 0.17163153 -0.27366719 0.10071905 0.30928382
		 -0.11353197 -0.077132702 0.29460791 -0.16637833 -0.0044583906 0.29461843 -0.16523851
		 0.019790191 0.29342851 -0.16768101 -0.016680259 0.23716857 -0.19128884 -0.14715669
		 0.12727164 -0.229131 -0.21400084 0.28258443 -0.16639456 -0.083392702 0.31214496 -0.13044596
		 -0.0066949069 0.17133211 -0.25185493 0.14734265 0.087057471 -0.25428981 0.20555566
		 -0.025889477 -0.28839317 0.17508441 -0.17728473 -0.27392095 0.089626364;
	setAttr ".n[1162:1327]" -type "float3"  -0.1818676 -0.27241987 0.084894232 0.27209705
		 0.18843246 -0.070369311 0.26860061 0.20418443 -0.025648883 0.26711264 0.20688239
		 -0.018600209 0.2345545 0.24102761 0.03721993 0.26839271 0.19833431 0.055895466 0.27932149
		 0.17658122 0.07276006 0.28686064 -0.032303035 0.17653023 0.29199359 -0.13671108 0.10269011
		 0.31602967 -0.088356264 0.082546122 0.2963126 -0.004018107 0.16333443 0.26974508
		 -0.06489215 0.19370611 0.00036905968 -0.29796347 0.160353 0.316791 0.10401483 -0.057617821
		 0.1997218 -0.24305435 0.12462438 0.28845158 -0.14634736 0.099365868 0.31607622 -0.092172019
		 0.078074239 0.31387386 0.12328998 -0.027896797 0.31290683 0.12680045 -0.022503575
		 0.30244747 -0.0014397381 0.15171982 0.31839731 0.027551748 -0.11117321 0.33176127
		 -0.043369565 0.050487414 0.26195267 -0.13331133 -0.16764346 -0.3201808 -0.10938453
		 -0.0038385007 0.19211921 -0.27752426 0.023789192 0.20578223 -0.26655129 0.033159181
		 0.30241325 -0.10566449 -0.1089802 -0.057576172 -0.33037141 -0.045112751 -0.11003689
		 -0.30669484 -0.09124472 0.28853813 0.004064797 -0.17670503 -0.3119643 0.11866825
		 -0.055601772 -0.30946571 0.12398361 -0.057917979 -0.26502827 0.18567561 -0.098894
		 -0.30916125 0.12448088 -0.05847453 -0.26405576 0.14956909 -0.14966324 -0.20722593
		 0.14986558 -0.22156978 -0.16197734 0.14948535 -0.25673509 -0.028128015 0.16813032
		 -0.29229516 -0.0095566437 0.17853998 -0.28727615 0.010357032 0.18657954 -0.28209263
		 0.045510057 0.20452279 -0.26569664 0.0721009 0.19277051 -0.26858228 0.10577404 0.17801145
		 -0.26761767 0.11811886 0.17653033 -0.26340166 0.15579712 0.16240105 -0.25268281 0.15121287
		 0.15871045 -0.25776175 0.24691948 0.16018775 -0.16693141 0.22737309 0.153689 -0.19793083
		 0.23099047 0.19175345 -0.15610719 0.23522195 0.22333579 -0.096370101 0.21528462 0.24491683
		 -0.09035331 0.2336313 0.19661213 -0.14579277 0.22513838 0.24045493 -0.077392429 0.24216473
		 0.22351916 -0.076751962 0.25300518 0.21454306 -0.066746511 0.25663698 0.22051144
		 -0.002760208 0.21759419 0.24687292 0.078752592 0.20924102 0.2423909 0.10936312 0.30223319
		 0.14589351 -0.04319277 0.20739245 0.25380984 0.084049903 0.32527965 0.026964694 0.089227192
		 0.29470232 -0.082001977 0.14464323 0.27990761 -0.084746137 0.17019182 0.19442084
		 -0.1521751 0.23138437 0.1164791 -0.12226665 0.29322165 0.11888337 -0.23750108 0.20965549
		 0.13486202 -0.28514686 0.12247016 0.20476471 -0.20699956 0.17238924 0.19186981 -0.20676599
		 0.18689366 0.18014689 -0.21429111 0.19005752 0.18137781 -0.22249094 0.17915165 0.21090181
		 -0.20593564 0.16615169 0.21825536 -0.20531283 0.1571836 0.23840971 -0.1173785 0.20947208
		 0.27216899 -0.19029051 0.064876787 0.319491 -0.0968398 0.05516335 0.31773347 -0.074186645
		 -0.089650631 0.29338101 -0.11928032 -0.11914381 0.27618706 -0.12774079 -0.14798123
		 0.26925868 -0.13389835 -0.15513362 0.18045276 -0.26354185 0.11170471 0.29105216 -0.16634557
		 0.045969944 -0.00034879122 -0.28137857 -0.18793993 0.080753662 -0.25469327 -0.20761892
		 -0.27326712 0.042201579 -0.19503731 0.32764176 -0.079731837 -0.028092014 0.21091953
		 -0.26211739 0.036095444 0.31561273 -0.092191271 -0.079905026 0.2034677 0.1105395
		 -0.24673338 -0.29505125 0.01271729 -0.16516198 -0.3094236 0.124105 -0.057882812 -0.30939019
		 0.12415009 -0.057964768 -0.30916667 0.12443126 -0.058551557 -0.3081148 0.12498804
		 -0.062759057 -0.30667409 0.12668344 -0.066315494 -0.29165766 0.13827354 -0.1015464
		 -0.28291997 0.14590368 -0.11473382 -0.27511331 0.15307136 -0.12400515 -0.23818496
		 0.18334921 -0.15539125 -0.20575455 0.19965853 -0.17971361 -0.061757091 0.22081316
		 -0.24884343 -0.0081969192 0.21898627 -0.25782412 0.023251282 0.23419894 -0.24311659
		 -0.0286332 0.29120696 -0.16992378 0.22101155 0.24617611 -0.071039826 0.31682181 0.09203288
		 -0.075161956 0.33364162 -0.052221704 0.021251244 0.3232255 -0.092489913 0.038292807
		 0.33522999 0.015175036 -0.043428186 0.32958436 -0.075901799 0.01041658 0.32111022
		 -0.10669228 0.00065672229 0.31978416 0.064713344 -0.089697957 0.31466281 -0.12424962
		 -0.0066933124 0.31288105 -0.12876867 -0.0044173645 0.31222653 -0.1266723 -0.031050766
		 0.30361038 -0.14559141 0.03345627 0.31092879 -0.12600979 -0.044048447 0.28219178
		 -0.18052909 0.047670752 0.30920672 -0.12404349 -0.059159588 0.23441358 -0.24192609
		 -0.031898003 0.16736929 -0.29403272 0.005265383 0.2963517 -0.16042706 0.030565659
		 0.29826939 -0.15637095 0.032847278 0.29698354 -0.15955009 0.028982546 0.069671825
		 -0.32346681 0.070784889 0.29560927 -0.16391367 -0.015585613 -0.27649477 0.15354289
		 -0.12029409 0.27353072 0.077272706 -0.18359008 0.22589403 -0.13710341 -0.21135274
		 -0.040921018 -0.33239952 -0.048285346 0.29223362 -0.16904522 -0.022774212 0.069077
		 -0.3261762 0.057731312 0.31342965 -0.11420145 -0.056703791 -0.052587107 -0.32789466
		 0.064924054 -0.25152826 0.17038736 -0.14898704 -0.18458179 0.13233341 -0.25082439
		 0.097509906 -0.24746442 -0.20916171 0.12382257 -0.24579942 -0.19684018 0.23771898
		 -0.17935091 -0.16068098 0.28636101 -0.15225458 -0.096495375 0.32115629 -0.10521084
		 -0.016874554 0.28772399 -0.085337549 0.15629409 0.27715048 -0.07400053 0.17946301
		 0.29368219 -0.035454668 0.16428384 0.3154099 -0.056696389 0.10861662 0.089099959
		 -0.31623539 0.080943264 0.099162661 -0.3226923 0.02306293 0.24239273 -0.23222005
		 0.04260353 0.12822793 -0.25785327 -0.17766468 0.30608445 0.01790823 -0.143133 0.21745631
		 0.14982547 -0.21156685 -0.31002474 0.12078114 -0.061579403 -0.30765069 0.12612747
		 -0.062756315 -0.31127688 0.11760563 -0.061408952 -0.30939001 0.12415049 -0.057964783
		 -0.30938455 0.12415791 -0.057978008 -0.3093729 0.12417334 -0.058007222 -0.30896547
		 0.12483902 -0.058745135 -0.30872536 0.12526122 -0.059107739 -0.30831775 0.12597944
		 -0.05970576 -0.30597442 0.13008736 -0.062867902 -0.30346724 0.13442856 -0.065818183
		 -0.28157729 0.16287862 -0.09316773 -0.26655617 0.17740551 -0.10941001 -0.14262235
		 0.26920921 -0.14724372 -0.07305561 0.29359755 -0.15152159;
	setAttr ".n[1328:1493]" -type "float3"  0.24532135 0.22552787 -0.058737222 0.21986762
		 0.23217991 -0.11066236 0.32639369 0.086696737 0.021125501 0.33341625 0.057519529
		 0.0045329621 0.31882539 0.10506401 -0.042513262 0.30202818 0.13083519 -0.078463905
		 0.31619713 0.068670876 -0.098990582 0.29849741 -0.15560105 0.034395538 0.28652218
		 0.1052378 -0.14603248 0.30948746 0.061403286 -0.12223989 -0.2495556 0.086534813 -0.21149273
		 -0.24081424 -0.21141577 -0.10866147 0.06862168 -0.32704088 -0.053204935 -0.22575386
		 0.013902171 -0.25166917 0.033471383 -0.3361038 -0.020232404 -0.088062219 -0.15466146
		 -0.2877852 0.17210576 -0.025299311 -0.29023266 -0.23002537 0.1294087 -0.21174787
		 -0.25718006 0.14951487 -0.16124257 0.061139621 0.050772771 -0.32890654 0.011612467
		 0.09507405 -0.32453278 -0.082487226 0.054142531 -0.3236663 0.12714249 -0.059385888
		 -0.30790186 0.32014948 -0.089336887 -0.063393064 0.31571651 0.014138649 -0.1209075
		 -0.30947274 0.12401593 -0.057811085 -0.3091343 0.12465867 -0.05823781 0.043157503
		 0.30586863 -0.1381204 0.30194664 0.1287092 -0.082204685 0.33509809 0.011686695 -0.045476723
		 0.33484924 0.0023717419 -0.048639551 0.3155064 0.068220235 -0.10147494 0.31472313
		 0.06762249 -0.10426887 0.31299073 0.068971947 -0.10851321 0.31070867 0.069646351
		 -0.11447681 0.31087548 0.070204489 -0.11368031 0.31012264 0.066000231 -0.11816664
		 0.28358671 0.11298899 -0.1459709 0.28717145 0.10814878 -0.14258975 0.32414141 -0.089615494
		 -0.037374601 0.32397702 -0.092663735 -0.030785717 0.23102282 0.1555469 -0.19216932
		 -0.18606611 0.22269072 -0.17402209 -0.3085627 0.12564579 -0.059140865 -0.30495876
		 0.13159844 -0.064633124 -0.29727408 0.14395593 -0.073486432 -0.24552083 0.20369586
		 -0.11279613 -0.22314201 0.21892859 -0.12951201 -0.19327442 0.2359696 -0.1464882 -0.1264763
		 0.27555549 -0.15022771 -0.089046948 0.29896045 -0.13110581 -0.073361188 0.2962938
		 -0.14602591 -0.026428604 0.30793774 -0.13773645 -0.052489914 0.30346343 -0.1401792
		 0.22011809 0.22987758 -0.11489026 0.3054533 0.086569868 -0.11704433 0.28589693 0.10805637
		 -0.14519715 0.3266086 0.0016981682 -0.088427238 0.2512916 0.15101534 -0.16894481
		 -0.12384 0.22472109 -0.22058904 -0.29002994 0.15125601 -0.086600855 -0.27955142 0.15845408
		 -0.10601301 0.18892398 0.25071299 -0.12627815 0.28579396 0.15463053 -0.094375059
		 0.19231384 0.23662227 -0.14669946 0.33517301 0.014350303 -0.044142567 0.21705461
		 0.21562451 -0.14452963 0.28864071 0.12854749 -0.12106825 0.33462638 0.010439795 -0.049108528
		 0.28578052 0.13064231 -0.12552896 0.26588812 0.14382131 -0.15203412 0.15985999 0.21989924
		 -0.20145608 0.052835327 0.261307 -0.20838071 0.20899703 0.21255054 -0.16011859 0.32996622
		 -0.0047815819 -0.074798927 0.26136416 0.14564262 -0.15802671 0.10846419 0.24875973
		 -0.20211275 0.16935781 0.23148993 -0.17951544 0.1743608 0.23238981 -0.17346102 0.17583568
		 0.23350303 -0.17045115 0.18235582 0.23016138 -0.16812952 0.195614 0.23124135 -0.1508577
		 0.20442487 0.21482393 -0.16296194 0.26473239 0.15826249 -0.13915889 0.24104165 0.16662775
		 -0.16920274 0.24556401 0.16612411 -0.16308446 0.30987573 -0.13417798 0.021650517
		 0.32235548 -0.071851075 0.073619381 0.31478995 0.1229992 -0.016550723 0.32192084
		 0.10420389 -0.0019943668 0.3056381 0.047997307 -0.13702935 0.32388198 0.091635518
		 0.034624275 0.29600856 0.148752 -0.068900004 0.31147385 -0.038953494 0.12634128 0.19628058
		 -0.2494849 0.11716085 0.2013783 -0.23432438 0.13796489 0.28443938 -0.17069125 0.066739649
		 0.30472788 -0.14054699 0.043392457 0.3321304 -0.063683845 0.011366764 0.33518738
		 -0.033077691 0.032415085 0.31589168 0.12068019 -0.012007887 0.29323232 0.063014857
		 -0.1566505 0.29285598 0.13992822 -0.095660411 0.27369562 0.1953366 -0.037812207 0.27114692
		 0.1986791 -0.038747936 0.29373705 0.14960732 -0.07636521 0.28146023 0.18542473 -0.029887419
		 0.29812202 0.15741836 -0.028950939 0.29974985 0.15430993 -0.028877724 0.29298791
		 0.15864229 -0.059043698 0.30644578 0.14151077 -0.02368816 0.32081121 0.10481557 0.02427559
		 0.32826251 0.02480432 0.078255393 0.20913234 -0.14376637 0.22380871 0.26576781 0.013615238
		 0.20899169 0.20094784 -0.086220108 0.25822762 0.21427238 -0.19948065 0.16967694 0.19113895
		 -0.2706309 0.068704218 0.1863949 -0.19553529 0.20376047 0.16193987 -0.20716207 0.21296665
		 0.16388424 -0.22186705 0.19599085 0.1711781 -0.23486558 0.17329647 0.19801557 -0.23303272
		 0.14484827 0.27507067 -0.17749454 0.085599385 0.29846492 -0.14576373 0.064552829
		 0.3210133 -0.050571766 0.094278306 0.32938126 0.061592735 -0.047008231 0.28992367
		 -0.0085314224 0.17426106 0.29852229 -0.13334945 0.087165423 0.26909721 -0.20501424
		 0.0071622571 0.263363 -0.10810398 0.18289039 0.26412308 -0.12727061 0.16892789 0.26409414
		 -0.14990918 0.14925474 0.26453301 -0.1673636 0.12848018 0.26463342 -0.17550066 0.11689359
		 0.33250958 -0.04704459 0.041468542 0.32256126 -0.031158684 0.09735918 0.32739791
		 -0.017105471 -0.083746381 0.33264518 0.045189727 -0.042432405 0.31622821 0.11959978
		 0.013822285 0.30852792 0.13580531 0.029374978 0.32380858 0.097970679 0.0067226682
		 0.32594198 0.090558305 0.0075146863 0.32930022 0.037871428 0.067989454 0.29771343
		 0.042945478 0.1549769 0.33391863 -0.018127685 0.051625229 0.32988858 -0.05856641
		 0.04731762 0.30810741 0.078119159 0.11602873 0.30657473 0.02353863 0.14125624 0.30947039
		 -0.10010222 0.093290307 0.27787185 -0.18616448 0.051239233 0.31974488 -0.063211881
		 0.090900503 0.32615456 -0.018262537 0.088233411 0.32943437 -0.029030167 0.071593948
		 0.33043063 -0.032891639 0.065032139 0.32719436 -0.029200388 0.081158109 0.32220775
		 -0.08801017 -0.054146312 0.32401213 -0.081807524 0.053095374 0.33785263 -0.01812025
		 -0.0047634533 0.32054704 0.079207063 0.073968142 0.31108642 0.091312379 0.096864492
		 0.31309295 0.094599687 0.086713053 0.30876672 0.076733053 0.11519803 0.31754848 0.060996406
		 0.099688657 0.33500129 -0.043501396 0.019421712 0.30518237 -0.14420447 -0.02375377;
	setAttr ".n[1494:1502]" -type "float3"  0.055660237 -0.27733988 -0.18568784 0.16960821
		 -0.27299085 -0.10585129 -0.021485629 -0.29331055 0.16734016 -0.17766106 -0.17149009
		 0.23135069 -0.176801 -0.28671002 -0.032159287 -0.16987522 -0.25913611 -0.13596444
		 -0.24382816 -0.2034491 0.11684063 0.19411163 -0.22347626 0.16393435 0.11589412 -0.31354153
		 0.052494802;
	setAttr -s 1504 -ch 6010 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 2 57 58 -1530
		f 4 7 4 5 6
		f 4 426 -266 -265 425
		f 4 268 271 10 -10
		f 4 11 -7 12 13
		f 4 457 14 -8 -12
		f 4 -13 1507 15 446
		f 4 16 -1521 -15 458
		f 4 17 1499 -1519 -17
		f 4 19 8 18 -444
		f 4 411 23 412 -254
		f 4 24 -293 25 26
		f 4 -675 -685 -680 27
		f 4 30 29 -236 236
		f 4 297 -300 -477 31
		f 4 32 715 -36 34
		f 4 718 -484 -707 35
		f 4 883 -717 -715 882
		f 4 36 39 885 37
		f 4 41 -485 -724 -41
		f 4 45 -982 -965 -47
		f 4 -1185 1185 -48 -1263
		f 4 786 48 -51 49
		f 4 52 323 -328 51
		f 4 -52 -330 330 -147
		f 4 59 111 113 -59
		f 4 1529 60 210 61
		f 4 -64 145 64 -1625
		f 4 67 148 68 -1624
		f 4 107 -1526 1526 -1
		f 4 1524 108 201 -1524
		f 4 -110 110 -205 -58
		f 4 -112 206 207 112
		f 4 114 381 -61 -114
		f 4 147 -66 -65 146
		f 4 -150 -68 -67 -148
		f 4 149 -331 150 161
		f 4 152 153 158 -152
		f 4 -154 -326 155 154
		f 4 -156 331 -506 156
		f 4 -157 -508 157 -155
		f 4 160 -151 -329 159
		f 4 -162 -336 336 162
		f 4 163 -70 -149 -163
		f 4 337 164 -71 -164
		f 4 338 165 -72 -165
		f 4 339 166 -73 -166
		f 4 340 167 -74 -167
		f 4 341 168 -75 -168
		f 4 342 169 -76 -169
		f 4 343 170 -77 -170
		f 4 344 171 -78 -171
		f 4 345 172 -79 -172
		f 4 346 173 -80 -173
		f 4 347 174 -81 -174
		f 4 348 175 -82 -175
		f 4 349 176 -83 -176
		f 4 350 177 -84 -177
		f 4 351 178 -85 -178
		f 4 352 179 -86 -179
		f 4 353 180 -87 -180
		f 4 354 181 -88 -181
		f 4 355 182 -89 -182
		f 4 356 183 -90 -183
		f 4 357 184 -91 -184
		f 4 358 185 -92 -185
		f 4 359 186 -93 -186
		f 4 360 187 -94 -187
		f 4 361 188 -95 -188
		f 4 362 189 -96 -189
		f 4 363 190 -97 -190
		f 4 364 191 -98 -191
		f 4 365 192 -99 -192
		f 4 366 193 -100 -193
		f 4 367 194 -101 -194
		f 4 368 195 -102 -195
		f 4 369 196 -103 -196
		f 4 370 197 -104 -197
		f 4 371 198 -105 -198
		f 4 372 199 -106 -199
		f 4 200 0 -107 -200
		f 4 373 -109 -108 -201
		f 4 -202 202 375 -111
		f 4 205 -60 204 203
		f 4 -208 377 378 208
		f 4 589 -115 -113 209
		f 4 212 -116 -63 211
		f 4 383 213 -117 -213
		f 4 384 214 -118 -214
		f 4 385 215 -119 -215
		f 4 386 216 -120 -216
		f 4 387 217 -121 -217
		f 4 388 218 -122 -218
		f 4 389 219 -123 -219
		f 4 390 220 -124 -220
		f 4 391 221 -125 -221
		f 4 392 222 -126 -222
		f 4 393 223 -127 -223
		f 4 394 224 -128 -224
		f 4 395 225 -129 -225
		f 4 396 226 -130 -226
		f 4 -232 227 -131 -227
		f 4 229 228 -132 -228
		f 4 231 232 -30 -231
		f 4 233 398 234 235
		f 4 -237 237 401 238
		f 4 240 -410 294 403
		f 4 -628 241 462 -241
		f 4 -242 404 405 686
		f 4 242 -291 291 630
		f 4 -243 -464 408 243
		f 4 245 246 282 244
		f 4 247 248 249 -246
		f 4 250 251 252 -250
		f 4 -249 253 -1499 254
		f 4 -255 -1498 255 -251
		f 4 -1497 256 257 -256
		f 4 259 260 275 258
		f 4 261 262 274 -260
		f 4 265 -434 266 267
		f 4 -269 269 -430 270
		f 4 272 -268 -11 -429
		f 4 273 263 264 -273
		f 4 277 278 279 280
		f 4 -281 -252 -258 276
		f 4 281 -247 -253 -280
		f 4 -282 283 284 285
		f 4 -286 286 -244 -283
		f 4 -285 287 288 289
		f 4 -290 -1507 -23 -287
		f 4 459 290 22 -18
		f 4 -295 463 -465 239
		f 4 -467 295 -31 -690
		f 4 296 -230 230 -296
		f 4 298 -473 473 299
		f 4 301 302 -134 -301
		f 4 303 304 -135 -303
		f 4 305 306 -136 -305
		f 4 307 308 -137 -307
		f 4 309 310 -138 -309
		f 4 311 312 -139 -311
		f 4 313 314 -140 -313
		f 4 315 316 -141 -315
		f 4 317 318 -142 -317
		f 4 319 320 -143 -319
		f 4 321 322 -144 -321
		f 4 324 325 326 327
		f 4 -327 -153 328 329
		f 4 509 -159 -158 -509
		f 4 332 333 -160 151
		f 4 -161 334 511 335
		f 4 -373 374 -203 -374
		f 4 376 580 -204 -376
		f 4 -583 583 -207 -206
		f 4 380 -210 -209 379
		f 4 382 590 -212 -211
		f 4 397 -234 -233 -397
		f 4 399 400 -238 -235
		f 4 402 622 -240 -402
		f 4 -869 406 293 -406
		f 4 -409 409 410 -245
		f 4 -668 639 -24 -634
		f 4 413 414 415 1498
		f 4 416 417 1497 -416
		f 4 -415 418 -443 419
		f 4 -420 420 421 -417
		f 4 423 -262 422 -422
		f 4 424 -264 -263 439
		f 4 427 -272 -271 -261
		f 4 -275 -274 428 -428
		f 4 430 431 -277 432
		f 4 -433 -257 -276 429
		f 4 -432 433 -439 -278
		f 4 434 435 -284 -279
		f 4 436 20 -288 -436
		f 4 438 -427 437 -435
		f 4 -425 -437 -438 -426
		f 4 -424 440 -22 -440
		f 4 -421 441 444 -441
		f 4 -442 442 -660 443
		f 4 -447 447 -657 448
		f 4 -450 450 655 451
		f 4 -456 -454 -452 452
		f 4 454 -449 449 453
		f 4 456 -14 -455 455
		f 4 460 629 -292 -662
		f 4 -631 687 -239 464
		f 4 690 -693 465 466
		f 4 467 -298 -297 -466
		f 4 468 469 -299 -468
		f 4 470 -702 471 472
		f 4 -474 474 -481 475
		f 4 -476 477 -302 476
		f 4 478 479 -304 -478
		f 4 480 481 -42 -479
		f 4 -482 -704 -708 482
		f 4 -483 483 719 484
		f 4 485 -1496 40 -725
		f 4 487 488 -308 -487
		f 4 489 490 -310 -489
		f 4 491 492 -312 -491
		f 4 493 494 -314 -493
		f 4 495 496 -316 -495
		f 4 497 498 -318 -497
		f 4 499 500 -320 -499
		f 4 501 -324 -322 -501
		f 4 -502 502 -332 -325
		f 4 503 752 504 505
		f 4 -505 -764 506 507
		f 4 -507 -766 731 508
		f 4 732 510 -333 -510
		f 4 733 -335 -334 -511
		f 4 -512 734 735 512
		f 4 513 -338 -337 -513
		f 4 514 515 -339 -514
		f 4 516 517 -340 -516
		f 4 518 519 -341 -518
		f 4 520 521 -342 -520
		f 4 522 523 -343 -522
		f 4 524 525 -344 -524
		f 4 526 527 -345 -526
		f 4 528 529 -346 -528
		f 4 530 531 -347 -530
		f 4 532 533 -348 -532
		f 4 534 535 -349 -534
		f 4 536 537 -350 -536
		f 4 538 539 -351 -538
		f 4 540 541 -352 -540
		f 4 542 543 -353 -542
		f 4 544 545 -354 -544
		f 4 546 547 -355 -546
		f 4 548 549 -356 -548
		f 4 550 551 -357 -550
		f 4 552 553 -358 -552
		f 4 554 555 -359 -554
		f 4 556 557 -360 -556
		f 4 558 559 -361 -558
		f 4 560 561 -362 -560
		f 4 562 563 -363 -562
		f 4 564 565 -364 -564
		f 4 566 567 -365 -566
		f 4 568 569 -366 -568
		f 4 570 571 -367 -570
		f 4 572 573 -368 -572
		f 4 574 575 -369 -574
		f 4 576 577 -370 -576
		f 4 578 579 -371 -578
		f 4 -581 -579 581 582
		f 4 584 834 -378 -584
		f 4 586 -1495 -379 585
		f 4 -590 -842 1298 -1494
		f 4 591 592 -384 -591
		f 4 593 594 -385 -593
		f 4 595 596 -386 -595
		f 4 597 598 -387 -597
		f 4 599 600 -388 -599
		f 4 601 602 -389 -601
		f 4 603 604 -390 -603
		f 4 605 606 -391 -605
		f 4 607 608 -392 -607
		f 4 609 610 -393 -609
		f 4 611 612 -394 -611
		f 4 613 614 -395 -613
		f 4 615 -398 -396 -615
		f 4 616 617 -399 -616
		f 4 618 619 -400 -618
		f 4 621 -403 -401 620
		f 4 623 624 -404 -623
		f 4 -625 625 626 627
		f 4 628 292 -407 -695
		f 4 -629 -692 1492 461
		f 4 631 -248 -411 -463
		f 4 -687 632 -412 -632
		f 4 -294 -25 633 -633
		f 4 634 636 -26 -462
		f 4 -635 407 -461 635
		f 4 -637 637 663 638
		f 4 -640 668 640 641
		f 4 642 -414 -413 -642
		f 4 643 644 -419 -643
		f 4 -647 647 648 649
		f 4 651 650 657 -650
		f 4 -652 660 -459 653
		f 4 -654 -458 654 -653
		f 4 -451 656 -651 652
		f 4 -655 -457 -453 -656
		f 4 659 645 646 658
		f 4 -658 -448 -446 -659
		f 4 -649 661 -460 -661
		f 4 -638 -636 -648 662
		f 4 664 678 665 -639
		f 4 677 666 -27 -666
		f 4 -667 -686 673 667
		f 4 670 -644 -641 669
		f 4 671 -663 -646 -645
		f 4 -671 672 -664 -672
		f 4 676 -683 -665 -673
		f 4 674 675 -669 -674
		f 4 -676 -28 -677 -670
		f 4 -682 683 -678 -679
		f 4 679 680 681 682
		f 4 -684 -681 684 685
		f 4 -688 -630 688 689
		f 4 691 693 -469 692
		f 4 -694 694 -868 695
		f 4 696 -471 -470 -696
		f 4 -697 697 698 699
		f 4 -700 -871 700 701
		f 4 702 703 -475 -472
		f 4 704 705 706 707
		f 4 -873 708 -35 -706
		f 4 874 709 -34 -709
		f 4 875 710 711 -710
		f 4 -879 879 712 -712
		f 4 880 713 33 -713
		f 4 881 714 -33 -714
		f 4 -716 716 884 717
		f 4 -720 720 890 721
		f 4 -722 891 722 723
		f 4 -723 892 893 724
		f 4 894 725 -488 -486
		f 4 895 726 -490 -726
		f 4 896 727 -492 -727
		f 4 -782 728 -494 -728
		f 4 750 729 -496 -729
		f 4 751 730 -498 -730
		f 4 -504 -503 -500 -731
		f 4 755 736 -515 -736
		f 4 756 737 -517 -737
		f 4 757 738 -519 -738
		f 4 -744 739 -521 -739
		f 4 740 741 -523 -740
		f 4 743 758 744 -743
		f 4 -746 746 774 747
		f 4 -748 759 748 898
		f 4 753 -733 -732 766
		f 4 754 -735 -734 -754
		f 4 -778 760 -751 -750
		f 4 761 -753 -752 -761
		f 4 -762 -777 762 763
		f 4 -763 778 764 765
		f 4 767 768 -756 -755
		f 4 769 770 -757 -769
		f 4 771 -759 -758 -771
		f 4 -773 -772 773 -747
		f 4 -760 775 776 777
		f 4 779 -768 -767 -765
		f 4 -781 -774 -770 -780
		f 4 780 -779 -776 -775
		f 4 781 897 -749 749
		f 4 782 -745 772 899
		f 4 -783 -980 900 783
		f 4 784 -741 742 -784
		f 4 -785 785 901 -50
		f 4 -793 787 904 788
		f 4 907 790 909 789
		f 4 910 911 -789 905
		f 4 791 912 -49 792
		f 4 793 913 794 50
		f 4 -795 795 -525 -742
		f 4 796 797 -527 -796
		f 4 798 799 -529 -798
		f 4 800 801 -531 -800
		f 4 802 803 -533 -802
		f 4 804 805 -535 -804
		f 4 806 807 -537 -806
		f 4 808 809 -539 -808
		f 4 810 811 -541 -810
		f 4 812 813 -543 -812
		f 4 814 815 -545 -814
		f 4 816 817 -547 -816
		f 4 818 819 -549 -818
		f 4 820 821 -551 -820
		f 4 1282 822 -553 -822
		f 4 1283 823 -555 -823
		f 4 1284 824 -557 -824
		f 4 1285 825 -559 -825
		f 4 1286 826 -561 -826
		f 4 1287 827 -563 -827
		f 4 1288 828 -565 -828
		f 4 1289 829 -567 -829
		f 4 1290 830 -569 -830
		f 4 1291 831 -571 -831
		f 4 1292 832 -573 -832
		f 4 -836 833 -575 -833
		f 4 -585 -582 -577 -834
		f 4 -835 835 1293 -586
		f 4 1294 1295 587 -587
		f 4 838 -589 -588 837
		f 4 -381 840 1337 841
		f 4 1299 843 -592 -843
		f 4 1300 844 -594 -844
		f 4 1301 845 -596 -845
		f 4 1302 846 -598 -846
		f 4 1303 847 -600 -847
		f 4 1304 848 -602 -848
		f 4 1305 849 -604 -849
		f 4 1306 850 -606 -850
		f 4 1307 851 -608 -851
		f 4 1308 852 -610 -852
		f 4 853 854 -612 -853
		f 4 856 -619 -29 855
		f 4 -857 -877 1487 -1492
		f 4 858 859 -1491 -858
		f 4 -860 1489 860 861
		f 4 -699 863 864 862
		f 4 -626 865 -862 -865
		f 4 866 -405 -627 -864
		f 4 -867 -698 867 868
		f 4 -863 -861 869 870
		f 4 -870 871 872 873
		f 4 -705 -703 -701 -874
		f 4 876 -1313 877 -711
		f 4 -878 -1315 1315 878
		f 4 38 886 -38 42
		f 4 887 -1487 -37 -887
		f 4 889 -721 -719 -889
		f 4 -1060 980 -786 -901
		f 4 1075 -788 -787 903
		f 4 -906 986 -907 -790
		f 4 988 -993 -791 908
		f 4 -912 993 994 -792
		f 4 995 996 -794 -913
		f 4 -999 914 -797 -914
		f 4 -1001 915 -799 -915
		f 4 -1003 916 -801 -916
		f 4 -1005 917 -803 -917
		f 4 -1007 918 -805 -918
		f 4 -1009 919 -807 -919
		f 4 -1011 920 -809 -920
		f 4 -1013 921 -811 -921
		f 4 -1015 922 -813 -922
		f 4 -1017 923 -815 -923
		f 4 -1019 924 -817 -924
		f 4 -1021 925 -819 -925
		f 4 926 -1282 -821 -926
		f 4 1024 1025 1276 -932
		f 4 932 933 934 1275
		f 4 1027 937 938 -937
		f 4 -938 1028 939 -1272
		f 4 1031 942 -883 -942
		f 4 943 944 -884 -943
		f 4 -44 -886 -885 -945
		f 4 -944 945 1032 946
		f 4 -1104 947 43 -947
		f 4 -1106 1033 -45 -948
		f 4 -951 -952 -955 -1038
		f 4 953 951 952 1035
		f 4 -954 -1268 -1040 954
		f 4 955 -43 44 948
		f 4 949 950 1036 -957
		f 4 -956 956 957 -1057
		f 4 1057 960 961 -960
		f 4 963 -891 962 -962
		f 4 -961 964 965 966
		f 4 -967 967 -892 -964
		f 4 -966 1058 968 969
		f 4 -970 970 -893 -968
		f 4 972 -895 -894 971
		f 4 -1063 973 -896 -973
		f 4 974 -898 -897 -974
		f 4 -975 975 976 -899
		f 4 977 -900 745 -977
		f 4 -978 978 1063 979
		f 4 -981 -1059 981 982
		f 4 983 -903 -902 -983
		f 4 -984 -46 1047 984
		f 4 -985 -1111 1074 985
		f 4 -1114 -904 902 -986
		f 4 987 -908 906 -1079
		f 4 -988 1079 1080 -909
		f 4 -989 1081 1082 989
		f 4 -990 990 991 992
		f 4 -1085 -911 -910 -992
		f 4 -997 1086 997 998
		f 4 -998 -1124 999 1000
		f 4 -1000 -1126 1001 1002
		f 4 -1002 -1128 1003 1004
		f 4 -1004 -1130 1005 1006
		f 4 -1006 -1132 1007 1008
		f 4 -1008 -1134 1009 1010
		f 4 -1010 -1136 1011 1012
		f 4 -1012 -1138 1013 1014
		f 4 -1014 -1140 1015 1016
		f 4 -1016 -1142 1017 1018
		f 4 -1018 -1144 1019 1020
		f 4 1021 927 -927 -1020
		f 4 1088 -930 -929 1022
		f 4 -1024 1089 1090 930
		f 4 1026 -936 -934 -1095
		f 4 1030 -941 -940 1029
		f 4 -1031 1098 -946 -1032
		f 4 -953 -950 -949 1034
		f 4 -1037 1037 1038 -1109
		f 4 -1157 -1039 1039 1040
		f 4 1042 1043 1050 -1042
		f 4 -1044 -1163 1044 1045
		f 4 -1048 1048 1049 -1047
		f 4 -1066 -958 1052 1053
		f 4 -1054 -1110 1041 1051;
	setAttr ".fc[500:999]"
		f 4 1054 1055 -959 1056
		f 4 1059 -1064 1060 -969
		f 4 1061 -972 -971 -1061
		f 4 -1062 -979 -976 1062
		f 4 -1056 1064 46 -1058
		f 4 1066 1067 1068 -1052
		f 4 1069 -1055 1065 -1069
		f 4 -1070 1070 -1049 -1065
		f 4 1072 -1067 -1051 1073
		f 4 -1074 -1046 -1050 1071
		f 4 -1071 -1068 -1073 -1072
		f 4 1077 -987 -905 1076
		f 4 -1078 1114 -1117 1078
		f 4 -1170 1083 -991 -1083
		f 4 -1084 1119 -994 1084
		f 4 1120 1085 -996 -995
		f 4 1087 -1267 -1023 -1022
		f 4 1146 1147 -1025 -1091
		f 4 1092 -933 -1026 1091
		f 4 -1093 1093 1148 1094
		f 4 1095 -1028 -1027 -1152
		f 4 1096 1097 -1029 -1096
		f 4 -1098 1152 -1100 -1030
		f 4 -1099 1099 -1257 1100
		f 4 -1101 -1260 1101 -1033
		f 4 -1102 1260 1102 1103
		f 4 -1103 1153 1104 1105
		f 4 -1036 -1035 -1034 1106
		f 4 -1105 -1041 1267 -1107
		f 4 -1156 1107 -1053 1108
		f 4 -1108 1157 -1160 1109
		f 4 1110 1046 -1045 1163
		f 4 1111 -1214 1112 1113
		f 4 1166 -1077 -1076 -1113
		f 4 1115 1168 -1080 1116
		f 4 1117 1118 -1082 -1081
		f 4 1121 -1087 -1086 -1173
		f 4 -1122 -1193 1122 1123
		f 4 -1123 1193 1124 1125
		f 4 -1125 1194 1126 1127
		f 4 -1127 1195 1128 1129
		f 4 -1129 1196 1130 1131
		f 4 -1131 1197 1132 1133
		f 4 -1133 1198 1134 1135
		f 4 -1135 1199 1136 1137
		f 4 -1137 1200 1138 1139
		f 4 -1139 -1174 1140 1141
		f 4 -1141 1142 -1088 1143
		f 4 1144 1145 -1090 -1089
		f 4 -1149 1149 1150 1151
		f 4 -1154 1154 1155 1156
		f 4 -1258 1158 -1043 1159
		f 4 -1159 1160 1161 1162
		f 4 1165 -1112 -1075 1164
		f 4 -1213 1167 -1115 -1167
		f 4 -1216 1186 -1116 -1168
		f 4 -1169 -1188 1188 -1118
		f 4 -1119 1189 -1171 1169
		f 4 1170 1171 -1121 -1120
		f 4 -1172 1190 1191 1172
		f 4 -1143 1173 1201 1174
		f 4 1176 1203 -1266 -1176
		f 4 -1178 1178 1204 1179
		f 4 -1182 1206 1182 -1150
		f 4 1263 -1183 1207 1183
		f 4 -1184 1234 1208 1184
		f 4 -1187 -1240 1216 1187
		f 4 -1192 -1219 1219 1192
		f 4 -1201 1202 -1177 -1202
		f 4 1205 1229 -1181 -1205
		f 4 1210 -1166 -1186 1209
		f 4 -1211 1211 1212 1213
		f 4 -1212 1214 1236 1215
		f 4 -1218 -1217 1240 1218
		f 4 -1243 1220 -1194 -1220
		f 4 -1245 1221 -1195 -1221
		f 4 -1247 1222 -1196 -1222
		f 4 -1249 1223 -1197 -1223
		f 4 -1251 1224 -1198 -1224
		f 4 -1229 1225 -1199 -1225
		f 4 1226 -1203 -1200 -1226
		f 4 1227 -1179 -1204 -1227
		f 4 -1228 1228 -1250 -1206
		f 4 1230 1231 -1207 -1230
		f 4 -1232 1232 1233 -1208
		f 4 -1215 -1210 -1209 1235
		f 4 -1237 1237 1238 1239
		f 4 -1241 -1239 1241 1242
		f 4 -1242 -1254 1243 1244
		f 4 -1244 -1252 1245 1246
		f 4 -1246 -1233 1247 1248
		f 4 -1248 -1231 1249 1250
		f 4 1252 -1235 -1234 1251
		f 4 -1253 1253 -1238 -1236
		f 4 -1191 -1190 -1189 1217
		f 4 -1161 1255 1256 -1255
		f 4 -1256 1257 1258 1259
		f 4 -1259 -1158 -1155 -1261
		f 4 1254 -1153 1261 1262
		f 4 1264 1180 1181 -1094
		f 4 -1265 -1092 -1148 -1180
		f 4 1177 -1147 -1146 1265
		f 4 1266 -1175 1175 -1145
		f 4 -1262 -1097 -1151 -1264
		f 4 -1165 -1164 -1162 47
		f 4 -963 -890 -888 1268
		f 4 -1269 -39 958 959
		f 4 1269 -881 1270 1271
		f 4 940 941 -882 -1270
		f 4 -1271 -880 1272 -939
		f 4 1273 1274 935 936
		f 4 -1355 -931 931 1277
		f 4 1321 1322 929 1023
		f 4 1279 -928 928 1278
		f 4 -1280 1323 1280 1281
		f 4 1360 -838 836 1296
		f 4 1297 1363 -841 -840
		f 4 1309 -1352 1310 -854
		f 4 1311 1312 -856 -1311
		f 4 -1312 -1351 1313 1314
		f 4 -1316 1316 -1274 -1273
		f 4 1318 -935 -1275 1317
		f 4 1320 -1277 -1276 1319
		f 4 -1321 1353 1386 -1278
		f 4 -1323 -1390 1355 -1279
		f 4 1324 -1283 -1281 1356
		f 4 -1394 1325 -1284 -1325
		f 4 -1396 1326 -1285 -1326
		f 4 -1398 1327 -1286 -1327
		f 4 -1400 1328 -1287 -1328
		f 4 -1402 1329 -1288 -1329
		f 4 -1404 1330 -1289 -1330
		f 4 -1406 1331 -1290 -1331
		f 4 -1358 1332 -1291 -1332
		f 4 -1335 1333 -1292 -1333
		f 4 1335 -837 -1296 1334
		f 4 1358 1359 -1297 -1337
		f 4 1361 1362 -1298 -839
		f 4 -1338 1364 1365 1338
		f 4 -1368 1340 -1301 -1340
		f 4 -1370 1341 -1302 -1341
		f 4 -1372 1342 -1303 -1342
		f 4 -1374 1343 -1304 -1343
		f 4 -1376 1344 -1305 -1344
		f 4 -1378 1345 -1306 -1345
		f 4 -1380 1346 -1307 -1346
		f 4 -1382 1347 -1308 -1347
		f 4 1348 -1310 -1309 -1348
		f 4 1349 -1409 1350 1351
		f 4 1352 -1318 -1317 -1314
		f 4 -1319 1383 -1386 -1320
		f 4 1387 1388 -1322 1354
		f 4 -1356 -1415 1390 -1324
		f 4 -1336 1357 -1405 1336
		f 4 -1366 -1420 1366 1367
		f 4 -1367 -1422 1368 1369
		f 4 -1369 -1424 1370 1371
		f 4 -1371 -1426 1372 1373
		f 4 -1373 -1428 1374 1375
		f 4 -1375 -1430 1376 1377
		f 4 -1377 -1432 1378 1379
		f 4 -1379 -1434 1380 1381
		f 4 1382 -1350 -1349 -1381
		f 4 1384 1409 -1354 1385
		f 4 -1389 1412 1413 1389
		f 4 -1439 1391 -1357 -1391
		f 4 -1392 -1449 1392 1393
		f 4 -1393 -1451 1394 1395
		f 4 -1395 -1453 1396 1397
		f 4 -1397 -1455 1398 1399
		f 4 -1399 -1457 1400 1401
		f 4 -1401 -1416 1402 1403
		f 4 -1403 -1359 1404 1405
		f 4 1439 -1362 -1361 -1417
		f 4 1417 -1365 -1364 1406
		f 4 -1433 -1385 1407 -1383
		f 4 -1408 -1384 -1353 1408
		f 4 1411 -1388 -1387 1410
		f 4 -1414 1436 1437 1414
		f 4 -1360 1415 -1456 1416
		f 4 1440 1441 -1407 -1363
		f 4 -1418 -1460 1418 1419
		f 4 -1419 -1462 1420 1421
		f 4 -1421 -1464 1422 1423
		f 4 -1423 -1466 1424 1425
		f 4 -1425 -1468 1426 1427
		f 4 -1427 -1470 1428 1429
		f 4 -1429 -1471 1430 1431
		f 4 -1431 -1435 1432 1433
		f 4 -1410 1434 1442 -1411
		f 4 1435 -1445 -1413 -1412
		f 4 -1438 1445 1446 1438
		f 4 1443 -1473 -1437 1444
		f 4 -1447 -1476 1447 1448
		f 4 -1448 1476 1449 1450
		f 4 -1450 1477 1451 1452
		f 4 -1452 1478 1453 1454
		f 4 -1454 -1458 1455 1456
		f 4 1479 -1441 -1440 1457
		f 4 -1442 1480 1458 1459
		f 4 -1459 1481 1460 1461
		f 4 -1461 1482 1462 1463
		f 4 -1463 -1475 1464 1465
		f 4 -1465 -1472 1466 1467
		f 4 -1467 -1444 1468 1469
		f 4 -1469 -1436 -1443 1470
		f 4 1471 1473 -1446 1472
		f 4 -1474 1474 1483 1475
		f 4 -1483 1484 -1477 -1484
		f 4 -1482 1485 -1478 -1485
		f 4 -1481 -1480 -1479 -1486
		f 4 1339 -1300 -1299 -1339
		f 4 -1295 -1294 -1293 -1334
		f 4 888 -718 -40 1486
		f 4 -1488 -876 1488 -859
		f 4 -1489 -875 -872 -1490
		f 4 -866 -624 -622 1490
		f 4 857 -621 -620 1491
		f 4 -691 -689 -408 -1493
		f 4 -614 -855 28 -617
		f 4 842 -383 -382 1493
		f 4 -380 1494 588 839
		f 4 486 -306 -480 1495
		f 4 -259 1496 -418 -423
		f 4 -377 -375 -372 -580
		f 4 1500 1502 21 1501
		f 4 -1502 -445 -19 1508
		f 4 3 1503 -21 -1503
		f 4 1504 1505 -289 -1504
		f 4 -1506 -1520 -1500 1506
		f 4 -1509 1509 1510 1511
		f 4 -1512 1512 -4 -1501
		f 4 -1511 1513 1514 1515
		f 4 -1516 1516 -1505 -1513
		f 4 -1517 1517 1518 1519
		f 4 -1518 -1515 -5 1520
		f 4 1521 -1508 -6 -1514
		f 4 -1510 -9 1522 -1522
		f 4 -270 9 -267 -431
		f 4 -145 -323 -53 -146
		f 4 -133 -229 -32 300
		f 4 109 -57 -56 1523
		f 4 -1525 54 -54 1525
		f 4 1527 1528 -62 62
		f 4 1530 -1534 56 -3
		f 4 1532 -55 55 1531
		f 4 1533 1 -3002 -1532
		f 4 -1529 3004 -2 -1531
		f 4 -20 445 -16 -1523
		f 4 -1635 1535 -1652 1631
		f 4 -1545 1537 1538 -1548
		f 4 1961 1539 1837 -1960
		f 4 -1840 1541 -1843 -1541
		f 4 -1979 1543 1544 1545
		f 4 -1546 1547 1548 -1547
		f 4 -1969 1549 1550 -1544
		f 4 1555 -1549 1551 1552
		f 4 -1553 1553 1554 1861
		f 4 1556 1557 1558 1559
		f 4 1566 1930 -1929 -1566
		f 4 1568 1569 -1815 -1568
		f 4 2192 1570 1571 1572
		f 4 1575 1576 -1803 1577
		f 4 1582 1579 1580 1581
		f 4 1587 1585 1586 -1584
		f 4 -1586 1589 1590 -1589
		f 4 1591 1593 1594 -1593
		f 4 1597 1596 -1599 -1596
		f 4 1599 1601 1602 -1601
		f 4 1606 1607 1608 -1606
		f 4 -2768 1611 -2713 -1610
		f 4 1613 1614 -2300 -1613
		f 4 1616 1617 1618 1619
		f 4 1621 -1664 1620 -1617
		f 3 -1627 1625 1623
		f 3 -69 1627 1626
		f 4 -1536 -1634 1632 -1653
		f 4 -2999 1635 -1655 1634
		f 3 1637 -1658 63
		f 4 1624 1638 1898 -1638
		f 4 -1626 1640 1639 -1660
		f 3 -1628 1641 -1641
		f 3 -1642 69 -1643
		f 4 -1644 -1527 1644 1645
		f 4 1648 1647 -1755 1646
		f 4 1651 1650 -1758 1649
		f 4 -1765 1653 -1761 -1633
		f 4 1633 1654 1655 -1766
		f 3 144 1657 -1657
		f 4 -1622 -1639 65 -1659
		f 4 1658 66 1659 1660
		f 4 1661 1662 1663 -1661
		f 4 1674 1665 1666 -1900
		f 4 -1674 1667 1668 -1667
		f 4 1670 1669 -1901 -1668
		f 4 1673 1671 1672 -1671
		f 4 -1676 -1665 -1663 1676
		f 4 1679 1677 1678 -1662
		f 4 -1680 -1640 1642 -1681
		f 4 1680 70 1682 -1682
		f 4 -1683 71 1684 -1684
		f 4 -1685 72 1686 -1686
		f 4 -1687 73 1688 -1688
		f 4 -1689 74 1690 -1690
		f 4 -1691 75 1692 -1692
		f 4 -1693 76 1694 -1694
		f 4 -1695 77 1696 -1696
		f 4 -1697 78 1698 -1698
		f 4 -1699 79 1700 -1700
		f 4 -1701 80 1702 -1702
		f 4 -1703 81 1704 -1704
		f 4 -1705 82 1706 -1706
		f 4 -1707 83 1708 -1708
		f 4 -1709 84 1710 -1710
		f 4 -1711 85 1712 -1712
		f 4 -1713 86 1714 -1714
		f 4 -1715 87 1716 -1716
		f 4 -1717 88 1718 -1718
		f 4 -1719 89 1720 -1720
		f 4 -1721 90 1722 -1722
		f 4 -1723 91 1724 -1724
		f 4 -1725 92 1726 -1726
		f 4 -1727 93 1728 -1728
		f 4 -1729 94 1730 -1730
		f 4 -1731 95 1732 -1732
		f 4 -1733 96 1734 -1734
		f 4 -1735 97 1736 -1736
		f 4 -1737 98 1738 -1738
		f 4 -1739 99 1740 -1740
		f 4 -1741 100 1742 -1742
		f 4 -1743 101 1744 -1744
		f 4 -1745 102 1746 -1746
		f 4 -1747 103 1748 -1748
		f 4 -1749 104 1750 -1750
		f 4 -1751 105 1752 -1752
		f 4 -1753 106 1643 1753
		f 4 -1754 -1646 1754 1755
		f 4 1757 1756 -1906 -1648
		f 4 -1759 -1651 1652 1759
		f 4 1762 1761 -1912 -1654
		f 4 -1764 1764 1765 1766
		f 4 -1768 -1637 115 1768
		f 4 -1769 116 1770 -1770
		f 4 -1771 117 1772 -1772
		f 4 -1773 118 1774 -1774
		f 4 -1775 119 1776 -1776
		f 4 -1777 120 1778 -1778
		f 4 -1779 121 1780 -1780
		f 4 -1781 122 1782 -1782
		f 4 -1783 123 1784 -1784
		f 4 -1785 124 1786 -1786
		f 4 -1787 125 1788 -1788
		f 4 -1789 126 1790 -1790
		f 4 -1791 127 1792 -1792
		f 4 -1793 128 1794 -1794
		f 4 -1795 129 1796 -1796
		f 4 -1797 130 1798 -1798
		f 4 -1799 131 1800 -1800
		f 4 1801 1802 1803 1797
		f 4 -1577 1806 1805 -1805
		f 4 -1868 1807 -1919 -1576
		f 4 -1809 1809 -1984 1810
		f 4 -1811 2149 1811 -1923
		f 4 1813 1812 -2145 -1812
		f 4 2195 1817 -1865 1818
		f 4 1863 1819 -2973 -1819
		f 4 -1821 1821 1822 1823
		f 4 -1824 1824 1825 1564
		f 4 -1825 1826 1827 1828
		f 4 1829 -1932 -1567 -1826
		f 4 -1829 1830 1832 -1830
		f 4 -1831 1831 -1848 1833
		f 4 2976 1834 -1847 1835
		f 4 -1836 1836 -1946 -1942
		f 4 -1846 1838 -1961 -1838
		f 4 1841 1949 1840 1540
		f 4 -1844 -1542 1845 -1845
		f 4 1844 -1540 -1947 -1949
		f 4 1850 1851 1852 -1850
		f 4 -1849 -1832 -1828 -1851
		f 4 -1852 -1827 -1823 -1854
		f 4 1854 1855 1856 1853
		f 4 -1822 -1864 1857 -1855
		f 4 1858 -2984 1859 -1856
		f 4 -1858 1561 1860 -1859
		f 4 -1862 -1562 1864 -1863
		f 4 1866 1865 2972 -1810
		f 4 -1869 -1578 1870 -1870
		f 4 -1871 -1802 1799 -1872
		f 4 -1581 1873 1872 -1991
		f 4 1874 133 1876 -1876
		f 4 -1877 134 1878 -1878
		f 4 -1879 135 1880 -1880
		f 4 -1881 136 1882 -1882
		f 4 -1883 137 1884 -1884
		f 4 -1885 138 1886 -1886
		f 4 -1887 139 1888 -1888
		f 4 -1889 140 1890 -1890
		f 4 -1891 141 1892 -1892
		f 4 -1893 142 1894 -1894
		f 4 -1895 143 1896 -1896
		f 4 -1618 1897 -1669 -2022
		f 4 -1621 1664 1899 -1898
		f 4 -1902 -1672 -1666 -1903
		f 4 -1675 1675 -1623 -1904
		f 4 -1679 1904 -2033 -1677
		f 4 -1756 1905 1906 1751
		f 4 -1757 1758 1908 -1908
		f 4 -1760 1760 1910 -1910
		f 4 -1914 -1763 1763 -2109
		f 4 -1636 1767 1915 -1915
		f 4 1795 -1804 1804 -1917
		f 4 -1807 1918 1919 -1918
		f 4 -1808 -1867 1921 -1921
		f 4 -1813 -1983 1923 -2146
		f 4 1820 1925 1983 -1820
		f 4 -1927 1928 1929 -1928
		f 4 1931 1933 1934 -1933
		f 4 -1934 -1833 1935 1936
		f 4 1937 1938 1562 -1935
		f 4 -1937 1939 1943 -1938
		f 4 -1940 1940 1941 1942
		f 4 -1945 1945 1946 1962
		f 4 1846 -1842 1842 1947
		f 4 -1948 1843 1948 -1837
		f 4 1951 1848 1952 -1951
		f 4 -1950 -1835 1847 -1952
		f 4 1849 1953 1960 -1953
		f 4 -1853 -1857 1955 -1955
		f 4 -1956 -1860 1957 -1957
		f 4 1954 1958 1959 -1954
		f 4 -1962 -1959 1956 -1963
		f 4 1944 1560 1963 -1943
		f 4 -1964 1964 1965 -1944
		f 4 -1557 1966 -1939 -1966
		f 4 1971 1969 1970 1968
		f 4 -1977 1973 2170 1972
		f 4 1975 1976 -1975 -1543
		f 4 1974 -1973 -1972 1977
		f 4 1542 -1978 1978 1979
		f 4 -1981 -1818 -1925 -1982
		f 4 -1866 1867 1984 -2196
		f 4 1869 1987 1986 -1986
		f 4 -1988 1871 -1582 -1989
		f 4 1988 1990 1991 -1990
		f 4 -1873 1994 1993 -1993
		f 4 1996 1995 -2207 -1874
		f 4 -1580 1875 1997 -1997
		f 4 -1998 1877 -2975 -1999
		f 4 1998 1600 1999 -1996
		f 4 2001 2000 -2208 -2000
		f 4 -1603 2002 -1591 -2002
		f 4 -2004 -1600 2004 2005
		f 4 -2976 1881 2007 -2007
		f 4 -2008 1883 2009 -2009
		f 4 -2010 1885 2011 -2011
		f 4 -2012 1887 2013 -2013
		f 4 -2014 1889 2015 -2015
		f 4 -2016 1891 2017 -2017
		f 4 -2018 1893 2019 -2019
		f 4 -2020 1895 -1619 -2021
		f 4 2021 1900 -2243 2020
		f 4 -1670 2024 2023 -2023
		f 4 -1673 2025 2026 -2025
		f 4 1901 2028 2027 -2026
		f 4 1902 1903 2030 -2030
		f 4 -2031 1622 2032 -2032
		f 4 2034 2033 -2244 -1905
		f 4 -2035 -1678 1681 -2036
		f 4 2035 1683 2037 -2037
		f 4 -2038 1685 2039 -2039
		f 4 -2040 1687 2041 -2041
		f 4 -2042 1689 2043 -2043
		f 4 -2044 1691 2045 -2045
		f 4 -2046 1693 2047 -2047
		f 4 -2048 1695 2049 -2049
		f 4 -2050 1697 2051 -2051
		f 4 -2052 1699 2053 -2053
		f 4 -2054 1701 2055 -2055
		f 4 -2056 1703 2057 -2057
		f 4 -2058 1705 2059 -2059
		f 4 -2060 1707 2061 -2061
		f 4 -2062 1709 2063 -2063
		f 4 -2064 1711 2065 -2065
		f 4 -2066 1713 2067 -2067
		f 4 -2068 1715 2069 -2069
		f 4 -2070 1717 2071 -2071
		f 4 -2072 1719 2073 -2073
		f 4 -2074 1721 2075 -2075
		f 4 -2076 1723 2077 -2077
		f 4 -2078 1725 2079 -2079
		f 4 -2080 1727 2081 -2081
		f 4 -2082 1729 2083 -2083
		f 4 -2084 1731 2085 -2085
		f 4 -2086 1733 2087 -2087
		f 4 -2088 1735 2089 -2089
		f 4 -2090 1737 2091 -2091
		f 4 -2092 1739 2093 -2093
		f 4 -2094 1741 2095 -2095
		f 4 -2096 1743 2097 -2097;
	setAttr ".fc[1000:1499]"
		f 4 -2098 1745 2099 -2099
		f 4 -2100 1747 2101 -2101
		f 4 1909 -2356 2100 -1909
		f 4 -1911 1911 2103 -2103
		f 4 -2358 -1762 1912 2104
		f 4 2110 2109 -2360 -1767
		f 4 -1916 1769 2113 -2113
		f 4 -2114 1771 2115 -2115
		f 4 -2116 1773 2117 -2117
		f 4 -2118 1775 2119 -2119
		f 4 -2120 1777 2121 -2121
		f 4 -2122 1779 2123 -2123
		f 4 -2124 1781 2125 -2125
		f 4 -2126 1783 2127 -2127
		f 4 -2128 1785 2129 -2129
		f 4 -2130 1787 2131 -2131
		f 4 -2132 1789 2133 -2133
		f 4 -2134 1791 2135 -2135
		f 4 -2136 1793 1916 -2137
		f 4 2136 -1806 2137 2971
		f 4 -2138 1917 2138 -2383
		f 4 -2140 -1920 1920 2140
		f 4 -1922 1808 2142 -2142
		f 4 1922 2143 2394 -2143
		f 4 -2147 -1924 1814 2147
		f 4 1815 2148 2197 -2148
		f 4 -2150 -1926 -1565 2150
		f 4 -2151 1565 2151 -1814
		f 4 -2152 1926 1567 1982
		f 4 -1816 -1570 2152 2153
		f 4 -2177 1981 -1817 -2154
		f 4 2155 2154 2175 -2153
		f 4 2157 2156 -2183 -1930
		f 4 -2158 -1931 1932 2158
		f 4 -2159 -1563 2160 -2160
		f 4 2163 2173 1563 2162
		f 4 -2164 2165 2166 2167
		f 4 2169 -1556 -2165 -2168
		f 4 2168 2171 1546 -2170
		f 4 -2169 -2167 -1970 -2171
		f 4 -1974 -1976 -1980 -2172
		f 4 -2173 -2163 -2162 -1967
		f 4 2172 1967 -1971 -2166
		f 4 2164 1862 1980 -2174
		f 4 -2175 -1564 2176 -2176
		f 4 -2156 2177 2178 -2189
		f 4 -2178 -1569 2180 -2180
		f 4 1927 2181 -2191 -2181
		f 4 -2184 -2157 2159 2184
		f 4 -2161 2161 2174 -2186
		f 4 2185 -2155 2186 -2185
		f 4 -2187 2188 2189 -2188
		f 4 -2182 2182 2191 -1573
		f 4 2183 2187 -2193 -2192
		f 4 -2179 2179 2194 -2194
		f 4 -2190 2193 1574 -1571
		f 4 2190 -1572 -1575 -2195
		f 4 1868 2196 1924 -1985
		f 4 -1987 1989 2198 -2198
		f 4 2200 2199 2146 -2199
		f 4 -2201 -1992 1992 -2202
		f 4 2202 -2394 -2399 2201
		f 4 -1994 2204 2203 -2203
		f 4 -1995 2206 2207 -2206
		f 4 -2001 -1590 2208 2402
		f 4 -2209 -1588 2210 -2210
		f 4 -2211 1584 2212 -2212
		f 4 -2213 2214 2215 -2214
		f 4 -2215 2217 2218 -2217
		f 4 -2218 -1585 2220 -2220
		f 4 -2221 1583 -1594 -2222
		f 4 2223 2222 -1595 -1587
		f 4 2225 2224 -2414 -2003
		f 4 -1602 2227 2226 -2226
		f 4 2003 2229 2228 -2228
		f 4 -2006 2006 2231 -2231
		f 4 -2232 2008 2233 -2233
		f 4 -2234 2010 2235 -2235
		f 4 -2236 2012 2237 -2237
		f 4 -2238 2014 2239 -2239
		f 4 -2240 2016 2241 -2241
		f 4 -2242 2018 2242 2022
		f 4 -2034 2036 2245 -2245
		f 4 -2246 2038 2247 -2247
		f 4 -2248 2040 2249 -2249
		f 4 -2250 2042 2251 -2251
		f 4 -2252 2044 2252 2253
		f 4 2254 2255 -2278 2250
		f 4 2258 2259 -2279 2284
		f 4 2257 -2284 2264 -2259
		f 4 -2262 -2029 2029 -2263
		f 4 2262 2031 2243 2263
		f 4 -2261 2238 2266 -2266
		f 4 -2267 2240 -2024 -2268
		f 4 -2027 2268 2269 2267
		f 4 -2028 2271 2270 -2269
		f 4 -2264 2244 2273 -2273
		f 4 -2274 2246 2275 -2275
		f 4 -2276 2248 2277 -2277
		f 4 2278 -2283 2276 2256
		f 4 2265 -2270 2279 -2265
		f 4 -2272 2261 2272 -2281
		f 4 2280 2274 2282 -2282
		f 4 -2260 -2280 -2271 2281
		f 4 2260 2283 -2511 2236
		f 4 -2286 -2257 -2256 -2287
		f 4 2288 2287 -2415 2286
		f 4 -2289 -2255 -2254 -2290
		f 4 -1614 2290 -2417 2289
		f 4 2292 2522 -2421 2291
		f 4 -2295 2295 2296 2297
		f 4 -2294 -2293 2298 -2426
		f 4 -2292 2299 2300 -2427
		f 4 -1615 2303 2302 -2302
		f 4 -2253 2046 2304 -2304
		f 4 -2305 2048 2306 -2306
		f 4 -2307 2050 2308 -2308
		f 4 -2309 2052 2310 -2310
		f 4 -2311 2054 2312 -2312
		f 4 -2313 2056 2314 -2314
		f 4 -2315 2058 2316 -2316
		f 4 -2317 2060 2318 -2318
		f 4 -2319 2062 2320 -2320
		f 4 -2321 2064 2322 -2322
		f 4 -2323 2066 2324 -2324
		f 4 -2325 2068 2326 -2326
		f 4 -2327 2070 2328 -2328
		f 4 -2329 2072 2330 -2330
		f 4 -2331 2074 2332 -2332
		f 4 -2333 2076 2334 -2334
		f 4 -2335 2078 2336 -2336
		f 4 -2337 2080 2338 -2338
		f 4 -2339 2082 2340 -2340
		f 4 -2341 2084 2342 -2342
		f 4 -2343 2086 2344 -2344
		f 4 -2345 2088 2346 -2346
		f 4 -2347 2090 2348 -2348
		f 4 -2349 2092 2350 -2350
		f 4 -2351 2094 2352 -2352
		f 4 -2353 2096 2354 -2354
		f 4 -2355 2098 2355 2102
		f 4 2357 2356 2353 -2104
		f 4 -2105 2105 2358 -2785
		f 4 -2788 -2106 2106 -2790
		f 4 2359 -2793 -2791 2108
		f 4 -2112 2112 2361 -2361
		f 4 -2362 2114 2363 -2363
		f 4 -2364 2116 2365 -2365
		f 4 -2366 2118 2367 -2367
		f 4 -2368 2120 2369 -2369
		f 4 -2370 2122 2371 -2371
		f 4 -2372 2124 2373 -2373
		f 4 -2374 2126 2375 -2375
		f 4 -2376 2128 2377 -2377
		f 4 -2378 2130 2379 -2379
		f 4 -2380 2132 -2974 2380
		f 4 -2382 1573 2382 2383
		f 4 2385 2384 -2968 -2384
		f 4 2386 2387 2388 -2970
		f 4 2390 2389 -2971 -2389
		f 4 -2392 2392 2396 2393
		f 4 -2393 -2391 2395 -2395
		f 4 -2397 -2144 2144 2397
		f 4 2145 -2200 2398 -2398
		f 4 -2204 2399 -2390 2391
		f 4 2401 2209 2400 -2400
		f 4 -2402 -2205 2205 -2403
		f 4 -2216 2404 2403 2967
		f 4 2216 2406 2405 -2405
		f 4 -2408 -1598 2409 -2409
		f 4 -2410 1595 2410 2411
		f 4 2966 1588 2413 -2413
		f 4 -2288 2416 2417 -2416
		f 4 -2420 1612 2420 2603
		f 4 2294 2421 -2524 2293
		f 4 -2423 -2297 2423 2424
		f 4 2426 2531 -2614 -2299
		f 4 -2301 2301 2428 -2428
		f 4 -2303 2305 2430 -2430
		f 4 -2431 2307 2432 -2432
		f 4 -2433 2309 2434 -2434
		f 4 -2435 2311 2436 -2436
		f 4 -2437 2313 2438 -2438
		f 4 -2439 2315 2440 -2440
		f 4 -2441 2317 2442 -2442
		f 4 -2443 2319 2444 -2444
		f 4 -2445 2321 2446 -2446
		f 4 -2447 2323 2448 -2448
		f 4 -2449 2325 2450 -2450
		f 4 -2451 2327 2452 -2452
		f 4 -2453 2329 1578 -2454
		f 4 2459 2461 2462 -2461
		f 4 2463 -2780 2464 -2560
		f 4 2466 -2778 2467 -2563
		f 4 2469 2468 -2564 -2468
		f 4 2471 -1592 2473 -2473
		f 4 -2474 1592 2474 2475
		f 4 -2475 -2223 -1597 1603
		f 4 2477 2566 2476 -2476
		f 4 -2478 -1604 2479 -2479
		f 4 -2480 1604 2481 -2481
		f 4 2485 2486 2487 2484
		f 4 -1616 2489 -2488 2488
		f 4 -2487 2569 -2569 -2489
		f 4 -2483 -1605 2407 -2491
		f 4 2491 2571 -2485 -2484
		f 4 2492 -2587 -2492 2490
		f 4 2494 2496 2498 -2496
		f 4 -2497 -2775 -2225 2497
		f 4 2499 2501 -1608 -2499
		f 4 -2498 -2227 2500 -2500
		f 4 2502 2504 2590 -2502
		f 4 -2501 -2229 2503 -2503
		f 4 -2506 -2230 2230 2506
		f 4 -2507 2232 2508 -2508
		f 4 -2509 2234 2510 -2510
		f 4 -2258 2511 2512 2509
		f 4 -2512 -2285 2285 -2514
		f 4 2414 2514 2515 2513
		f 4 2516 -1609 -2591 -2418
		f 4 -2517 -2291 2418 -2518
		f 4 2518 2581 1605 2517
		f 4 2520 2642 2519 -2519
		f 4 -2521 -2419 2419 2521
		f 4 -2525 -2422 -2298 2525
		f 4 2422 2608 2526 -2526
		f 4 2528 2527 -2610 -2425
		f 4 -2424 2529 -2612 -2529
		f 4 -2530 -2296 2425 -2531
		f 4 2429 2532 -2617 -2429
		f 4 2431 2534 2533 -2533
		f 4 2433 2536 2535 -2535
		f 4 2435 2538 2537 -2537
		f 4 2437 2539 2540 -2539
		f 4 2439 2541 2542 -2540
		f 4 2441 2544 2543 -2542
		f 4 2443 2546 2545 -2545
		f 4 2445 2548 2547 -2547
		f 4 2447 2550 2549 -2549
		f 4 2449 2552 2551 -2551
		f 4 2451 2554 2553 -2553
		f 4 -2555 2453 2454 2555
		f 4 -2557 2455 2456 2557
		f 4 2458 2558 -2620 2457
		f 4 -2561 -2465 2465 2561
		f 4 -2629 -2469 2470 2564
		f 4 2472 -2477 2565 -2565
		f 4 -2568 2482 2483 -2490
		f 4 2570 2572 -2486 -2572
		f 4 -2574 -2570 -2573 2574
		f 4 2576 2577 2578 -2683
		f 4 -2584 2579 -2642 -2579
		f 4 -2581 2582 -2600 -2582
		f 4 2585 -2639 2586 -2585
		f 4 2592 -2577 -2576 -2586
		f 4 -2493 2493 2587 2591
		f 4 -2505 2588 -2515 2415
		f 4 -2589 -2504 2505 2589
		f 4 2507 -2513 -2516 -2590
		f 4 2495 -1607 -2599 -2588
		f 4 -2593 2594 2595 -2594
		f 4 -2595 2584 -2592 -2597
		f 4 2598 2599 2597 2596
		f 4 2601 -2578 2593 -2603
		f 4 -2601 -2583 2583 -2602
		f 4 2600 2602 -2596 -2598
		f 4 -2605 -2523 2523 2605
		f 4 2524 2607 2606 -2606
		f 4 -2528 2611 2612 -2611
		f 4 2530 2613 2614 -2613
		f 4 -2532 2427 2615 -2695
		f 4 -2556 2556 2618 -2618
		f 4 -2559 2460 2620 -2674
		f 4 -2622 -2463 2559 2622
		f 4 2560 2623 -2675 -2623
		f 4 -2625 -2562 2562 2625
		f 4 -2626 2563 2626 -2677
		f 4 2628 2627 -2678 -2627
		f 4 2629 2630 -2628 -2566
		f 4 -2567 2632 2631 -2630
		f 4 2478 2633 2634 -2633
		f 4 2480 2636 2635 -2634
		f 4 2637 -2482 2567 1615
		f 4 -2638 2568 2573 -2637
		f 4 -2571 2638 2639 -2680
		f 4 2575 2640 -2681 -2640
		f 4 -2686 -2580 2580 -2520
		f 4 -2522 2645 2644 -2644
		f 4 -2646 -2604 2604 2646
		f 4 -2608 -2527 2647 -2690
		f 4 -2609 2609 2648 -2693
		f 4 -2650 -2616 2616 2650
		f 4 -2534 2652 2651 -2651
		f 4 -2536 2654 2653 -2653
		f 4 -2538 2656 2655 -2655
		f 4 -2541 2657 2658 -2657
		f 4 -2543 2659 2660 -2658
		f 4 -2544 2662 2661 -2660
		f 4 -2546 2664 2663 -2663
		f 4 -2548 2666 2665 -2665
		f 4 -2550 2668 2667 -2667
		f 4 -2552 2670 2669 -2669
		f 4 -2554 2617 -2699 -2671
		f 4 -2558 2619 2672 -2672
		f 4 2624 2675 2768 -2624
		f 4 -2575 2679 2678 -2636
		f 4 -2641 2682 2683 -2682
		f 4 2641 2684 2763 -2684
		f 4 2772 -2643 2643 -2714
		f 4 -2647 -2607 2687 -2687
		f 4 -2688 2689 2690 -2689
		f 4 2692 2691 -2716 -2648
		f 4 2610 2693 -2717 -2649
		f 4 -2615 2694 2695 -2694
		f 4 2649 2696 2697 -2696
		f 4 2700 2699 -2670 2698
		f 4 2701 -2772 2703 -2703
		f 4 -2771 2705 -2719 2704
		f 4 -2769 2708 -2722 2707
		f 4 2709 -2749 -2709 -1611
		f 4 1609 2711 2710 -2710
		f 4 2715 2714 -2727 -2691
		f 4 -2652 2717 -2729 -2697
		f 4 -2700 2702 -2742 -2668
		f 4 -2706 2706 2720 -2720
		f 4 -2723 2712 2713 2723
		f 4 -2645 2686 2724 -2724
		f 4 2688 2725 -2750 -2725
		f 4 2728 2752 -2715 2727
		f 4 -2718 -2654 2730 -2730
		f 4 -2731 -2656 2732 -2732
		f 4 -2733 -2659 2734 -2734
		f 4 -2735 -2661 2736 -2736
		f 4 -2737 -2662 2738 -2738
		f 4 -2739 -2664 2740 -2740
		f 4 -2741 -2666 2741 2742
		f 4 -2743 -2704 2718 2743
		f 4 2719 2744 2739 -2744
		f 4 -2721 2721 2746 -2746
		f 4 2748 2747 -2759 -2747
		f 4 2750 -2712 2722 2749
		f 4 2726 2751 -2762 -2726
		f 4 2729 2753 -2752 -2753
		f 4 2731 2755 2754 -2754
		f 4 2733 2756 2759 -2756
		f 4 2735 2757 2758 -2757
		f 4 2737 -2745 2745 -2758
		f 4 -2760 -2748 -2711 2760
		f 4 -2751 2761 -2755 -2761
		f 4 -2728 -2692 2716 -2698
		f 4 2762 -2631 2764 -2764
		f 4 -2632 2765 2681 -2765
		f 4 -2635 -2679 2680 -2766
		f 4 2767 2766 2677 -2763
		f 4 2674 -2708 -2707 -2770
		f 4 2770 -2621 2621 2769
		f 4 2771 -2673 2673 -2705
		f 4 2671 -2702 -2701 -2619
		f 4 1610 -2676 2676 -2767
		f 4 -1612 -2685 2685 -2773
		f 4 2773 -2412 2412 2774
		f 4 -2495 -2494 2408 -2774
		f 4 -2470 2775 2219 2776
		f 4 -2777 2221 -2472 -2471
		f 4 2777 -2800 -2219 -2776
		f 4 -2467 -2466 2778 -2801
		f 4 -2807 -2460 -2459 2780
		f 4 -2458 -2457 2781 -2858
		f 4 -2809 -2456 -2455 2782
		f 4 -1579 2783 -2862 -2783
		f 4 -2786 2786 2787 2788
		f 4 2107 2790 2791 -2832
		f 4 -2381 2794 2795 -2794
		f 4 -2795 2381 -2404 2796
		f 4 -2406 2798 2797 -2797
		f 4 2799 2800 -2854 -2407
		f 4 -2802 -2779 2779 2802
		f 4 -2804 -2464 -2462 -2805
		f 4 2806 2805 -2856 2804
		f 4 2808 2807 -2860 -2782
		f 4 -2810 -2784 2331 -2811
		f 4 2810 2333 2812 -2812
		f 4 -2813 2335 2814 -2814
		f 4 -2815 2337 2816 -2816
		f 4 -2817 2339 2818 -2818
		f 4 -2819 2341 2820 -2820
		f 4 -2821 2343 2822 -2822
		f 4 -2823 2345 2824 -2824
		f 4 -2825 2347 2826 -2826
		f 4 -2827 2349 2828 -2828
		f 4 2827 -2359 -2787 2829
		f 4 1536 2785 2863 -2831
		f 4 2789 2831 2904 -2865
		f 4 2832 2866 -2866 2792
		f 4 2833 2362 2835 -2835
		f 4 -2836 2364 2837 -2837
		f 4 -2838 2366 2839 -2839
		f 4 -2840 2368 2841 -2841
		f 4 -2842 2370 2843 -2843
		f 4 -2844 2372 2845 -2845
		f 4 -2846 2374 2847 -2847
		f 4 -2848 2376 2849 -2849
		f 4 -2850 2378 2793 2850
		f 4 -2796 -2798 2852 -2852
		f 4 -2799 2853 2801 -2885
		f 4 2803 2854 -2886 -2803
		f 4 -2781 2857 2858 -2857
		f 4 2861 2860 -2888 -2808
		f 4 -1537 2862 2825 -2830
		f 4 2834 2868 2867 -2867
		f 4 2836 2870 2869 -2869
		f 4 2838 2872 2871 -2871
		f 4 2840 2874 2873 -2873
		f 4 2842 2876 2875 -2875
		f 4 2844 2878 2877 -2877
		f 4 2846 2880 2879 -2879
		f 4 2848 2882 2881 -2881
		f 4 -2883 -2851 2851 2883
		f 4 -2855 2855 2909 -2909
		f 4 2859 2886 -2913 -2859
		f 4 -2861 2809 2889 -2889
		f 4 2811 2891 2890 -2890
		f 4 2813 2893 2892 -2892
		f 4 2815 2895 2894 -2894
		f 4 2817 2897 2896 -2896
		f 4 2819 2899 2898 -2898
		f 4 2821 2901 2900 -2900
		f 4 2823 -2863 2830 -2902
		f 4 -2903 -2789 2864 2903
		f 4 -2906 -2792 2865 2906
		f 4 -2884 2907 2908 -2931
		f 4 -2853 2884 2885 -2908
		f 4 -2911 -2806 2856 2911
		f 4 2887 2913 -2934 -2887
		f 4 2902 2914 -2901 -2864
		f 4 -2905 2905 2948 -2936
		f 4 -2868 2916 2915 -2907
		f 4 -2870 2918 2917 -2917
		f 4 -2872 2920 2919 -2919
		f 4 -2874 2922 2921 -2921
		f 4 -2876 2924 2923 -2923
		f 4 -2878 2926 2925 -2925
		f 4 -2880 2928 2927 -2927
		f 4 -2882 2930 2929 -2929
		f 4 2910 2931 -2930 -2910
		f 4 -2912 2912 2932 -2937
		f 4 2888 2934 -2939 -2914
		f 4 -2933 2933 2937 -2961
		f 4 -2891 2939 -2962 -2935
		f 4 -2893 2941 2940 -2940
		f 4 -2895 2943 2942 -2942
		f 4 -2897 2945 2944 -2944
		f 4 -2899 -2915 2946 -2946
		f 4 -2947 -2904 2935 2947
		f 4 -2916 2950 2949 -2949
		f 4 -2918 2952 2951 -2951
		f 4 -2920 2954 2953 -2953
		f 4 -2922 2956 2955 -2955
		f 4 -2924 2958 2957 -2957
		f 4 -2926 2959 2960 -2959
		f 4 -2928 -2932 2936 -2960
		f 4 -2938 2938 2962 -2958
		f 4 2961 2963 -2956 -2963
		f 4 -2964 -2941 2964 -2954
		f 4 -2965 -2943 2965 -2952
		f 4 -2966 -2945 -2948 -2950
		f 4 -2833 -2110 2360 -2834
		f 4 -2829 2351 -2357 2784
		f 4 -2411 1598 -2224 -2967
		f 4 2969 2968 2213 -2385
		f 4 2970 -2401 2211 -2969
		f 4 -2388 -2141 2141 -2396
		f 4 -2386 -2139 2139 -2387
		f 4 -2149 1816 -2197 1985
		f 4 -2972 -1574 2973 2134
		f 4 -2111 -1656 1914 2111
		f 4 -2108 -2107 -1913 1913
		f 4 -2005 2974 1879 2975
		f 4 -1941 -1936 -1834 -2977
		f 4 -2102 1749 -1907 1907
		f 4 2979 -1561 2980 -2987
		f 4 -2979 -1558 -1965 -2980
		f 4 -2981 -1958 2982 -2982
		f 4 -2983 2983 2984 2987
		f 4 -1861 -1555 2985 -2985
		f 4 2988 2989 2990 2978
		f 4 2986 2981 2991 -2989
		f 4 2992 2993 2994 -2990
		f 4 -2992 -2988 2995 -2993
		f 4 -2986 -1554 2996 -2996
		f 4 -1552 -1539 -2994 -2997
		f 4 -2995 -1538 -1551 2997
		f 4 -2998 2977 -1559 -2991
		f 4 1950 -1839 1839 -1841
		f 4 -1899 -1620 -1897 1656
		f 4 -1875 -1583 -1801 132
		f 4 -1649 1629 1630 -1650
		f 4 -1645 53 1628 -1647
		f 4 1636 2998 2999 -1528
		f 4 -1632 -1631 -3003 3003;
	setAttr ".fc[1500:1503]"
		f 4 3000 -1630 -1629 -1533
		f 4 -3001 3001 -1535 3002
		f 4 -3004 1534 -3005 -3000
		f 4 -2978 -1550 -1968 -1560;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Base" -p "Bird_Statue";
	rename -uid "8D74DC2E-466E-CA5B-8F42-B3BDE9B96A86";
	setAttr ".rp" -type "double3" -8.70001649679884 0.25891874969754836 0.074663497108009569 ;
	setAttr ".sp" -type "double3" -8.70001649679884 0.25891874969754836 0.074663497108009569 ;
createNode mesh -n "BaseShape" -p "Base";
	rename -uid "05CB0C6B-4156-C260-9CDB-7996DDC65F7B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  -6.13968658 -0.014095515 -0.75723779 -6.52206993 -0.014095515 -1.50770688
		 -7.11764574 -0.014095515 -2.10328245 -7.86811495 -0.014095515 -2.48566556 -8.70001602 -0.014095515 -2.61742544
		 -9.53191757 -0.014095515 -2.48566532 -10.28238583 -0.014095515 -2.10328197 -10.87796116 -0.014095515 -1.5077064
		 -11.26034451 -0.014095515 -0.75723749 -11.39210415 -0.014095515 0.074663498 -11.26034451 -0.014095515 0.90656453
		 -10.87796116 -0.014095515 1.65703321 -10.28238583 -0.014095515 2.2526083 -9.53191662 -0.014095515 2.63499117
		 -8.70001602 -0.014095515 2.76675129 -7.86811543 -0.014095515 2.63499117 -7.11764669 -0.014095515 2.2526083
		 -6.52207136 -0.014095515 1.65703309 -6.13968849 -0.014095515 0.90656435 -6.0079283714 -0.014095515 0.074663498
		 -6.13968658 0.53193307 -0.75723779 -6.52206993 0.53193307 -1.50770688 -7.11764574 0.53193307 -2.10328245
		 -7.86811495 0.53193307 -2.48566556 -8.70001602 0.53193307 -2.61742544 -9.53191757 0.53193307 -2.48566532
		 -10.28238583 0.53193307 -2.10328197 -10.87796116 0.53193307 -1.5077064 -11.26034451 0.53193307 -0.75723749
		 -11.39210415 0.53193307 0.074663498 -11.26034451 0.53193307 0.90656453 -10.87796116 0.53193307 1.65703321
		 -10.28238583 0.53193307 2.2526083 -9.53191662 0.53193307 2.63499117 -8.70001602 0.53193307 2.76675129
		 -7.86811543 0.53193307 2.63499117 -7.11764669 0.53193307 2.2526083 -6.52207136 0.53193307 1.65703309
		 -6.13968849 0.53193307 0.90656435 -6.0079283714 0.53193307 0.074663498 -8.70001602 -0.014095515 0.074663498
		 -8.70001602 0.53193307 0.074663498;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2753D91F-4C59-10A9-E832-A6A8FC06506F";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "028B94C5-4E40-980D-2864-7582BC06CD2A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "570E9648-4400-3F89-4CBA-7C8314F71107";
createNode displayLayerManager -n "layerManager";
	rename -uid "E9737A72-4CEE-31DD-73ED-F0B6CEB51ED3";
createNode displayLayer -n "defaultLayer";
	rename -uid "A1261CEC-49CC-4A3B-48BD-55B6D9A6AA42";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E6EAB6D0-4AD0-C383-8A96-EC9C3641F24E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "24A28881-49E7-7090-58EC-3C86A497C3E2";
	setAttr ".g" yes;
createNode phong -n "LowFBXASC032polyFBXASC032skull_ncl1_2";
	rename -uid "BC3FE0AD-4797-F772-173A-5DB35B8E8F23";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "LowFBXASC032polyFBXASC032skullSG";
	rename -uid "9CB1408B-432A-1D49-C321-319F002E75F8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "4BAB819E-4AAE-E5F4-FFE6-44BAF5037388";
createNode groupId -n "groupId1";
	rename -uid "43E506F7-458F-842C-FBAD-31B6EBD4AA4E";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EE9AE9C3-4328-73A2-2D49-DDAA9CB962D3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1279\n            -height 696\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1279\\n    -height 696\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1279\\n    -height 696\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DDEE4E54-4B9F-4B3F-FDE4-05BE7C2204C2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode shadingEngine -n "Saxo:SaxoSG";
	rename -uid "EA1BA0D2-4793-0CE7-0AC1-549D5A031AE4";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "Saxo:materialInfo1";
	rename -uid "B4EAFC0A-4B7D-E915-0B62-A29F3CBBC47F";
createNode lambert -n "Saxo:SaxoSG1";
	rename -uid "8337FC22-4BBB-A630-2EA5-77A40F59EB92";
createNode groupId -n "groupId6";
	rename -uid "EDD40181-4122-5C1B-3CEB-6FA7965D5EA9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "008E6772-443E-BF21-D24F-3D9BCDD0AA13";
	setAttr ".ihi" 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "6A44094A-42F8-D99F-F1F2-5EBC32BC0485";
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 0.28304891064001403 0.088366407115482409 -1.0802000697129459 0
		 -0.22312702111017163 0.97455756813076289 0.021257442215712921 0 0.9414690637966443 0.2097959351616781 0.26385918119994767 0
		 1.6894706406531539 0.34477493961292094 -1.0330909851108332 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.23641695 5.3759723 -0.79079586 ;
	setAttr ".rs" 65105;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.0099999997764825821;
	setAttr ".cbn" -type "double3" -0.37921873094243375 4.7431875495714255 -1.240646569036518 ;
	setAttr ".cbx" -type "double3" 1.1522225442413463 6.1379545206084245 -0.063968108566090809 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "C600C5DD-4AAE-C156-A136-48A184D866EF";
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 0.96427494929097624 -0.19872802311346813 -0.17515991264926495 0
		 0.21360585690018677 0.97437689152017748 0.070442963945402656 0 0.15667278023901343 -0.10534156872236733 0.98201669732815067 0
		 -1.1367026080807121 -0.057428932204921013 -0.43626165664660999 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.23641695 5.3759723 -0.79079586 ;
	setAttr ".rs" 44399;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.0099999997764825821;
	setAttr ".cbn" -type "double3" -0.88931773587571761 4.9086505652719721 -2.280234523407727 ;
	setAttr ".cbx" -type "double3" 0.24267931755480854 6.1723688700448545 -0.59447730654693998 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "BDDC049F-4A80-9AAE-AA78-6C80D70FED1F";
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 0.99687458922877192 0.078516592096613755 0.0087291531949667996 0
		 -0.078431502492386021 0.97040052693712509 0.22841041293456119 0 0.0094632323628913821 -0.22838117717028231 0.97352580096654961 0
		 0.24975099770980452 0.070691015445217692 -1.2836024993890658 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.23641695 5.3759723 -0.79079586 ;
	setAttr ".rs" 59269;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.0099999997764825821;
	setAttr ".cbn" -type "double3" -1.7454179432939614 4.5445628104957558 -1.3878046818889394 ;
	setAttr ".cbx" -type "double3" -0.31962525243798573 6.0738384978924165 -0.32707079813507056 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "FF350363-4B73-A2A0-1F6B-AD9320A24C98";
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 0.93801943487811656 0.023307128407466612 0.13290984464715874 0
		 1.2143064331837653e-17 0.98497012466578215 -0.17272479126018256 0 -0.14238835546811668 0.17096487572082367 0.97493413495315084 0
		 -0.1014861878139651 0.15376692086863908 0.99718841982498763 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.23641695 5.3759723 -0.79079586 ;
	setAttr ".rs" 40980;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.0099999997764825821;
	setAttr ".cbn" -type "double3" -0.80256353525774493 4.5741772356072614 -0.73009936590717661 ;
	setAttr ".cbx" -type "double3" 0.21333938125821808 6.0331013022179327 0.68151975503560225 ;
createNode polySphere -n "polySphere1";
	rename -uid "4AAAD274-4405-ADA9-C139-A893E773E8E0";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode phong -n "Finch_ZSpheres2_ncl1_2";
	rename -uid "6C5B3CBD-4332-569A-FF3A-468A7D1C9116";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "Finch_ZSpheres2SG";
	rename -uid "CCE75AE9-489F-D07B-6DAC-4A895B1C5A39";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "CB1663E5-4136-7792-380C-288B72C96313";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 17 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId6.id" "Mouth_pieceShape.iog.og[0].gid";
connectAttr "Saxo:SaxoSG.mwc" "Mouth_pieceShape.iog.og[0].gco";
connectAttr "groupId7.id" "SaxophoneShape.iog.og[0].gid";
connectAttr "Saxo:SaxoSG.mwc" "SaxophoneShape.iog.og[0].gco";
connectAttr "polyExtrudeFace1.out" "pPlaneShape2.i";
connectAttr "polyExtrudeFace2.out" "pPlaneShape3.i";
connectAttr "polyExtrudeFace3.out" "pPlaneShape4.i";
connectAttr "polyExtrudeFace4.out" "pPlaneShape1.i";
connectAttr "polySphere1.out" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LowFBXASC032polyFBXASC032skullSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Saxo:SaxoSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finch_ZSpheres2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LowFBXASC032polyFBXASC032skullSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Saxo:SaxoSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finch_ZSpheres2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "LowFBXASC032polyFBXASC032skull_ncl1_2.oc" "LowFBXASC032polyFBXASC032skullSG.ss"
		;
connectAttr "LowFBXASC032polyFBXASC032skullSG.msg" "materialInfo1.sg";
connectAttr "LowFBXASC032polyFBXASC032skull_ncl1_2.msg" "materialInfo1.m";
connectAttr "Saxo:SaxoSG1.oc" "Saxo:SaxoSG.ss";
connectAttr "groupId6.msg" "Saxo:SaxoSG.gn" -na;
connectAttr "groupId7.msg" "Saxo:SaxoSG.gn" -na;
connectAttr "Mouth_pieceShape.iog.og[0]" "Saxo:SaxoSG.dsm" -na;
connectAttr "SaxophoneShape.iog.og[0]" "Saxo:SaxoSG.dsm" -na;
connectAttr "Saxo:SaxoSG.msg" "Saxo:materialInfo1.sg";
connectAttr "Saxo:SaxoSG1.msg" "Saxo:materialInfo1.m";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "pPlaneShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace2.ip";
connectAttr "pPlaneShape3.wm" "polyExtrudeFace2.mp";
connectAttr "polySurfaceShape3.o" "polyExtrudeFace3.ip";
connectAttr "pPlaneShape4.wm" "polyExtrudeFace3.mp";
connectAttr "|Planta|pPlane1|polySurfaceShape4.o" "polyExtrudeFace4.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeFace4.mp";
connectAttr "Finch_ZSpheres2_ncl1_2.oc" "Finch_ZSpheres2SG.ss";
connectAttr "Finch_ZSpheres2SG.msg" "materialInfo2.sg";
connectAttr "Finch_ZSpheres2_ncl1_2.msg" "materialInfo2.m";
connectAttr "LowFBXASC032polyFBXASC032skullSG.pa" ":renderPartition.st" -na;
connectAttr "Saxo:SaxoSG.pa" ":renderPartition.st" -na;
connectAttr "Finch_ZSpheres2SG.pa" ":renderPartition.st" -na;
connectAttr "LowFBXASC032polyFBXASC032skull_ncl1_2.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "Saxo:SaxoSG1.msg" ":defaultShaderList1.s" -na;
connectAttr "Finch_ZSpheres2_ncl1_2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "SkullShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "sweepShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "sweepShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "sweepShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "sweepShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MarcoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "PictureShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BirdShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BaseShape.iog" ":initialShadingGroup.dsm" -na;
// End of OBJETOS.ma
