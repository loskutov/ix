{% extends '//mix/make.sh' %}

{% block fetch %}
https://github.com/rui314/mold/archive/refs/tags/v1.1.1.tar.gz
sha:47c5ddfe60beffc01da954191c819d78924e4d1eb96aeebfa24e1862cb3a33f9
{% endblock %}

{% block bld_libs %}
lib/z
lib/c
lib/c++
lib/xxhash
lib/openssl
lib/intel/tbb
{% endblock %}

{% block std_box %}
bld/pkg/config
{{super()}}
{% endblock %}

{% block make_flags %}
SYSTEM_TBB=1
SYSTEM_XXHASH=1
SYSTEM_MIMALLOC=1
{% endblock %}

{% block make_target %}
mold
{% endblock %}

{% block patch %}
rm -r third-party
sed -e 's|.*mimalloc-new.*||' -i main.cc
sed -e 's|-lcrypto||' -i Makefile
{% endblock %}

{% block build %}
{{super()}}
>mold-wrapper.so
{% endblock %}
