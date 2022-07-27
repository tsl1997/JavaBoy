package cn.kgc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: 迭代器使用步骤
 * @Version: 1.0
 */
public class IteratorDemo2 {
	public static void main(String[] args) {
		List<String> strs=new ArrayList<>();
		strs.add("aaa");
		strs.add("bbb");
		strs.add("ccc");
		//处理业务：
		//1.获取迭代器
		Iterator<String> it=strs.iterator();

		//获取迭代器中一个元素
		while(it.hasNext()){
			//在while循环，一次循环，只能用一次next()
			String obj = it.next();//游标移动指向aaa
			//获取数据
			System.out.println(obj);//aaa
			//删除每一个元素
			//strs.remove(obj);//删除，迭代器还是使用集合对象删除，并发修改依然会发生
			//迭代器的remove()游标指向哪个对象就删除那个对象
			it.remove();
		}
		System.out.println(strs.size());
		/*if (it.hasNext()) {
			System.out.println(it.next());
		}
		System.out.println(it.next());
		System.out.println(it.next());
		System.out.println(it.next());
		System.out.println(it.next());
		System.out.println(it.next());
		System.out.println(it.next());
		System.out.println(it.next());
		System.out.println(it.next());*/
	}
}
