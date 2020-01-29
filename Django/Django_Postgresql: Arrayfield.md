# Django_Postgresql: Arrayfield
[here: django official doc for Arrayfield](https://docs.djangoproject.com/en/3.0/ref/contrib/postgres/fields/#postgresql-specific-model-fields)  
- First of All: I don't understand these:  
  - what are the SQL operators `@>` and `<@` ??  
    - answer(not sure): these are Postgresql 'contains operator'??
- Arrayfield is Django's Postgresql-specific model field  
  - all Django's Postgresql-specific model field can be imported from:  
    `django.contrib.postgres.fields` module  
- signature: `class ArrayField(base_field, size=None, **options)`  
  - param1: base_field  
    - the field type that this array filed will be based on, e.g. IntegerField/ CharField, etc.  
  - param2: size (optional)  
    - specify a maximum size of the array  
    - notice: this will be passed to DB, but Postgresql DOES NOT enforce this restriction at present 
    - notice: whether this param is used or not, Postgresql REQUIRES rectangular arrays, e.g.:  
      ```python
      # Valid
      Board(pieces=[
          [2, 3],
          [2, 1],
      ])

      # Not valid
      Board(pieces=[
          [2, 3],
          [2],
      ])
      ```
- A usable set-up example in models.py:
  ```python
  X_list = ArrayField(
    models.IntegerField(default=0),
    size = 6,
    null = True, # default is null
  )
  ```
- Querying ArrayField
  - `contains`: the 'AND' relationship
    > the `contains` lookup is overriden on ArrayField  
    > it uses the SQL operator @> (??? what is this ???)  
    ```python
    Post.objects.create(name='First post', tags=['thoughts', 'django'])
    Post.objects.create(name='Second post', tags=['thoughts'])
    Post.objects.create(name='Third post', tags=['tutorial', 'django'])
    
    Post.objects.filter(tags__contains=['thoughts'])
    # query result: <QuerySet [<Post: First post>, <Post: Second post>]>
    
    Post.objects.filter(tags__contains=['django'])
    # query result: <QuerySet [<Post: First post>, <Post: Third post>]>
    
    Post.objects.filter(tags__contains=['django', 'thoughts'])
    # query result: <QuerySet [<Post: First post>]>
    ```
  - `contained_by`: the 'OR' relationship
    > the `contained` lookup uses the SQL operator <@ (???? what is this????)
    ```python
    Post.objects.create(name='First post', tags=['thoughts', 'django'])
    Post.objects.create(name='Second post', tags=['thoughts'])
    Post.objects.create(name='Third post', tags=['tutorial', 'django'])
    
    Post.objects.filter(tags__contained_by=['thoughts', 'django'])
    # query result: <QuerySet [<Post: First post>, <Post: Second post>]>
    
    Post.objects.filter(tags__contained_by=['thoughts', 'django', 'tutorial'])
    # query result: <QuerySet [<Post: First post>, <Post: Second post>, <Post: Third post>]>
    ```
     
