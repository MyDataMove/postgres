set -x

SCRIPT_DIR="$(dirname $0)"

ROOT_DIR=$(dirname $(dirname $SCRIPT_DIR))

cd $ROOT_DIR

# update dnf
dnf update -y 

# install postgres build prereqs
dnf group install "Development Tools" -y 
dnf install libicu libicu-devel -y
dnf install readline-devel -y
dnf install perl perl-FindBin -y 

# create output directory
mkdir -p ./build

# configure (set output directory)
./configure --prefix=$(pwd)/build
