{% extends '//die/cgo.sh' %}

{% block fetch %}
https://github.com/rgburke/grv/archive/refs/tags/v0.3.2.tar.gz
sha:0fda50bf3536b4ff8da6490f736c2e5aace61cd1697794dd77c1ac85d46e9350
{% endblock %}

{% block unpack %}
{{super()}}
cd cmd/grv
{% endblock %}

{% block bld_libs %}
lib/c
lib/git/2
{% endblock %}

{% block install %}
mkdir ${out}/bin
cp grv ${out}/bin/
{% endblock %}
