package cn.kgc;

import java.util.HashSet;
import java.util.Set;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: cn.kgc
 * @Version: 1.0
 */
public class HashSetDemo1 {
	public static void main(String[] args) {
		//1.创建对象
		Set<String> set=new HashSet<>();
		//2.存入数据
		set.add("aaa");
		set.add("aaa");
		set.add("aaa");
		set.add("张三丰");
		set.add("jack");
		set.add("aaa");
		set.add("AAA");
		set.add("1234");
		set.add("李四");

		//3.集合数据
		System.out.println(set);
		//4.删除数据 Set不支持下标，所以一切跟下标相关的方法，set不支持的
		boolean bool = set.remove("1234");
		//System.out.println("第二个元素："+set.get(1));
		//清空数据
		//set.clear();
		//数据个数
		System.out.println(set.size());
		System.out.println(set.isEmpty());

		//增强for
		for(String e :set){
			System.out.println(e);
		}

	}
}
