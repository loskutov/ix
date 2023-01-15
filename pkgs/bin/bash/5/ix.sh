{% extends 't/ix.sh' %}

{% block bld_libs %}
lib/c
lib/intl
lib/curses
lib/readline
{{super()}}
{% endblock %}

{% block host_libs %}
{{super()}}
lib/c
{% endblock %}

{% block bld_tool %}
bld/bison
{% endblock %}

{% block configure_flags %}
{{super()}}
--with-installed-readline
--enable-readline
--with-curses
{% endblock %}

{% block setup %}
export bash_cv_func_strtoimax=y
{{super()}}
{% endblock %}

{% block configure %}
export CC_FOR_BUILD=${HOST_CC}
{{super()}}
{% endblock %}
