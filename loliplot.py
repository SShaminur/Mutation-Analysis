#!/usr/bin/env python

from collections import defaultdict
result = defaultdict(str)
for line in open("input.txt").readlines():
  line = line.strip()
  result[line[:2]] = "/".join([result[line[:2]],line[-1]])
with open("output.txt","a") as file:
  for first,second in result.items():
    file.write(first+second[1:]+"\n")
