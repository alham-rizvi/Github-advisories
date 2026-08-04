#!/usr/bin/env bash
set -euo pipefail

log_file="daily-commits.log"
today="$(TZ=Asia/Kolkata date '+%Y-%m-%d')"

if [[ ! -f "$log_file" ]]; then
  : > "$log_file"
fi

if grep -q "^${today}:" "$log_file"; then
  awk -v today="$today" '
    $0 ~ "^" today ":" {
      split($0, parts, ":");
      count = parts[2] + 1;
      sub(/^[^:]+:/, today ":", $0);
      printf "%s: %d\n", today, count;
      found=1;
      next;
    }
    { print }
    END {
      if (!found) {
        print today ": 1"
      }
    }
  ' "$log_file" > "$log_file.tmp" && mv "$log_file.tmp" "$log_file"
else
  printf '%s\n' "$today: 1" >> "$log_file"
fi

printf 'Updated %s\n' "$log_file"
cat "$log_file"
