class User {
    String name;
    int age;
    double height;

    User({
        required this.name,
        required this.age,
        required this.height
    });

    Map<String, dynamic> toJson() {
        return {
            "name": this.name,
            "age": this.age,
            "height": this.height
        };
    }
}
