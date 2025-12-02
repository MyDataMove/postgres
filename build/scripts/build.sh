set -x

SCRIPT_DIR="$(dirname $0)"

ROOT_DIR=$(dirname $(dirname $SCRIPT_DIR))

cd $ROOT_DIR

# build/install only pg_dump
cd src/bin/pg_dump
make clean install
