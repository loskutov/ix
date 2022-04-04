{% extends '//mix/autorehell.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/bc/bc-1.07.tar.gz
sha:55cf1fc33a728d7c3d386cc7b0cb556eb5bacf8e0cb5a3fcca7f109fc61205ad
{% endblock %}

{% block bld_libs %}
lib/c
lib/intl
lib/sigsegv
lib/readline
{% endblock %}

{% block bld_tool %}
bin/flex
bld/bash
bld/texinfo
bin/bison/3/6
bin/heirloom/ed
{% endblock %}

{% block make_no_thrs %}
{% endblock %}

{% block configure_flags %}
--with-readline
{% endblock %}
