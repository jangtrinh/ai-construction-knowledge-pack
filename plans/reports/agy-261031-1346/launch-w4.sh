#!/bin/zsh
# Launches agy worker w4 for the CC1 AI core deep image set.
cd /Users/jangtrinh/Products/cc1
D=/Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1346
agy -p "$(cat $D/brief-w4.md)" --model gemini-3.8-flash-high --add-dir /Users/jangtrinh/Products/cc1 \
  --dangerously-skip-permissions --print-timeout 150m --log-file $D/w4.log 2>&1 | tee $D/w4.out
echo "AGY_EXIT=$pipestatus[1]" | tee -a $D/w4.out
