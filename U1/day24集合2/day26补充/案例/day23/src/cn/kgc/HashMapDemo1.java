package cn.kgc;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: Map集合的基本使用
 * @Version: 1.0
 */
public class HashMapDemo1 {
	public static void main(String[] args) {
		//key--value 一一对应的关系
		//存入夫妻关系，Map<key,value>
		Map<String,String> map=new HashMap<>();
		System.out.println("几对夫妻？"+map.size());//0
		//存入数据
		map.put("赵又廷","高圆圆");
		map.put("邓超","孙俪");
		map.put("吴奇隆","刘诗诗");
		map.put("玄彬","孙艺珍");
		System.out.println("几对夫妻？"+map.size());//4

		System.out.println("包含邓超这个键吗？"+map.containsKey("邓超"));
		System.out.println("包含孙艺珍这个值么？"+map.containsValue("孙艺珍"));

		System.out.println("吴奇隆的妻子叫："+map.get("吴奇隆"));
		//get(key),不能用value获取key，但是key获取value
		System.out.println("孙俪的老公叫："+map.get("孙俪"));

		String value = map.remove("邓超");
		System.out.println("移除的键值对是：邓超"+value);
	}
}
