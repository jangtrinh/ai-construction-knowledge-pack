#!/bin/zsh
# Launches agy fix worker for the CC1 AI core deep image set.
cd /Users/jangtrinh/Products/cc1
D=/Users/jangtrinh/Products/cc1/plans/reports/agy-261031-1346
agy -p "$(cat $D/brief-fix.md)" --model gemini-3.8-flash-high --add-dir /Users/jangtrinh/Products/cc1 \
  --dangerously-skip-permissions --print-timeout 150m --log-file $D/fix.log 2>&1 | tee $D/fix.out
echo "AGY_EXIT=$pipestatus[1]" | tee -a $D/fix.out
