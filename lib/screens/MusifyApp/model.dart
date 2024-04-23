class MList{

   String? image;
  String? album;
   String? singer;

  MList({this.image,this.album,this.singer});

}

List<MList> songs = [

  MList(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJWCUyZMVRt2fcqXPtuBulmgwIxLKaeNqbiyRvW9SjiLpFpyRf",
    album:"Hero",
    singer: "Taylor Swift",
  ),
  MList(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnsDWvbDFwacUVLfBIEevkaF1WqctG2cle5w&s",
    album: "Unholy",
    singer: "Sam Smith,Kim Petras",
  ),
  MList(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRphH6hLAArI9X6-LgZgIlYiN1nRg8_5_btBw&s",
    album: "Lift Me Up",
    singer: "Rihanna"
  ),
  MList(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxEgsq3xWJuxaWjcvS5RPaGLjVwkdEM48PPA&s",
    album: "Depession",
    singer: "Dex"
  ),
  MList(
    image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTIA5YZZ6phgErMVaDjh3injEdatRufd1sagCf6aVxTvpaAbWfM",
    album: "I'm Good",
    singer: "David Guetta & Bebe Rexha"
  )
];
