{% extends '//mix/template/c_std.sh' %}

{% block fetch %}
https://www.apache.org/dist/serf/serf-1.3.9.tar.bz2
370a6340ff20366ab088012cd13f2b57
{% endblock %}

{% block lib_deps %}
lib/c
lib/z
lib/apr
lib/openssl
lib/apr/util
{% endblock %}

{% block bld_tool %}
dev/build/pkg-config
dev/build/scons
gnu/patch
{% endblock %}

{% block patch %}
(base64 -d | patch -p1) << EOF
{% include 'p00.patch/base64' %}
EOF

(base64 -d | patch -p1) << EOF
{% include 'p01.patch/base64' %}
EOF
{% endblock %}

{% block build %}
scons \
    CC=$(which clang)    \
    PREFIX=${out}        \
    OPENSSL="${SSL_DIR}" \
    APR="$(which apr-1-config)" \
    APU="$(which apu-1-config)" \
    ZLIB="$(find_pkg zlib)"
{% endblock %}

{% block install %}
scons install
{% endblock %}

{% block env %}
export COFLAGS="--with-serf=${out} --with-libserf=${out} \${COFLAGS}"
{% endblock %}
