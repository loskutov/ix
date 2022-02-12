{% extends '//mix/kconfig.sh' %}

{% block host_libs %}
lib/elfutils
lib/openssl/1
{{super()}}
{% endblock %}

{% block c_compiler %}
bin/gcc/tc(for_target={{host.gnu.three}})
bin/gcc/tc(for_target={{target.gnu.three}})
{% endblock %}

{% block bld_tool %}
lib/xz
bld/perl
bin/flex
bin/gzip
lib/zstd
bld/python
lib/openssl/1
bin/bison/3/6
bin/busybox/bc
{% endblock %}

{% block configure %}
make HOSTCC="${HOST_CC} -D__always_inline=__inline__ -w" mrproper
cat << EOF > .config
{% block kconfig_flags %}
{% endblock %}
EOF
{% endblock %}

{% block build %}
make HOSTCC="${HOST_CC} -D__always_inline=__inline__ -w" -j ${make_thrs}
{% endblock %}

{% block setup_target_tc %}
{{super()}}
ln -s target/ld ld
ln -s target/strip strip
ln -s target/objcopy objcopy
ln -s target/objdump objdump
{% endblock %}

{% block install %}
mkdir ${out}/bin
cp arch/x86/boot/bzImage ${out}/bin/kernel.{{self.kernel_name().strip()}}
{% endblock %}
