class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String? profileImage;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.profileImage,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data["id"],
      name: data["name"],
      userName: data["user_name"],
      email: data["email"],
      profileImage: data["profile_image"],
      phoneNumber: data["phone_number"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "user_name": userName,
      "email": email,
      "profile_image": profileImage,
      "phoneNumber": phoneNumber,
    };
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Rida",
      userName: "Rida",
      email: "taqin@gmail.com",
      profileImage:
          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/36437c94-6dc0-4461-a818-631448f43033/d939jrn-d395208a-3c76-4ada-b319-4325274203fc.png/v1/fill/w_1024,h_1024,strp/chloe_park__we_bare_bears__by_cyrussobanveber_d939jrn-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcLzM2NDM3Yzk0LTZkYzAtNDQ2MS1hODE4LTYzMTQ0OGY0MzAzM1wvZDkzOWpybi1kMzk1MjA4YS0zYzc2LTRhZGEtYjMxOS00MzI1Mjc0MjAzZmMucG5nIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.aUExZFl1_2-BAKMkQg56LgdAI7DniQpexL0YdmGKs5E",
      phoneNumber: "085123123123",
    );
  }
}
