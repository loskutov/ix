{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.16.tar.gz
7d2a800b952942bb2880efb00cfd524c
{% endblock %}

{% block std_box %}
bld/bootbox
{% endblock %}

{% block install %}
{{super()}}

rm ${out}/lib/libcharset.a
{% endblock %}

{% block env_lib %}
export COFLAGS="--with-libiconv-prefix=${out} --with-iconv=${out} \${COFLAGS}"
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}
