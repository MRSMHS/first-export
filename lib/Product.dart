class Product{
  String _id;
  String _name;
  String _price;
  String _image;
  String _description;
  Product(this._description,this._id,this._image,this._name,this._price);

 String get id => this._id;

 set id(String value) => this._id = value;

  get name => this._name;

 set name( value) => this._name = value;

  get price => this._price;

 set price( value) => this._price = value;

  get image => this._image;

 set image( value) => this._image = value;

  get description => this._description;

 set description( value) => this._description = value;






}