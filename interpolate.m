(* ::Package:: *)

SetDirectory[NotebookDirectory[]];
theory="TTT"
EOS="EEE"
downsample=1;
newfull=Import[""<>ToString[theory]<>"_"<>ToString[EOS]<>"_full_data.dat"];
alphaA=Table[{{newfull[[i,5]],newfull[[i,7]],newfull[[i,8]]},newfull[[i,1]]},{i,3,Length[newfull], downsample}];
betaA=Table[{{newfull[[i,5]],newfull[[i,7]],newfull[[i,8]]},newfull[[i,2]]},{i,3,Length[newfull], downsample}];
kappaA=Table[{{newfull[[i,5]],newfull[[i,7]],newfull[[i,8]]},newfull[[i,3]]},{i,3,Length[newfull], downsample}];


alphaA=Table[{{newfull[[i,5]],newfull[[i,7]],newfull[[i,8]]},newfull[[i,1]]},{i,3,Length[newfull], downsample}];
betaA=Table[{{newfull[[i,5]],newfull[[i,7]],newfull[[i,8]]},newfull[[i,2]]},{i,3,Length[newfull], downsample}];
kappaA=Table[{{newfull[[i,5]],newfull[[i,7]],newfull[[i,8]]},newfull[[i,3]]},{i,3,Length[newfull], downsample}];


\[Alpha]A=Interpolation[alphaA,InterpolationOrder->1][x,y,z]


\[Beta]A=Interpolation[betaA,InterpolationOrder->1][x,y,z]


\[Kappa]A=Interpolation[kappaA,InterpolationOrder->1][x,y,z]
