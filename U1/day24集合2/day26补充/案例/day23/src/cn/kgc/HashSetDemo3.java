package cn.kgc;

import java.util.HashSet;
import java.util.Set;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: cn.kgc
 * @Version: 1.0
 */
public class HashSetDemo3 {
	public static void main(String[] args) {
		//1.多个身份证号码一样的Person对象，算一个对象
		Set<Person> set=new HashSet<>();
		//伪代码：set具有天性：过滤重复
		//if(set.contains(添加的对象)==false) {//依然依靠equals(),Person没有重写equals(),比较多个person对象的哈希地址
			set.add(new Person("100", "jack"));
		//}else{//set已经包含要添加的对象
			//再一次存入set集合吗？？
		//}
		set.add(new Person("100","xiao jack"));
		set.add(new Person("100","da jack"));
		set.add(new Person("101","jack"));
		set.add(new Person("102","jack"));

		//前提：公安系统 输入100-->一个人
		System.out.println(set);
	}
}
