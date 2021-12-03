class Hero {
  final String name;
  final String path;
  final String description;

  Hero({required this.description, required this.name, required this.path});
}

class Heroes {
  final _heroes = [
    Hero(
        name: 'Spider Man',
        path:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f9a87d04-570e-423d-a8cc-3b7ac974be4b/ddxkxc3-610703ee-101a-441a-86a3-0f7df22ac180.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2Y5YTg3ZDA0LTU3MGUtNDIzZC1hOGNjLTNiN2FjOTc0YmU0YlwvZGR4a3hjMy02MTA3MDNlZS0xMDFhLTQ0MWEtODZhMy0wZjdkZjIyYWMxODAuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.qTg6b55Mn3b70lLATdEvon2cPtUbviUzJhXJ-p-iFkw',
        description:
            'Spider-Man has spider-like abilities including superhuman strength and the ability to cling to most surfaces. He is also extremely agile and has amazing reflexes. Spider-Man also has a “spider sense,” that warns him of impending danger. Spider-Man has supplemented his powers with technology.'),
    Hero(
        name: 'Hulk',
        path:
            'https://cs10.pikabu.ru/post_img/2019/05/31/7/1559303286198612100.jpg',
        description:
            'The Hulk is typically seen as a hulking man with green skin, hair, and eyes, wearing only a pair of torn purple pants that survive his physical transformation as the character progressed.'),
    Hero(
        name: 'Daredevil',
        path:
            'https://cdnb.artstation.com/p/assets/images/images/033/055/639/large/george-quadros-daredevil-season-2-tribute-by-george-quadros-300dpi-2.jpg?1608248577',
        description:
            'A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil. ... Now he uses these powers to deliver justice, not only as a lawyer in his own law firm, but also as vigilante at night, stalking the streets of Hell'),
    Hero(
        name: 'Thor',
        path:
            'https://img1.goodfon.ru/wallpaper/nbig/a/fa/art-jeehyung-lee-thor-marvel.jpg',
        description:
            'Thor Odinson is the Asgardian God of Thunder, superhero, self-proclaimed protector of Earth and the king of Asgard. Thor made a name for himself as the mightiest warrior on his homeworld and subsequently became well known for his actions on Earth, which included acting as a founding member of the Avengers.'),
    Hero(
        name: 'Iron man',
        path:
            'https://cdna.artstation.com/p/assets/images/images/040/909/316/large/maro-valls-ironman-portrait-v5-final-artstation.jpg?1630235238',
        description: 'Some text'),
  ];

  List<Hero> get() => [..._heroes];
}
