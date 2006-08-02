prefix=/usr
incdir=${prefix}/include
SLOT=12
LIBNAME=libpng${SLOT}

/usr/sbin/update-alternatives --remove libpng ${incdir}/${LIBNAME}
