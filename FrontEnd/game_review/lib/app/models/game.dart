class Game {
  List<Results>? results;
  Info? info;

  Game({this.results, this.info});

  Game.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data as  Map<String, dynamic>;
  }
}



class Results {
  int? id;
  Name? name;
  Summary? summary;
  Developer? developer;

  String? genre;
  int? score;
  String? img;
  String? release;
  String? consoles;

  Results(
      {this.id,
      this.name,
      this.summary,
      this.developer,
      this.genre,
      this.score,
      this.img,
      this.release,
      this.consoles, 
      });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    summary = json['summary'] != null ? Summary.fromJson(json['name']) : null;
    developer = json['developer'] != null ? Developer.fromJson(json['name']) : null;
    genre = json['genre'];
    score = json['score'];
    img = json['img'];
    release = json['release'];
    consoles = json['consoles'];


  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id!;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    if (this.summary != null) {
      data['summary'] = this.summary!.toJson();;
    }
    data['developer'] = this.developer!.toJson();;
    
    return data as Map<String, dynamic>;
  }
}



class Info {
  String? seed;
  int? results;
  int? page;
  String? version;

  Info({this.seed, this.results, this.page, this.version});

  Info.fromJson(Map<String, dynamic> json) {
    seed = json['seed'];
    results = json['results'];
    page = json['page'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seed'] = this.seed;
    data['results'] = this.results;
    data['page'] = this.page;
    data['version'] = this.version;
    return data as Map<String, dynamic>;
  }
}


class Name {
  String? title;

  Name({this.title});

  Name.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    return data as Map<String, dynamic>;
  }
}

class Summary {
  String? title;

  Summary({this.title});

  Summary.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    return data;
  }
}

class Developer {
  String? title;

  Developer({this.title});

  Developer.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    return data;
  }
}