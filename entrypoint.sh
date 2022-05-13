#!/bin/sh -l

VERBOSE="true"

if [ "${VERBOSE}" == "true" ]; then set -x; else set +x; fi
set -eu -o pipefail

echo "**********************"
echo "* Create Python venv *"
echo "**********************"
#python -m venv --system-site-packages --copies ${HOME}

echo "*********************"
echo "* Update Python Pip *"
echo "*********************"
#source ${HOME}/bin/activate
python -m pip install --upgrade pip

STEP_RUNNER_LIB_SOURCE_URL="git+https://github.com/ploigos/ploigos-step-runner.git@main"

#if [[ ${STEP_RUNNER_LIB_SOURCE_URL} ]]; then
    STEP_RUNNER_LIB_INSTALL_CMD="python -m pip install --upgrade ${STEP_RUNNER_LIB_SOURCE_URL}"
#else
#    indexUrlFlag=""
#    if [[ ${STEP_RUNNER_LIB_INDEX_URL} ]]; then
#        indexUrlFlag="--index-url ${STEP_RUNNER_LIB_INDEX_URL}"
#    fi
#    extraIndexUrlFlag=""
#    if [[ ${STEP_RUNNER_LIB_EXTRA_INDEX_URL} ]]; then
#        extraIndexUrlFlag="--extra-index-url  ${STEP_RUNNER_LIB_EXTRA_INDEX_URL}"
#    fi
#    STEP_RUNNER_LIB_INSTALL_CMD="python -m pip install --upgrade ${indexUrlFlag} ${extraIndexUrlFlag} ${STEP_RUNNER_PACKAGE_NAME}"
#    if [[ ${STEP_RUNNER_LIB_VERSION} ]]; then
#        STEP_RUNNER_LIB_INSTALL_CMD+="==${STEP_RUNNER_LIB_VERSION}"
#    fi
#fi

echo "*************************************"
echo "* Update Step Runner Python Package *"
echo "*************************************"
${STEP_RUNNER_LIB_INSTALL_CMD}

echo "****************************************************"
echo "* Installed Step Runner Python Package Information *"
echo "****************************************************"
python -m pip show ploigos-step-runner

