#!/bin/sh -l

VERBOSE="true"

if [ "${VERBOSE}" == "true" ]; then set -x; else set +x; fi
set -eu -o pipefail

echo "*********************"
echo "* Update Python Pip *"
echo "*********************"
#source ${HOME}/bin/activate
python -m pip install --upgrade pip

STEP_RUNNER_LIB_SOURCE_URL="git+https://github.com/ploigos/ploigos-step-runner.git@main"
STEP_RUNNER_LIB_INSTALL_CMD="python -m pip install --upgrade ${STEP_RUNNER_LIB_SOURCE_URL}"

echo "*************************************"
echo "* Update Step Runner Python Package *"
echo "*************************************"
${STEP_RUNNER_LIB_INSTALL_CMD}

echo "****************************************************"
echo "* Installed Step Runner Python Package Information *"
echo "****************************************************"
python -m pip show ploigos-step-runner

psr --help
