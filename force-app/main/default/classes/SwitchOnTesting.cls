public class SwitchOnTesting {
    
    //Create a method gives you random letters
    
    //Access modifier      DataType    methodName(){method body}
    
       
    public String getRandomLetters(){
        
        String letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
      
        
        Integer index = Integer.valueOf(Math.random()*51);
       
        
        return letters.substring(index, index+1); 
        
    }

}

//random() method gives you a random value between 0 and 1..
// for example: 0.3
// to be able to get a letter from my string, I need index. 
// to obtain index by means of random() method: I need to extend interval.

/*
 		1) Methods (getRandomLetters()) should be created in Classes
		2) to create a method
			i)Type "access modifier": There are 4 access modifiers
				a) global: 
				b) public:
				c) protected:
				d) private: 
		   
			ii)Type "return type": Data type which the method will give you in return
			iii)Type method name: a) methodName should summarşze the functionality
								  b) use camelCase when you name a method
			iv)Put method parenthesis: From the parenthesis, Apex can understand it is a method
			v) Use {}: the between the curly brackets is called "Method Body"
 
            Ex: public String getRandomLetters(){
            			Method body in brackets
            }
  
 */