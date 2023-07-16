public class Student {
    
    //encapsulated data by making access modifier "private"
   private String name = 'Tom Hardy';
   private Integer age = 33;
   private String stdId = 'TH202304T'; 

    //to read encapsulated data; create "getter method"
    public String getName(){
        return name;
    }
    
    public Integer getAge(){
        
        return age;
    }
    
    public String getStdId(){
        
        return stdId;
    }
    
    //To be able to update encapsulated data, we create "setter" methods for each variable!
     public void setName(String name){ //to update, enter a value!
    
     this.name = name; //this.name: this refers to the Class. (Student)
        }
    
    public void setAge(Integer age){
        this.age = age;
    }
    
    public void setStdId(String stdId){
     
        this.stdId = stdId;
    }
    }