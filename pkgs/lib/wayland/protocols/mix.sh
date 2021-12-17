{% extends '//mix/template/meson.sh' %}

{% block fetch %}
https://wayland.freedesktop.org/releases/wayland-protocols-1.24.tar.xz
a66fa869543707279fb78a24d42cbb1d
{% endblock %}

{% block bld_tool %}
lib/wayland/mix.sh
{% endblock %}

{% block run_deps %}
lib/wayland/mix.sh
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/ffi/mix.sh
lib/wayland/mix.sh
{% endblock %}
