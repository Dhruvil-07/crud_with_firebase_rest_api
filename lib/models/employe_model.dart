import 'dart:ffi';

class Employe_model
{
     String name;
     String age;
     String image_url;

     Employe_model({required this.name, required this.age ,required this.image_url});

     factory Employe_model.fromjson(MapEntry json)
     {
        return Employe_model(
            name: json.value['name'],
            age: json.value['age'],
            image_url: json.value['image_url'],
        );
     }

}