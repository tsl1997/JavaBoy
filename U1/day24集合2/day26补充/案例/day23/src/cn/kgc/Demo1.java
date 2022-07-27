package cn.kgc;

import java.util.Deque;
import java.util.LinkedList;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: cn.kgc
 * @Version: 1.0
 */
public class Demo1 {
	public static void main(String[] args) {
		//1.集合数据频繁增删
		//List<String> list=new LinkedList<>();
		Deque<String> list=new LinkedList<>();
		//2.存入数据
		int i=0;
		do {
			if(list.size()>=5){
				//数据移除
				list.removeLast();//移除最后一个
			}
			list.addFirst("新数据"+i);
			System.out.println("第"+(i+1)+"次添加数据后，集合元素有：");
			System.out.println(list);
			i++;
		} while (true);

	}
}
