{% extends '//die/hub.sh' %}

{% block run_deps %}
bin/shepherd
bin/webkitproc
bin/epiphany/stock(gtk_ver=4)
bin/xdg/er/webkit(wrap=epiphany,prefix=shepherd)
{% endblock %}
