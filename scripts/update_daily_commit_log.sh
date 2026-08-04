#!/usr/bin/env bash
set -euo pipefail

log_file="daily-commits.log"
today="$(TZ=Asia/Kolkata date '+%Y-%m-%d')"

if [[ ! -f "$log_file" ]]; then
  : > "$log_file"
fi

commit_count=$(TZ=Asia/Kolkata git log --since="$today 00:00:00" --pretty=format:%H 2>/dev/null | wc -l | tr -d ' ')

if [[ "$commit_count" -eq 0 ]]; then
  entry="$today: 0 (no commits today)"
else
  entry="$today: $commit_count"
fi

if grep -q "^${today}:" "$log_file"; then
  awk -v today="$today" -v entry="$entry" '
    $0 ~ "^" today ":" {
      print entry;
      found=1;
      next;
    }
    { print }
    END {
      if (!found) {
        print entry
      }
    }
  ' "$log_file" > "$log_file.tmp" && mv "$log_file.tmp" "$log_file"
else
  printf '%s\n' "$entry" >> "$log_file"
fi

printf 'Updated %s\n' "$log_file"
cat "$log_file"
