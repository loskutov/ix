{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://dist.libuv.org/dist/v1.41.0/libuv-v1.41.0.tar.gz
d990b0770dd2b15f7a8399580d55d32c
{% endblock %}

{% block bld_deps %}
dev/build/autoconf/2.69/mix.sh
dev/build/automake/1.16.3/mix.sh
{{super()}}
{% endblock %}

{% block autoreconf %}
export LIBTOOLIZE=libtoolize

dash ./autogen.sh
{% endblock %}
