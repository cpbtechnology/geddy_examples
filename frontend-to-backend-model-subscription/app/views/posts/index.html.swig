{% extends layout %}
{% block content %}
<div class="hero-unit">
  <h2>All Posts</h2>
  <a href="/posts/add" class="btn pull-right">Create a new Post</a>
</div>

{% if posts %}
<div id="posts-list">
{% for post in posts %}
  <div class="row list-item" id="post-{{ post.id }}">
    <div class="span8">
      <h3><a href="/posts/{{post.id}}" class="btn pull-right">{{post.id}}</a></h3>
    </div>
    <div class="span4">
      <h3><i class="icon-list-alt"></i>{{post.id}}</h3>
    </div>
  </div>
{% endfor %}
{% endif %}
</div>
{% endblock %}