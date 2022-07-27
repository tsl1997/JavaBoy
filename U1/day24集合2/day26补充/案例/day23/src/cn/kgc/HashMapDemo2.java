package cn.kgc;

import java.util.*;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: Map集合的三种循环方式
 * @Version: 1.0
 */
public class HashMapDemo2 {
	public static void main(String[] args) {
		//Map保存学生信息（学号，学生对象）
		//1.现有一些学生
		Student s1 = new Student("S001", "贾宝玉", 18);
		Student s2 = new Student("S002", "薛宝钗", 19);
		Student s3 = new Student("S003", "林黛玉", 17);
		Student s4 = new Student("S004", "贾元春", 21);
		//2.一些学生存入数组或集合
		Map<String,Student> map=new HashMap<>();
		map.put(s1.getStuNo(),s1);
		map.put(s2.getStuNo(),s2);
		map.put(s3.getStuNo(),s3);
		map.put(s4.getStuNo(),s4);

		//方案三 循环键值对
		//增强for  Entry是Map内部的接口。访问方式：外部类.内部类
		Set<Map.Entry<String,Student>> entryset=map.entrySet();
		for(Map.Entry<String,Student> entry :entryset) {
			System.out.println(entry.getKey()+"====="+entry.getValue());
		}
		System.out.println("===============");
		//迭代器
		Iterator<Map.Entry<String,Student>> it=entryset.iterator();
		while(it.hasNext()){
			//ctrl+alt+v
			Map.Entry<String, Student> entry = it.next();//获取一个键值对对象
			System.out.println(entry.getKey()+"====="+entry.getValue());
		}


	}

	private static void valuesFun(Map<String, Student> map) {
		//方案二：循环值集
		Collection<Student> values = map.values();
		System.out.println("values实际类型是："+values.getClass());
		//两种：增强for  不能使用for循环
		for(Student stu:values){
			System.out.println(stu);
		}
		//
		System.out.println("===============");
		//迭代器
		Iterator<Student> it = values.iterator();
		while(it.hasNext()){
			System.out.println(it.next());
		}
		System.out.println("===================");
		//所有的集合重写toString()
		System.out.println(values);
	}

	private static void keySetFun(Map<String, Student> map) {
		//3.打印学生信息
		//3-1 S001========={S001,贾宝玉，18}
		//方案一：keySet()键集,本质其实就是一个Set集合（增强for、迭代器）
		Set<String> keys= map.keySet();
		//增强for
		for(String key :keys){
			System.out.println(key+"======"+ map.get(key));
		}
		System.out.println("==============");
		Iterator<String> it=keys.iterator();//迭代器对象产生
		while(it.hasNext()){
			String key = it.next();//获取一个对象，同时移动一次游标
			System.out.println(key+"======"+ map.get(key));
		}
	}
}
