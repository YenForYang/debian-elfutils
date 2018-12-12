-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: elfutils
Binary: elfutils, libelf1, libelf-dev, libdw-dev, libdw1, libasm1, libasm-dev
Architecture: any
Version: 0.175-1
Maintainer: Kurt Roeckx <kurt@roeckx.be>
Homepage: https://sourceware.org/elfutils/
Standards-Version: 4.1.0
Build-Depends: debhelper (>= 9), autotools-dev, autoconf, automake, bzip2, zlib1g-dev, zlib1g-dev:native, libbz2-dev, liblzma-dev, m4, gettext, gawk, dpkg-dev (>= 1.16.1~), gcc-multilib [any-amd64 sparc64] <!nocheck>, libc6-dbg [powerpc powerpcspe ppc64 ppc64el armel armhf arm64 sparc64], flex, bison
Build-Conflicts: autoconf2.13, automake1.4
Package-List:
 elfutils deb utils optional arch=any
 libasm-dev deb libdevel optional arch=any
 libasm1 deb libs optional arch=any
 libdw-dev deb libdevel optional arch=any
 libdw1 deb libs optional arch=any
 libelf-dev deb libdevel optional arch=any
 libelf1 deb libs optional arch=any
Checksums-Sha1:
 361f835640ecffddc6d4543fb044eb53f673026f 8786600 elfutils_0.175.orig.tar.bz2
 a15f78114cad1c7dbe41b2c5710105563b83c481 488 elfutils_0.175.orig.tar.bz2.asc
 28eab328d1e8d8df41b13d9567c9d707dd5901d3 37404 elfutils_0.175-1.debian.tar.xz
Checksums-Sha256:
 f7ef925541ee32c6d15ae5cb27da5f119e01a5ccdbe9fe57bf836730d7b7a65b 8786600 elfutils_0.175.orig.tar.bz2
 103ae1a12d0b67e2d783f36dc780acd533d5c2a9d6241bcd62cfe1f6fa891a16 488 elfutils_0.175.orig.tar.bz2.asc
 0de2c3f311d388a1dada67e4e37a41bd18fcf715c2a7bcb869d75f0815c70f23 37404 elfutils_0.175-1.debian.tar.xz
Files:
 9a02b0382b78cc2d515fb950275d4c02 8786600 elfutils_0.175.orig.tar.bz2
 54de34fe526466caf58f8dce879623b6 488 elfutils_0.175.orig.tar.bz2.asc
 c088129dfd51831d1ea2e664fac54eb8 37404 elfutils_0.175-1.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEUWHm1ANgDdycoJP748TdzR5MEkQFAlvzKXEACgkQ48TdzR5M
EkSDaQ/9E/0VXgLoDrw4A2YDQpil2RKw0orombRKvy8WAf6W8B5L5w2D40n1X0gk
GpifLIEthX6Ru/JuN2Wqw7Z2hrZIIWs9XUqp+Buzydvso/c0OiXAdwTOoNhfgDhq
VpRRXMnU8T6n19S28F0wGpjZqS6ArLFq1xdc/EhCzkGYvUwIxYtcuu2/KUtbfnYU
3kmzPdeUGFg4CGLOX8ff/lKGmsDj5/1EzEhAE67IX7pCjYjveZbIYCFZGJeylC0x
luKbunS4M6gATWqni7YqfGeCb1/LK8IG/B3i5AxO58JuVPvLlVYFbfakI6lkQDXi
SGEG0rtSHoaiLkaeZAWkYnDCrpSrLiaMckpXvWfzHF1/F3K5Ws3/Wjz2sx0tY/LX
0OOXxlN4HZNOMo+7Owc/kb6ZMqbmKbJRzu5pWMKQRe4QamiDe/E1DPA8/dY2Rgz5
Q0vBZ41b0DSUPL0jQbDZgw7UvIrASU7HzZsKYzauNoHNhGO6R0/qT+AxBGDRxchl
uXEnBjiP9Utaz1nsuP18bwU3QmnNxyis8qBmnnmecrbpFadiQ+LrrQjhQREirdiB
o4elh+DFue2UyevpltmIB3RsFBJbQOe3E0AkK5khtI3Ppr8Lrj/42GuLJyzT3KrI
YgxSXuxPNZHW7OI77cOqEZepRb/veM3BYgrs/geBRE8z6K2aBGI=
=syFl
-----END PGP SIGNATURE-----
