package cn.kgc;

/**
 * @Author: lc
 * @Date: 2022/4/8
 * @Description: cn.kgc
 * @Version: 1.0
 */
public class Person {
	//身份证  姓名
	private String cardId;
	private String name;

	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Person() {
	}

	public Person(String cardId, String name) {
		this.cardId = cardId;
		this.name = name;
	}

	@Override
	public String toString() {
		final StringBuilder sb = new StringBuilder("Person{");
		sb.append("cardId='").append(cardId).append('\'');
		sb.append(", name='").append(name).append('\'');
		sb.append('}');
		return sb.toString();
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		Person person = (Person) o;

		return cardId != null ? cardId.equals(person.cardId) : person.cardId == null;
	}

	@Override
	public int hashCode() {
		return cardId != null ? cardId.hashCode() : 0;
	}
}
