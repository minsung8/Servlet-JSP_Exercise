package chap03;

public class MemberDTO {
	
	private String name;
	private String jubun;
	private String gender;
	private int age;
	
	public MemberDTO() {}
	
	public MemberDTO(String name, String jubun) {
		this.name = name;
		this.jubun = jubun;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJubun() {
		return jubun;
	}
	public void setJubun(String jubun) {
		this.jubun = jubun;
	}
	
	public void setGender() {
		char g = jubun.charAt(6);
		
		if (g == '1' || g == '3') {
			this.gender = "남자";
		} else {
			this.gender = "여자";
		}
	}
	
	public void setAge() {
		char g = jubun.charAt(6);
		int age = Integer.parseInt(jubun.substring(0, 2));
		if (g == '1' || g == '2') {
			this.age = 2020 - (1900 + age) + 1;
		} else {
			this.age = 2020 - (2000 + age) + 1;
		}
	}

	public String getGender() {
		char g = jubun.charAt(6);
		
		if (g == '1' || g == '3') {
			this.gender = "남자";
		} else {
			this.gender = "여자";
		}
		return this.gender;
	}


	public int getAge() {
		char g = jubun.charAt(6);
		int age = Integer.parseInt(jubun.substring(0, 2));
		if (g == '1' || g == '2') {
			this.age = 2020 - (1900 + age) + 1;
		} else {
			this.age = 2020 - (2000 + age) + 1;
		}
		return this.age;
	}

}
