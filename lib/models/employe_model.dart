
class Employe_model
{
     String id;
     String name;
     String age;
     String image_url;

     Employe_model({required this.id , required this.name, required this.age ,required this.image_url});

     factory Employe_model.fromjson(MapEntry json)
     {
        return Employe_model(
            id: json.key,
            name: json.value['name'],
            age: json.value['age'],
            image_url: json.value['image_url'],
        );
     }

}