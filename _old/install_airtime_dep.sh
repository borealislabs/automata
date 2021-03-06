#!/usr/bin/env sh

# This is a feeble attempt at fixing the Airtime installer. Bear with me here.
# Base instructions from https://lowendtalk.com/discussion/92207/airtime-installation-new-2016-tutorial
# Exhaustive Dependency Link Compilation by Amy of AmyOnTheRadio.com for Borealis/Deep Talk

# First get git and wget
sudo apt-get install git wget -y

# Then clone Airtime
git clone https://github.com/sourcefabric/Airtime.git

#Verify latest version of Airtime at https://github.com/sourcefabric/Airtime/releases
wget https://github.com/sourcefabric/Airtime/archive/airtime-2.5.2.1.tar.gz

#Install PostgreSQL
sudo apt-get install postgresql postgresql-contrib -y

#Time to Install the Hellacious List of Dependencies!

#Master List of Airtime Dependencies & Their Dependencies

mkdir dependencies
cd dependencies

wget http://security.debian.org/debian-security/pool/updates/main/p/php5/php5-curl_5.6.33+dfsg-0+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/g/glibc/libc6_2.19-18+deb8u10_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libgcc1_4.9.2-10+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/g/glibc/multiarch-support_2.19-18+deb8u10_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/gcc-4.9-base_4.9.2-10+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/e/e2fsprogs/libcomerr2_1.42.12-2+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/krb5/libgssapi-krb5-2_1.12.1+dfsg-19+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/krb5/libk5crypto3_1.12.1+dfsg-19+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/keyutils/libkeyutils1_1.5.9-5+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/krb5/libkrb5support0_1.12.1+dfsg-19+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/keyutils/libkeyutils1_1.5.9-5+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/krb5/libkrb5-3_1.12.1+dfsg-19+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/krb5/libkrb5support0_1.12.1+dfsg-19+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/k/krb5/libgssapi-krb5-2_1.12.1+dfsg-19+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libi/libidn/libidn11_1.29-1+deb8u2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/o/openldap/libldap-2.4-2_2.4.40+dfsg-1+deb8u3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/g/gnutls28/libgnutls-deb0-28_3.3.8-6+deb8u7_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/g/gmp/libgmp10_6.0.0+dfsg-6_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/n/nettle/libhogweed2_2.7.1-5+deb8u2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/n/nettle/libnettle4_2.7.1-5+deb8u2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/p/p11-kit/libp11-kit0_0.20.7-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libf/libffi/libffi6_3.1-2+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libt/libtasn1-6/libtasn1-6_4.2-3+deb8u3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/z/zlib/zlib1g_1.2.8.dfsg-2+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/c/cyrus-sasl2/libsasl2-modules-db_2.1.26.dfsg1-13+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/d/db5.3/libdb5.3_5.3.28-9+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libs/libssh2/libssh2-1_1.4.3-4.1+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libg/libgcrypt20/libgcrypt20_1.6.3-2+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libg/libgpg-error/libgpg-error0_1.17-3_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/d/debconf/debconf_1.5.56+deb8u1_all.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/perl/perl-base_5.20.2-3+deb8u10_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/d/dpkg/dpkg_1.17.27_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/b/bzip2/libbz2-1.0_1.0.6-7+b3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/x/xz-utils/liblzma5_5.1.1alpha+20120614-2+b3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libs/libselinux/libselinux1_2.3-2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/p/pcre3/libpcre3_8.35-3.3+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/t/tar/tar_1.27.1-2+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/a/acl/libacl1_2.2.52-2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/a/attr/libattr1_2.4.47-2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/l/lsof/lsof_4.86+dfsg-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libp/libperl4-corelibs-perl/libperl4-corelibs-perl_0.003-1_all.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/perl/perl_5.20.2-3+deb8u10_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/g/gdbm/libgdbm3_1.8.3-13.1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/t/texinfo/install-info_5.2.0.dfsg.1-6_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/perl/perl-modules_5.20.2-3+deb8u10_all.deb
wget http://ftp.us.debian.org/debian/pool/main/p/psmisc/psmisc_22.21-2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/n/ncurses/libtinfo5_5.9+20140913-1+deb8u2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/s/sed/sed_4.2.2-4+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/u/ucf/ucf_3.0030_all.deb
wget http://ftp.us.debian.org/debian/pool/main/c/coreutils/coreutils_8.23-4_amd64.deb


# php5 and dependencies
wget http://security.debian.org/debian-security/pool/updates/main/p/php5/php5_5.6.33+dfsg-0+deb8u1_all.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/php5/php5-common_5.6.33+dfsg-0+deb8u1_amd64.deb

# php5 postgre dependencies
wget http://ftp.us.debian.org/debian/pool/main/p/postgresql-9.4/libpq5_9.4.15-0+deb8u1_amd64.deb

# libapache2 dependencies
wget http://security.debian.org/debian-security/pool/updates/main/a/apache2/apache2_2.4.10-10+deb8u12_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/a/apache2/apache2-bin_2.4.10-10+deb8u12_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/a/apr/libapr1_1.5.1-3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/u/util-linux/libuuid1_2.25.2-6_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/s/shadow/passwd_4.2-3+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/d/debianutils/debianutils_4.4+b1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/s/sensible-utils/sensible-utils_0.0.9+deb8u1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/a/audit/libaudit1_2.4-1+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/a/audit/libaudit-common_2.4-1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/p/pam/libpam-modules_1.1.8-3.1+deb8u2+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/p/pam/libpam-modules-bin_1.1.8-3.1+deb8u2+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/p/pam/libpam0g_1.1.8-3.1+deb8u2+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libs/libsemanage/libsemanage1_2.3-1+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libs/libsemanage/libsemanage-common_2.3-1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/libs/libsepol/libsepol1_2.3-2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/u/ustr/libustr-1.0-1_1.0.4-3+b2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/a/apr-util/libaprutil1_1.5.4-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/e/expat/libexpat1_2.1.0-6+deb8u4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/a/apr-util/libaprutil1-dbd-pgsql_1.5.4-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/a/apr-util/libaprutil1-ldap_1.5.4-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/l/lua5.1/liblua5.1-0_5.1.5-7.1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/g/gcc-4.9/libstdc++6_4.9.2-10+deb8u1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/libx/libxml2/libxml2_2.9.1+dfsg1-5+deb8u6_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/x/xml-core/xml-core_0.13+nmu2_all.deb
wget http://ftp.us.debian.org/debian/pool/main/s/sgml-base/sgml-base_1.26+nmu4_all.deb
wget http://security.debian.org/debian-security/pool/updates/main/a/apache2/apache2-data_2.4.10-10+deb8u12_all.deb
wget http://security.debian.org/debian-security/pool/updates/main/a/apache2/apache2-utils_2.4.10-10+deb8u12_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/l/lsb/lsb-base_4.1+Debian13+nmu1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/m/mime-support/mime-support_3.58_all.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/procps/procps_3.3.9-9+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/s/sysvinit/initscripts_2.88dsf-59_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/u/util-linux/mount_2.25.2-6_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/u/util-linux/libmount1_2.25.2-6_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/u/util-linux/libblkid1_2.25.2-6_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/u/util-linux/libsmartcols1_2.25.2-6_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/s/sysvinit/sysv-rc_2.88dsf-59_all.deb
wget http://ftp.us.debian.org/debian/pool/main/s/startpar/startpar_0.59-3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/s/sysvinit/sysvinit-utils_2.88dsf-59_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/n/ncurses/libncurses5_5.9+20140913-1+deb8u2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/n/ncurses/libncursesw5_5.9+20140913-1+deb8u2_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/procps/libprocps3_3.3.9-9+deb8u1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/a/apache2/apache2-bin_2.4.10-10+deb8u12_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/a/apache2/apache2-doc_2.4.10-10+deb8u12_all.deb
wget http://security.debian.org/debian-security/pool/updates/main/a/apache2/apache2-suexec-pristine_2.4.10-10+deb8u12_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/f/file/libmagic1_5.22+15-2+deb8u3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/f/file/file_5.22+15-2+deb8u3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libo/libonig/libonig2_5.9.5-3.2+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/q/qdbm/libqdbm14_1.8.78-5+b1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/php5/php5-cli_5.6.33+dfsg-0+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libe/libedit/libedit2_3.1-20140620-2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libb/libbsd/libbsd0_0.7.0-2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/p/php-json/php5-json_1.3.6-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/j/json-c/libjson-c2_0.11-4_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/t/tzdata/tzdata_2017c-0+deb8u1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/p/php-apcu/php-apc_4.0.7-1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/p/php-apcu/php5-apcu_4.0.7-1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/p/php5/php5-gd_5.6.33+dfsg-0+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/f/freetype/libfreetype6_2.5.2-3+deb8u2_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libp/libpng/libpng12-0_1.2.50-2+deb8u3_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libg/libgd2/libgd3_2.1.0-5+deb8u11_amd64.deb
#wget https://packages.debian.org/jessie/amd64/libfontconfig1/download
wget http://ftp.us.debian.org/debian/pool/main/f/fontconfig/fontconfig-config_2.11.0-6.3+deb8u1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/f/fonts-dejavu/fonts-dejavu-core_2.34-1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/t/ttf-bitstream-vera/ttf-bitstream-vera_1.10-8_all.deb
wget http://ftp.us.debian.org/debian/pool/main/f/fonts-liberation/fonts-liberation_1.07.4-1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_1.3.1-12_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/t/tiff/libtiff5_4.0.3-12.3+deb8u5_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/j/jbigkit/libjbig0_2.1-3.1_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/libv/libvpx/libvpx1_1.3.0-3+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libx/libx11/libx11-6_1.6.2-3+deb8u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libx/libx11/libx11-data_1.6.2-3+deb8u1_all.deb
wget http://ftp.us.debian.org/debian/pool/main/libx/libxcb/libxcb1_1.10-3+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libx/libxau/libxau6_1.0.8-1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libx/libxdmcp/libxdmcp6_1.1.1-1+b1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libx/libxpm/libxpm4_3.5.12-0+deb8u1_amd64.deb

#mp3 gain

wget http://ftp.us.debian.org/debian/pool/main/m/mp3gain/mp3gain_1.5.2-r2-2+deb7u1_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/e/eglibc/libc0.1_2.13-38+deb7u10_kfreebsd-amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/e/eglibc/libc-bin_2.13-38+deb7u12_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/g/gcc-4.7/libgcc1_4.7.2-5_amd64.deb
wget http://security.debian.org/debian-security/pool/updates/main/e/eglibc/multiarch-support_2.13-38+deb7u12_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/e/eglibc/libc6.1_2.13-38+deb7u10_ia64.deb
wget http://ftp.us.debian.org/debian/pool/main/g/gcc-4.7/gcc-4.7-base_4.7.2-5_amd64.deb
wget http://ftp.us.debian.org/debian/pool/main/libu/libunwind/libunwind7_0.99-0.3_amd64.deb

#Install all debs in folder and their dependencies recursively

###sudo dpkg -R --install *

#Once completed: If you're already in the Airtime folder, if not, sudo ~/airtime-2.5.2.1/install -fiap

###sudo ./install -fiap

#Open your browser to your ip or domain, no special ports needed, and follow the instructions. Follow all the details from airtime installation, it is pretty forward! You probably will se an error in the end, stating that some services are not running. Just rerun those services following those commands:

###service airtime-media-monitor start
###service airtime-liquidsoap restart
###service airtime-playout restart

#There is no statement about the default login and password for your server. Enter in both fields �admin� and when logged in, don�t forget to change the values
