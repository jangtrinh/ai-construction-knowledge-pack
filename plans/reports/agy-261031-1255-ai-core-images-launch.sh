#!/bin/zsh
# Launches the Antigravity (agy) headless image worker for CC1 chapter VII AI core images (43–46).
cd /Users/jangtrinh/Products/cc1
R=/Users/jangtrinh/Products/cc1/plans/reports
agy -p "$(cat $R/agy-261031-1255-ai-core-images-brief.md)" \
  --model gemini-3.8-flash-high \
  --add-dir /Users/jangtrinh/Products/cc1 \
  --dangerously-skip-permissions \
  --print-timeout 60m \
  --log-file $R/agy-261031-1255-ai-core-images.log \
  2>&1 | tee $R/agy-261031-1255-ai-core-images.out
echo "AGY_EXIT=$pipestatus[1]" | tee -a $R/agy-261031-1255-ai-core-images.out
