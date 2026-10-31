#!/bin/zsh
# Launches the Antigravity (agy) headless image worker for the enterprise open-linear-site chapter (L1–L8 + blueprint).
cd <project-root>
R=plans/reports
agy -p "$(cat $R/agy-261029-2225-open-site-images-brief.md)" \
  --model gemini-3.8-flash-high \
  --add-dir <project-root> \
  --dangerously-skip-permissions \
  --print-timeout 60m \
  --log-file $R/agy-261029-2225-open-site-images.log \
  2>&1 | tee $R/agy-261029-2225-open-site-images.out
echo "AGY_EXIT=$pipestatus[1]" | tee -a $R/agy-261029-2225-open-site-images.out
