{% extends '//mix/template/py.py' %}

{% block env %}
export OPTFLAGS="-DNDEBUG ${OPTFLAGS}"
{% endblock %}
