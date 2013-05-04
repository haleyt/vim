#
# XXX: you might need to execute --
#          sudo apt-get build-dep vim
#      to build successfully
#

make distclean
export CFLAGS="-g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Wformat-security -Werror=format-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1"
export LDFLAGS="-Wl,-z,relro -Wl,--as-needed -ltinfo -lnsl -lattr -ldl -lpthread"
./configure --with-features=huge --without-x --disable-gui --enable-pythoninterp --prefix=/usr --with-modified-by=haley.teng@gmail.com
make

