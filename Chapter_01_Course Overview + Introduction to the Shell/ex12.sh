# Modify the flaky test script from the lecture to accept the test command as an argument instead of hardcoding cargo test my_test. 
# (Hint: $1 or $@). See Special Parameters.

#!/bin/bash
set -euo pipefail

LOGFILE="test_runs_$(date +%s).log"
echo "Logging to $LOGFILE"

RUN=1
while "$@" > "$LOGFILE" 2>&1; do
    echo "Run $RUN passed"
    ((RUN++))
done

echo "Failed on run $RUN"
tail -n 20 "$LOGFILE"