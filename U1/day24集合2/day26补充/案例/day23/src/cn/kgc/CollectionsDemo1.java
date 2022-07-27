package cn.kgc;

import java.util.ArrayList;
import java.util.Collections;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: 工具类Collections使用
 * @Version: 1.0
 */
public class CollectionsDemo1 {
	public static void main(String[] args) {
		//1.创建集合Collections,只能对单列集合操作
		ArrayList<Integer> list=new ArrayList<>();
		//2.填充数据
		Collections.addAll(list,23,5,6,7,70,-90);
		System.out.println(list);

		//3.max()和min()
		Integer max = Collections.max(list);
		Integer min = Collections.min(list);

		System.out.println(max+":"+min);

		//4.排序 升序
		Collections.sort(list);
		System.out.println(list);

		//降序
		//Collections.reverse(list);
		//System.out.println(list);

		//5.二分查找法
		int index = Collections.binarySearch(list, -90);
		System.out.println(index);
	}
}
