#

current_dir=$(pwd)
install_dir=$current_dir/../../azeroth-server
mkdir -p $install_dir
cd $install_dir
install_dir=$(pwd)

cd $current_dir
cd ../modules/mod-ah-bot
git stash
git apply $install_dir/ah-bot.patch

cd $current_dir/..
git stash
git apply $install_dir/ac.patch

cd $current_dir

export OPENSSL_ROOT_DIR=$(brew --prefix openssl)

cmake .. \
    -DCMAKE_INSTALL_PREFIX=$install_dir \
    -DTOOLS_BUILD=all \
    -DSCRIPTS=static \
    -DMYSQL_ADD_INCLUDE_PATH=$(asdf where mysql)/include \
    -DMYSQL_LIBRARY=$(asdf where mysql)/lib/libmysqlclient.dylib \
    -DREADLINE_INCLUDE_DIR=$(brew --prefix readline)/include \
    -DREADLINE_LIBRARY=$(brew --prefix readline)/lib/libreadline.dylib \
    -DOPENSSL_INCLUDE_DIR="$OPENSSL_ROOT_DIR/include" \
    -DOPENSSL_SSL_LIBRARIES="$OPENSSL_ROOT_DIR/lib/libssl.dylib" \
    -DOPENSSL_CRYPTO_LIBRARIES="$OPENSSL_ROOT_DIR/lib/libcrypto.dylib"
