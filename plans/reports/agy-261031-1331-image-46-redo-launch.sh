#!/bin/zsh
# Relaunches agy to fix image 46 (screen text and wall logo).
cd /Users/jangtrinh/Products/cc1
R=/Users/jangtrinh/Products/cc1/plans/reports
agy -p "$(cat $R/agy-261031-1331-image-46-redo-brief.md)" \
  --model gemini-3.8-flash-high \
  --add-dir /Users/jangtrinh/Products/cc1 \
  --dangerously-skip-permissions \
  --print-timeout 30m \
  --log-file $R/agy-261031-1331-image-46-redo.log \
  2>&1 | tee $R/agy-261031-1331-image-46-redo.out
echo "AGY_EXIT=$pipestatus[1]" | tee -a $R/agy-261031-1331-image-46-redo.out
