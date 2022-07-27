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
public class IteratorDemo3 {
	public static void main(String[] args) {
		//List Set只是集合数据获取后使用（显示） 优先使用增强for
		//List Set针对循环过程中获取的某一些元素，删除或其他操作 迭代器
		List<Integer> list=new ArrayList<>();
		list.add(12);
		list.add(23);
		list.add(34);
		//list.add(45);

		//迭代器循环
		Iterator<Integer> it = list.iterator();//迭代器的游标位于第一个元素上面
		while(it.hasNext()){//游标下面有元素吗？true  false
			//先调用next
			it.next();
			//再执行remove。如果没有调用next()，就直接使用remove()，程序会抛出IllegalStateException
			it.remove();//删除成功？？remove()删除游标指向的元素IllegalStateException
			//获取游标下面的数据
			//Integer ele = it.next();//获取游标下面那个元素，且移动游标
			//System.out.println(it.next());
		}
		System.out.println(list);
		//出了while，游标位于最后一个元素位置，后面其实没有元素了
		//System.out.println(it.next());//游标下面没有元素可以迭代，程序会抛出异常NoSuchElementException
	}
}
