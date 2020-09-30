# Usage: source setenv.sh
SCRIPT_HOME="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
echo "Script is located at ${SCRIPT_HOME}"
export GOPRIVATE=gitlab.bgcorp.com
export MASTER_GOPATH=${SCRIPT_HOME}/go
export GOPATH=${MASTER_GOPATH}
export GOBIN=${MASTER_GOPATH}/bin
export GO111MODULE=auto
# Use JENKINS_GOROOT if set
export GOROOT=${JENKINS_GOROOT:-${HOME}/go-sdk/go1.13.7}
export PATH=${GOBIN}:${GOROOT}/bin:${PATH}
