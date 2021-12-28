{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/libunistring/libunistring-0.9.10.tar.xz
db08bb384e81968957f997ec9808926e
{% endblock %}

{% block lib_deps %}
lib/c
lib/iconv
{% endblock %}

{% block bld_tool %}
dev/build/auto/conf/2/69
dev/build/auto/make/1/16
{% endblock %}

{% block std_box %}
box/boot
{% endblock %}

{% block c_rename_symbol %}
locale_charset
{% endblock %}

{% block env %}
export COFLAGS="--with-libunistring-prefix=${out} \${COFLAGS}"
{% endblock %}
