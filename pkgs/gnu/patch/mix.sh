{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz
78ad9937e4caadcba1526ef1853730d5
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/intl/mix.sh
lib/iconv/mix.sh
{% endblock %}

{% block std_box %}
box/boot/mix.sh
{% endblock %}

{% block bld_tool %}
dev/lang/bison/3/boot/mix.sh
{% endblock %}
