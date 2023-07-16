public class Accord implements Brake, Engine { //this is not interface, this is child class.
    
    public void eco(){ //do not type "override": bcs Apex already knows you overriding in Interface
        
        System.debug('Accord uses eco method from Engine interface!');
    }

}