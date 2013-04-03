s#/mnt/clfs#${BUILDDIR}#g 
s/<[^>]\+>/ /g
s#\&lt;#<#g
s#\&gt;#>#g 
s#install -dv ${CLFS} #install -dv ${CLFS}/sources/logs/{final-preps,cross-tools,final-system,bootable,bootscripts,network,bootscripts,cleanup,the-end}#g
s#passwd clfs##g
s#chown -Rv clfs ${CLFS}#chown -Rv clfs ${BUILDDIR}#g
s#su - clfs##g
s#source ~/.bash_profile##g
s#"  \[target triplet\]  "#${TARGET}#g
s#"  \[architecture\]  "#${ARM_ARCH}#g
s#"  \[arm or thumb\]  "#${ARM_MODE}#g
s#"  \[hard, softfp, or soft\]"#${FLOAT}#g
s#"  \[fpu version\]  "#${FPU}#g
s#"  \[endianess\]  "#${ENDIAN}#g
s#ln -sv#ln -sfv#g
s#"  \[From Chart\]  "#${ABI}#g
s#--with-fpu=##g
