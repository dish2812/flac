CMAKE_DIR="${TRAVIS_BUILD_DIR}/deps";
mkdir ${CMAKE_DIR};
cd ${CMAKE_DIR};

wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/cmake-3.17.0-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/jsoncpp-1.9.1-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libarchive-3.4.2-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/libuv-1.35.0-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/gcc-libs-9.2.0-4-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/rhash-1.3.9-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/glibc-2.30-3-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libnsl-1.2.0-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libtirpc-1.2.5-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/openssl-1.1.1.f-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/zstd-1.4.4-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/curl-7.69.1-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libnghttp2-1.40.0-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libidn2-2.3.0-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libssh2-1.9.0-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libpsl-0.21.0-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/libunistring-0.9.10-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/krb5-1.18-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/zlib-1:1.2.11-4-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/acl-2.2.53-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/attr-2.4.48-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/bzip2-1.0.8-3-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/expat-2.2.9-3-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/lz4-1:1.9.2-2-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/extra/libxml2-2.9.10-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/xz-5.2.5-1-aarch64.pkg.tar.xz;
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/iana-etc-20200327-1-any.pkg.tar.xz
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/filesystem-2019.10-2-aarch64.pkg.tar.xz
wget --no-check-certificate http://mirror.archlinuxarm.org/aarch64/core/linux-api-headers-5.4.17-1-any.pkg.tar.xz
tar -xvf linux-api-headers-5.4.17-1-any.pkg.tar.xz
tar -xvf filesystem-2019.10-2-aarch64.pkg.tar.xz
tar -xvf iana-etc-20200327-1-any.pkg.tar.xz
tar -xvf xz-5.2.5-1-aarch64.pkg.tar.xz;
tar -xvf libxml2-2.9.10-1-aarch64.pkg.tar.xz;
tar -xvf lz4-1:1.9.2-2-aarch64.pkg.tar.xz;
tar -xvf expat-2.2.9-3-aarch64.pkg.tar.xz;
tar -xvf bzip2-1.0.8-3-aarch64.pkg.tar.xz;
tar -xvf attr-2.4.48-2-aarch64.pkg.tar.xz;
tar -xvf acl-2.2.53-2-aarch64.pkg.tar.xz;
tar -xvf libpsl-0.21.0-2-aarch64.pkg.tar.xz;
tar -xvf libarchive-3.4.2-1-aarch64.pkg.tar.xz;
tar -xvf libuv-1.35.0-1-aarch64.pkg.tar.xz;
tar -xvf jsoncpp-1.9.1-1-aarch64.pkg.tar.xz;
tar -xvf gcc-libs-9.2.0-4-aarch64.pkg.tar.xz;
tar -xvf rhash-1.3.9-1-aarch64.pkg.tar.xz;
tar -xvf glibc-2.30-3-aarch64.pkg.tar.xz;
tar -xvf libnsl-1.2.0-2-aarch64.pkg.tar.xz;
tar -xvf libtirpc-1.2.5-1-aarch64.pkg.tar.xz;
tar -xvf openssl-1.1.1.f-1-aarch64.pkg.tar.xz;
tar -xvf zstd-1.4.4-1-aarch64.pkg.tar.xz;
tar -xvf curl-7.69.1-1-aarch64.pkg.tar.xz;
tar -xvf libnghttp2-1.40.0-1-aarch64.pkg.tar.xz;
tar -xvf libidn2-2.3.0-1-aarch64.pkg.tar.xz;
tar -xvf libssh2-1.9.0-2-aarch64.pkg.tar.xz;
tar -xvf libunistring-0.9.10-2-aarch64.pkg.tar.xz;
tar -xvf krb5-1.18-1-aarch64.pkg.tar.xz;
tar -xvf zlib-1:1.2.11-4-aarch64.pkg.tar.xz;
tar -xvf cmake-3.17.0-1-aarch64.pkg.tar.xz;


export LD_LIBRARY_PATH=/usr/lib:${CMAKE_DIR}/usr/lib;
export PATH=${CMAKE_DIR}/usr:${CMAKE_DIR}/usr/bin:$PATH;
cd ${TRAVIS_BUILD_DIR};
echo $LD_LIBRARY_PATH;
echo $PATH;

cmake --version;