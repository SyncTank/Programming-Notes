public class TestScript {
    
    class TestClass{
        int newnumber = 34; 
        
    }

    public static void HelloWorld(){System.out.println("Hello World");}
    
    public static void main(String[] args){
        TestScript MainTest = new TestScript();

        System.out.println("Test");
        HelloWorld();
        
        TestClass test = MainTest.new TestClass();
        System.out.println(test.newnumber);

    }



}