# model relationship API.md  

## One To One  
[django official doc](https://docs.djangoproject.com/en/3.0/topics/db/examples/one_to_one/)  
- 一对一关系：  
  `A` can optionally be `B`  
  e.g. a 'place' can optionally be a 'restaruant'  
  在这种情况下，将`OneToOneField A`放在`B`的model中，使`A` 成为 `B` 的reference
  code:
  ```python
  from django.db import models

  class A(models.Model):
      some_Afeild_1 = models.CharField(max_length=50)
      some_Afield_2 = models.CharField(max_length=80)

  class B(models.Model):
      a = models.OneToOneField( // 放入对A的reference
          A,
          on_delete=models.CASCADE, // "there are 6 behaviours to adopt when the referenced object is deleted. It is not specific to django, this is an SQL standard."
          primary_key=True,
      )
      some_Bfield_1 = models.BooleanField(default=False)
      some_Bfield_2 = models.BooleanField(default=False)
  ```

## Many To One  
[django official doc](https://docs.djangoproject.com/en/3.0/topics/db/examples/many_to_one/)  

## Many To Many  
[django official doc](https://docs.djangoproject.com/en/3.0/topics/db/examples/many_to_many/)  
