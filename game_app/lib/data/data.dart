class GameImage {
  String url;
  String title;
  GameImage({required this.url, required this.title});
}

class Game {
  String? title;
  GameImage? coverImage;
  List<GameImage>? images;
  final String? description;
  final String? studio;

  Game({
    this.title,
    this.description,
    this.studio,
    this.coverImage,
    this.images,
  });
}

List<Game> games = [
  Game(
    title: "Call of Duty: Warzone",
    description:
        "Join the battle royale in this action-packed first-person shooter.",
    studio: "Activision",
    coverImage: GameImage(
      url:
          "https://store-images.s-microsoft.com/image/apps.64530.13739535057760905.9506aae3-1290-433f-9d84-f3d91000412d.008a24a1-3dd2-4284-acd0-c538b29428b2",
      title: "Call of Duty: Warzone",
    ),
  ),
  Game(
    title: "The Legend of Zelda",
    description: "Embark on an epic adventure in the kingdom of Hyrule.",
    studio: "Nintendo",
    coverImage: GameImage(
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0dlY4FxQ8sS5Xo8oWhZy-X31rELWcF28d5uL-i78B657NeSPJ5KUismowJm80-tO1tvs&usqp=CAU",
      title: "The Legend of Zelda",
    ),
  ),
  Game(
    title: "Cricket 19",
    description:
        "A truly global cricket simulation from Big Ant Studios, the leading name in authentic, realistic cricket action",
    coverImage: GameImage(
      url: "https://techiezoid.com/wp-content/uploads/2022/09/g-11-1.jpg",
      title: "https://techiezoid.com/wp-content/uploads/2022/09/g-11-1.jpg",
    ),
  ),
  Game(
    title: "Mortal Kombat",
    description: "Join the battle royale and build your way to victory.",
    studio: "Epic Games",
    coverImage: GameImage(
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0gP9jH5iqWbjBjEat-qL0FABlEPEdOpd-x8QUuS9Jktpe8jnmSIQRBWTQ_Y1yqU9dZj4&usqp=CAU",
      title: "Mortal Kombat",
    ),
  ),
];

List<Game> games2 = [
  Game(
    title: "Assassin's Creed Valhalla",
    description: "Explore the Viking Age as Eivor, a fierce Viking warrior.",
    studio: "Ubisoft",
    coverImage: GameImage(
      url:
          "https://butwhytho.net/wp-content/uploads/2020/11/Assassins-Creed-Valhalla-But-Why-Tho-1536x864.jpg",
      title: "Assassin's Creed Valhalla",
    ),
  ),
  Game(
    title: "Minecraft",
    description: "Build, explore, and survive in your own blocky world.",
    studio: "Mojang",
    coverImage: GameImage(
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT267_qKvQELVjHnEQSPuT15iwcvAHmVd4zTXf59vjFI1W_k9cGyGDCC1HdjmR3DzDzpN4&usqp=CAU",
      title: "Minecraft",
    ),
  ),
];

List<Game> featuredgames = [
  Game(
    title: "Mortal Kombat",
    description: "Join the battle royale and build your way to victory.",
    studio: "Epic Games",
    coverImage: GameImage(
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0gP9jH5iqWbjBjEat-qL0FABlEPEdOpd-x8QUuS9Jktpe8jnmSIQRBWTQ_Y1yqU9dZj4&usqp=CAU",
      title: "Mortal Kombat",
    ),
  ),
];
