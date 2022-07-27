package cn.kgc;

import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: 过滤重复字符
 * @Version: 1.0
 */
public class HashSetDemo2 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("请输入一段符号：");
		String str = input.nextLine();
		//str控制有哪些字符
		Set<Character> set=new HashSet<>();
		for(int i=0;i<str.length();i++){
			//set.add(字符串每一个字符);
			set.add(str.charAt(i));
		}
		//输出集合元素，sout(set)
		for(Character c:set){
			System.out.print(c+"  ");
		}
	}
}
