/// name : "Harry Potter"
/// species : "human"
/// gender : "male"
/// house : "Gryffindor"
/// dateOfBirth : "31-07-1980"
/// yearOfBirth : "1980"
/// ancestry : "half-blood"
/// description : "The central character in the series is Harry Potter, a boy who lives in the fictional town of Little Whinging, Surrey with his aunt, uncle, and cousin – the Dursleys – and discovers at the age of eleven that he is a wizard, though he lives in the ordinary world of non-magical people known as Muggles.[8] The wizarding world exists parallel to the Muggle world, albeit hidden and in secrecy. His magical ability is inborn, and children with such abilities are invited to attend exclusive magic schools that teach the necessary skills to succeed in the wizarding world.[9]"
/// eyeColour : "green"
/// hairColour : "black"
/// wand : {"wood":"holly","core":"phoenix feather","length":"11"}
/// patronus : "stag"
/// hogwartsStudent : true
/// hogwartsStaff : false
/// actor : "Daniel Radcliffe"
/// alive : true
/// image : "http://hp-api.herokuapp.com/images/harry.jpg"

class HarryPotterModel {
  HarryPotterModel({
      String? name, 
      String? species, 
      String? gender, 
      String? house, 
      String? dateOfBirth, 
      String? yearOfBirth, 
      String? ancestry, 
      String? description, 
      String? eyeColour, 
      String? hairColour, 
      Wand? wand, 
      String? patronus, 
      bool? hogwartsStudent, 
      bool? hogwartsStaff, 
      String? actor, 
      bool? alive, 
      String? image,}){
    _name = name;
    _species = species;
    _gender = gender;
    _house = house;
    _dateOfBirth = dateOfBirth;
    _yearOfBirth = yearOfBirth;
    _ancestry = ancestry;
    _description = description;
    _eyeColour = eyeColour;
    _hairColour = hairColour;
    _wand = wand;
    _patronus = patronus;
    _hogwartsStudent = hogwartsStudent;
    _hogwartsStaff = hogwartsStaff;
    _actor = actor;
    _alive = alive;
    _image = image;
}

  HarryPotterModel.fromJson(dynamic json) {
    _name = json['name'];
    _species = json['species'];
    _gender = json['gender'];
    _house = json['house'];
    _dateOfBirth = json['dateOfBirth'];
    _yearOfBirth = json['yearOfBirth'];
    _ancestry = json['ancestry'];
    _description = json['description'];
    _eyeColour = json['eyeColour'];
    _hairColour = json['hairColour'];
    _wand = json['wand'] != null ? Wand.fromJson(json['wand']) : null;
    _patronus = json['patronus'];
    _hogwartsStudent = json['hogwartsStudent'];
    _hogwartsStaff = json['hogwartsStaff'];
    _actor = json['actor'];
    _alive = json['alive'];
    _image = json['image'];
  }
  String? _name;
  String? _species;
  String? _gender;
  String? _house;
  String? _dateOfBirth;
  String? _yearOfBirth;
  String? _ancestry;
  String? _description;
  String? _eyeColour;
  String? _hairColour;
  Wand? _wand;
  String? _patronus;
  bool? _hogwartsStudent;
  bool? _hogwartsStaff;
  String? _actor;
  bool? _alive;
  String? _image;
HarryPotterModel copyWith({  String? name,
  String? species,
  String? gender,
  String? house,
  String? dateOfBirth,
  String? yearOfBirth,
  String? ancestry,
  String? description,
  String? eyeColour,
  String? hairColour,
  Wand? wand,
  String? patronus,
  bool? hogwartsStudent,
  bool? hogwartsStaff,
  String? actor,
  bool? alive,
  String? image,
}) => HarryPotterModel(  name: name ?? _name,
  species: species ?? _species,
  gender: gender ?? _gender,
  house: house ?? _house,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  yearOfBirth: yearOfBirth ?? _yearOfBirth,
  ancestry: ancestry ?? _ancestry,
  description: description ?? _description,
  eyeColour: eyeColour ?? _eyeColour,
  hairColour: hairColour ?? _hairColour,
  wand: wand ?? _wand,
  patronus: patronus ?? _patronus,
  hogwartsStudent: hogwartsStudent ?? _hogwartsStudent,
  hogwartsStaff: hogwartsStaff ?? _hogwartsStaff,
  actor: actor ?? _actor,
  alive: alive ?? _alive,
  image: image ?? _image,
);
  String? get name => _name;
  String? get species => _species;
  String? get gender => _gender;
  String? get house => _house;
  String? get dateOfBirth => _dateOfBirth;
  String? get yearOfBirth => _yearOfBirth;
  String? get ancestry => _ancestry;
  String? get description => _description;
  String? get eyeColour => _eyeColour;
  String? get hairColour => _hairColour;
  Wand? get wand => _wand;
  String? get patronus => _patronus;
  bool? get hogwartsStudent => _hogwartsStudent;
  bool? get hogwartsStaff => _hogwartsStaff;
  String? get actor => _actor;
  bool? get alive => _alive;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['species'] = _species;
    map['gender'] = _gender;
    map['house'] = _house;
    map['dateOfBirth'] = _dateOfBirth;
    map['yearOfBirth'] = _yearOfBirth;
    map['ancestry'] = _ancestry;
    map['description'] = _description;
    map['eyeColour'] = _eyeColour;
    map['hairColour'] = _hairColour;
    if (_wand != null) {
      map['wand'] = _wand?.toJson();
    }
    map['patronus'] = _patronus;
    map['hogwartsStudent'] = _hogwartsStudent;
    map['hogwartsStaff'] = _hogwartsStaff;
    map['actor'] = _actor;
    map['alive'] = _alive;
    map['image'] = _image;
    return map;
  }

}

/// wood : "holly"
/// core : "phoenix feather"
/// length : "11"

class Wand {
  Wand({
      String? wood, 
      String? core, 
      String? length,}){
    _wood = wood;
    _core = core;
    _length = length;
}

  Wand.fromJson(dynamic json) {
    _wood = json['wood'];
    _core = json['core'];
    _length = json['length'];
  }
  String? _wood;
  String? _core;
  String? _length;
Wand copyWith({  String? wood,
  String? core,
  String? length,
}) => Wand(  wood: wood ?? _wood,
  core: core ?? _core,
  length: length ?? _length,
);
  String? get wood => _wood;
  String? get core => _core;
  String? get length => _length;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['wood'] = _wood;
    map['core'] = _core;
    map['length'] = _length;
    return map;
  }

}