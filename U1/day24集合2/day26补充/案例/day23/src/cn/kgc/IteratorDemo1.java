package cn.kgc;

import java.util.Arrays;
import java.util.List;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: cn.kgc
 * @Version: 1.0
 */
public class IteratorDemo1 {
	public static void main(String[] args) {
		//List<String> strs=new ArrayList<>();
		//一次性向集合添加多个数据
		List<String> strs= Arrays.asList("abde","defaaa","aadefjjjk");


		/*strs.add("abde");
		strs.add("defaaa");
		strs.add("aadefjjk");*/

		//处理业务：
		System.out.println(strs);
		//方案一：
		for(int i=0;i<strs.size();i++){//strs.size():实际存入的对象个数
			/**
			 * i=0  abde
			 * i=1 defaaa  删除
			 */
			/*if(strs.get(i).indexOf("def")!=-1){//包含def
				strs.remove(i);
				i--;
				//def删除，新增元素
				//strs.add("aaaa");
			}*/
			strs.add("aaa");
		}
		//方案二：增强for
		/*for(String s:strs){
			//if(s.indexOf("def")!=-1) {//包含def
			//	strs.remove(s);//集合的size()随着数据删除，越来越少
			strs.add("aaa");//集合的size()随着数据添加，越来越多
			//}
		}*/
		System.out.println(strs);
	}
}
