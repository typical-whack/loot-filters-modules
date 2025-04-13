#!/bin/bash

rm -f filter.rs2f
cat module_order.txt | while read line || [[ -n $line ]]; do
  echo "meta { name = \"Joe's filter\"; }" >> filter.rs2f
  cat modules/$line.rs2f >> filter.rs2f
done

rm -f default-filter.rs2f
cat module_order.txt | while read line || [[ -n $line ]]; do
  echo "meta { name = \"[default: Joe's filter]\"; }" >> default-filter.rs2f
  cat modules/$line.rs2f >> default-filter.rs2f
done
