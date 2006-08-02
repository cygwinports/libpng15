prefix=/usr
bindir=${prefix}/bin
libdir=${prefix}/lib
pcdir=${libdir}/pkgconfig
incdir=${prefix}/include
man3dir=${prefix}/share/man/man3
man5dir=${prefix}/share/man/man5
SLOT=12
LIBNAME=libpng${SLOT}

/usr/sbin/update-alternatives \
  --install ${incdir}/libpng         libpng        ${incdir}/${LIBNAME}  ${SLOT} \
  --slave   ${bindir}/libpng-config  libpng-config ${bindir}/${LIBNAME}-config       \
  --slave   ${libdir}/libpng.a       libpng.a      ${libdir}/${LIBNAME}.a            \
  --slave   ${libdir}/libpng.dll.a   libpng.dll.a  ${libdir}/${LIBNAME}.dll.a        \
  --slave   ${pcdir}/libpng.pc       libpng.pc     ${pcdir}/${LIBNAME}.pc \
  --slave   ${incdir}/png.h          png.h         ${incdir}/${LIBNAME}/png.h        \
  --slave   ${incdir}/pngconf.h      pngconf.h     ${incdir}/${LIBNAME}/pngconf.h \
  --slave   ${man3dir}/libpng.3.gz   libpng.3.gz   ${man3dir}/${LIBNAME}.3.gz \
  --slave   ${man3dir}/libpngpf.3.gz libpngpf.3.gz ${man3dir}/${LIBNAME}pf.3.gz \
  --slave   ${man5dir}/png.5.gz      png.5.gz      ${man5dir}/png${SLOT}.5.gz
