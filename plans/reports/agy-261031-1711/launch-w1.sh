#!/bin/zsh
# Launches agy worker w1 for the CC1 component-spec image set.
cd /Users/jangtrinh/Products/cc1
D=/Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1711
agy -p "$(cat $D/brief-w1.md)" --model gemini-3.8-flash-high --add-dir /Users/jangtrinh/Products/cc1 \
  --dangerously-skip-permissions --print-timeout 150m --log-file $D/w1.log 2>&1 | tee $D/w1.out
echo "AGY_EXIT=$pipestatus[1]" | tee -a $D/w1.out
