#!/bin/sh 
PLUGIN_NAME="${PLUGIN_NAME:-devops-api}"
RESULTS_DIR="${RESULTS_DIR:-/tmp/results}"

# run tests
cp *.xml ${RESULTS_DIR}
# cp test.log ${RESULTS_DIR}
# cat test.log

# Gather results into one file
cd ${RESULTS_DIR}
tar -czf ${PLUGIN_NAME}.tar.gz *

# Let the sonobuoy worker know the job is done
echo -n "${RESULTS_DIR}/${PLUGIN_NAME}.tar.gz" >"${RESULTS_DIR}/done"
