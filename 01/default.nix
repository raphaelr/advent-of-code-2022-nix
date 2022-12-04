with import ../lib;
let
  input = builtins.readFile ./input.txt;
  lines = splitString "\n" input;
  addLast = list: val: (take ((builtins.length list)-1) list) ++ [(last list + val)];
  sums = foldl (seed: line:
    if builtins.stringLength line == 0
      then seed ++ [0] 
      else addLast seed (toInt line)
    ) [0] lines;
  max = foldl ({i, maxIdx, maxVal}@seed: sum:
    if sum > maxVal
      then {
        i = i+1;
        maxIdx = i;
        maxVal = sum;
      }
      else seed // {
        i = i+1;
      }) { i = 0; maxIdx = -1; maxVal = -1; } sums;

in
max
