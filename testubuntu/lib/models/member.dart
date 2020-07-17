class Member{
  final int age, id;
  final String dateOfBirth, name, favor, talents, face;
  Member({
    this.face,
    this.id,
    this.age,
    this.dateOfBirth,
    this.favor,
    this.name,
    this.talents,
});
}

List<Member> members = [
  Member(
    id: 1,
    name: "Hoang Minh Tam",
    age: 18,
    dateOfBirth: "20/07/2001",
    favor: "Game, Sleep",
    talents: "Sleep",
    face: "assets/images/HMT.jpg"
  ),
  Member(
    id: 2,
    name: "Quan Ngoc Thieu",
    age: 18,
    dateOfBirth: "xx/05/2001",
    favor: "Game, Sleep",
    talents: "Dua xe",
      face: "assets/images/QNT.jpg"

  ),
  Member(
    id: 1,
    name: "Phan Hoang Nguyen",
    age: 18,
    dateOfBirth: "xx/xx/2001",
    favor: "Game, Sleep",
    talents: "Bong chuyen",
      face: "assets/images/PHN.jpg"
  ),
];
