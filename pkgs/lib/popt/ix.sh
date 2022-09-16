{% extends '//die/c/autorehell.sh' %}

{% block fetch %}
http://ftp.rpm.org/popt/releases/popt-1.x/popt-1.19.tar.gz
sha:c25a4838fc8e4c1c8aacb8bd620edb3084a3d63bf8987fdad3ca2758c63240f9
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}

{% block bld_tool %}
bld/gettext
{% endblock %}
