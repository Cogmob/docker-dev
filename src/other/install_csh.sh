# install visual studio and mono
cd ~/downloads
wget http://ftp.gnu.org/gnu/libtool/libtool-2.4.tar.gz
tar -xzf libtool-2.4.tar.gz
cd libtool-2.4
./configure
make install
# open visual studio and build all
export MONO_EXECUTABLE=/cygdrive/c/..../msvc/build/sgen/x64/bin/Release/mono-sgen.exe
make
PATH="/cygdrive/c/Program Files/Mono:$PATH"
cd ~/.useful
git clone https://github.com/mono/mono.git
cd mono
./autogen.sh --host=x86_64-mingw32 --disable-boehm
