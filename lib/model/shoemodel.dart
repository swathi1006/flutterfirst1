class Shoe{
  int? id;
  String name;
  String image;
  String? description;

  Shoe({this.id,required this.name,required this.image,this.description});
}

List<Shoe> home = [

  Shoe(
      id:1,
      image:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSsUF5Xmu9QpHTcf_ZEDEznlG_08cNNfdPG1DhKyfXCzMBKZil3",
      name:"Nike Air Max 90",
      description:"Woman's shoes - Popular"
  ),
  Shoe(
    id: 2,
    image: "https://imagedelivery.net/2DfovxNet9Syc-4xYpcsGg/c7f9dbf0-56cf-4691-0401-c9947d9cd300/product",
    name: "Nike AF1 Shadow",
    description: "Women's Shoes - Just in"
  )

];