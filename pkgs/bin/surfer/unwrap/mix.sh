{% extends '//mix/make.sh' %}

{% block fetch %}
https://github.com/nihilowy/surfer/archive/704299e0f5a3ad97446288f54c419f136e417865.zip
sha:6bd969cbd24e9f4fee3026cd9f79dd1485cc691a9f27164ad23a2f7ad096b7f3
{% endblock %}

{% block bld_libs %}
lib/c
lib/gtk
lib/glib
lib/gdk/pixbuf
lib/web/kit/gtk
{% endblock %}

{% block bld_tool %}
bld/pkg/config
{% endblock %}
