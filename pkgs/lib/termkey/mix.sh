{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://github.com/neovim/libtermkey/archive/refs/tags/v0.20.tar.gz
d54de8576437ba8042333742aac2cd94
{% endblock %}

{% block lib_deps %}
lib/c
lib/unibilium
{% endblock %}

{% block bld_tool %}
dev/tool/perl
tool/compress/gzip
dev/build/pkg-config
dev/build/auto/libtool
{% endblock %}
