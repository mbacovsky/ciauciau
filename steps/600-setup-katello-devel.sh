
sed \
	-e 's/[# ]*\(KATELLO_ENV\)=.*/\1=development/g' \
	-e 's/[# ]*\(KATELLO_LOGGING\)=.*/\1=debug/g' \
	-e 's/[# ]*\(BUNDLER_EXT_NOSTRICT\)=.*/\1=1/g' \
	-i /etc/sysconfig/katello
