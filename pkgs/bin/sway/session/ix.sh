{% extends '//die/hub.sh' %}

{% block run_deps %}
bin/sway
bin/dbus/session
bin/sway/session/scripts
{% endblock %}
