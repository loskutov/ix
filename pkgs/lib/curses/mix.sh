{% extends '//mix/template/hub.sh' %}

{% block lib_deps %}
lib/curses/{{curses or 'n'}}
{% endblock %}
