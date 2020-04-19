- Service层的class要加`@Service`，  
  否则在其中使用`Autowired`链接Dao层接口时会无法识别，报`NullPointerException`   
  然而`DAO`层接口不用任何@注解
