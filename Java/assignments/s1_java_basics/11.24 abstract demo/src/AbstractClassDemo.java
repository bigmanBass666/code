public class AbstractClassDemo {
	public static void main(String[] args) {
		AbstractClass aClass = new AbstractClass() {
			
			@Override
			String getInfo() {
				return "aClass Info";
			}
		};
		
		System.out.println(aClass.getInfo());
		
		AbstractClass eClass = new ExtendsClass();
		System.out.println(eClass.getInfo());
	}
}

// 抽象类
abstract class AbstractClass {
	
	// 抽象方法
	abstract String getInfo();
	
}

// 子类实现抽象类
class ExtendsClass extends AbstractClass {

	@Override
	String getInfo() {
		return "eClass Info";
	}
	
}
