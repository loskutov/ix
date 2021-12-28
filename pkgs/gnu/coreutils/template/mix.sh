{% extends '//mix/template/autohell.sh' %}

{% block bld_libs %}
lib/c
lib/intl
lib/iconv
lib/sigsegv
{% endblock %}

{% block bld_tool %}
gnu/patch
{% endblock %}

{% block std_box %}
box/boot
{% endblock %}

{% block configure_flags %}
--libexecdir="${out}/bin"
--enable-no-install-program=stdbuf
--enable-single-binary=symlinks
{% endblock %}

{% block patch %}
(cd src && patch) << EOF
{% include 'uname.patch' %}
EOF
{% endblock %}
