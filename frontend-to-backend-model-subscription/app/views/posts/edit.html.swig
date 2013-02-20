{% extends layout %}
{% block content %}
<div class="hero-unit">
  <form id="post-form" class="form-horizontal" action="/posts/{{params.id}}?_method=PUT" method="POST">
    <fieldset>
      <legend>Update this Post</legend>
      {% if params.errors %}
      <div class="control-group">
        <ul>
        {% for err in params.errors %}
          <li>{{err}}</li>
        {% endfor %}
        </ul>
      </div>
      {% endif %}

                  <div class="control-group">
        <label for="title" class="control-label">title</label>
        <div class="controls">
                      <input type="text" class="span6" name="title" value="{{post.title}}" />
                    </div>
      </div>
                                    <div class="control-group">
        <label for="body" class="control-label">body</label>
        <div class="controls">
                      <input type="text" class="span6" name="body" value="{{post.body}}" />
                    </div>
      </div>
            
      <div class="form-actions">
        <input type="submit" class="btn btn-primary" value="Save" />
        <input type="submit" class="btn btn-danger" value="Delete" formaction="/posts/{{params.id}}?_method=DELETE" />
      </div>
    </fieldset>
  </form>
</div>
{% endblock %}