{% extends '//mix/template/cmake.sh' %}

{% block fetch %}
https://github.com/neovim/neovim/archive/refs/tags/v0.6.0.tar.gz
150cfca071cd2655a7ade4679eb56cef
{% endblock %}

{% block bld_libs %}
lib/uv
lib/lua
lib/uv/l
lib/intl
lib/vterm
lib/iconv
lib/termkey
lib/msgpack/c
lib/unibilium
lib/tree/sitter
{% endblock %}

{% block bld_tool %}
dev/tool/gperf
editor/neovim/luafat
{% endblock %}

{% block script_init_env %}
export LUA_PATH=
{{super()}}
{% endblock %}

{% block setup_tools %}
cat << EOF > lua
#!$(which dash)
export LUA_PATH="${LUA_PATH}:\${LUA_PATH}"
exec "$(which lua)" "\$@"
EOF

chmod +x lua
{% endblock %}

{% block patch %}
sed -e 's|val->string|val->string.str|' -i src/nvim/terminal.c
{% endblock %}

{% block setup %}
export CPPFLAGS="-w ${CPPFLAGS}"
{% endblock %}
