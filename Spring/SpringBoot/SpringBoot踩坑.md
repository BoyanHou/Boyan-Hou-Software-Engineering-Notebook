- 使用CrudRepository 实现数据库交互时，报NullPointerException:   
  Service层的class要加`@Service`， controller层调用该Service时使用@Autowired，而不能手动new   
  原因：手动new 出来的service不经过SpringBoot处理，所以service内部@Autowired调用CrudRepository接口时，对象没有建立，为null  
