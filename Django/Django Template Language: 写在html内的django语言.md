# Django Template Language: 写在html内的django语言
[官方文档链接](https://docs.djangoproject.com/en/dev/ref/templates/language/)  
- generate dynamic html in server-side, NOT CLIENT-SIDE (which requires JS)  
- only handles simple logics (e.g. if-else, for-loop) and variables;   
  DOES NOT handle statements  
  
## Syntax
- !! NOTE: 
  - if using a variable inside `{{}}`, then do not need to use `{%%}` to wrap it  
  - Django Template Language has NO `range()` function: you need to make the desired range in views and pass it into context  
  - Django Templates Language DO NOT USE `()` for accessing dictionary elements: USE `dic.items`, `dic.values`, `dic.keys`

- all variables inside `{{ }}`  
  all logics inside `{% %}`  
- `with`: set a variable value
  ```html
  {% with someVariableName = someValue %}
  {% endwith %}
  ```
  
- if-else  
  ```html
  {% if athlete_list %}
    Number of athletes: {{ athlete_list|length }}
  {% elif athlete_in_locker_room_list %}
      Athletes should be out of the locker room soon!
  {% else %}
      No athletes.
  {% endif %}
  ```
- for-loop
  ```html
  <ul>
  {% for athlete in athlete_list %}
      <li>{{ athlete.name }}</li>
  {% endfor %}
  </ul>
  ```
