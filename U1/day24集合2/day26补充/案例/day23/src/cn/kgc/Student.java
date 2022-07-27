package cn.kgc;

/**
 * @Author: lc
 * @Date: 2022/4/9
 * @Description: cn.kgc
 * @Version: 1.0
 */
public class Student {
	//属性
	private String stuNo;
	private String name;
	private int age;

	public String getStuNo() {
		return stuNo;
	}

	public void setStuNo(String stuNo) {
		this.stuNo = stuNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Student(String stuNo, String name, int age) {
		this.stuNo = stuNo;
		this.name = name;
		this.age = age;
	}

	public Student() {
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder("Student{");
		sb.append("stuNo='").append(stuNo).append('\'');
		sb.append(", name='").append(name).append('\'');
		sb.append(", age=").append(age);
		sb.append('}');
		return sb.toString();
	}
}
