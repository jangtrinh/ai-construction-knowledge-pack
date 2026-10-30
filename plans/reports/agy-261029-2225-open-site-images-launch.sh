#!/bin/zsh
# Launches the Antigravity (agy) headless image worker for the CC1 open-linear-site chapter (L1–L8 + blueprint).
cd /Users/jangtrinh/Products/cc1
R=/Users/jangtrinh/Products/cc1/plans/reports
agy -p "$(cat $R/agy-261029-2225-open-site-images-brief.md)" \
  --model gemini-3.8-flash-high \
  --add-dir /Users/jangtrinh/Products/cc1 \
  --dangerously-skip-permissions \
  --print-timeout 60m \
  --log-file $R/agy-261029-2225-open-site-images.log \
  2>&1 | tee $R/agy-261029-2225-open-site-images.out
echo "AGY_EXIT=$pipestatus[1]" | tee -a $R/agy-261029-2225-open-site-images.out
