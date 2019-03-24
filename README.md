# sh4twbox

## To enable shpkg work on archived URLs, modify the /etc/shpkg.conf:

    sh4twbox txz \
        http://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/sh4twbox \
        http://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/sh4twbox

    st24 rpm \
        http://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/sh4twbox \
        http://archive.stlinux.com/stlinux/2.4/STLinux/sh4 \
        http://archive.stlinux.com/stlinux/2.4/updates/RPMS/sh4


## TODO: 

### modify shpkg & install curl:

    shpkg -S sh4twbox/shpkg-st \
        st24/stlinux24-sh4-curl \
        st24/stlinux24-sh4-glibc \
        st24/stlinux24-sh4-openssl \
        st24/stlinux24-sh4-wget \
        st24/stlinux24-sh4-zlib 

### modify /usr/bin/shpkg and /etc/shpkg.conf to support https & redirect URL like:

    curl -LOk http://raw.githubusercontent.com/dlintw/sh4twbox/master/repo/<file>

