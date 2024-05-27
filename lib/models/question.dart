class Question {
  int? id;
  String? question;
  String? chapter;
  List<Answers>? answers;

  Question({this.id, this.question, this.chapter, this.answers});

  Question.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    chapter = json['chapter'];
    if (json['answers'] != null) {
      answers = <Answers>[];
      json['answers'].forEach((v) {
        answers!.add(new Answers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['chapter'] = this.chapter;
    if (this.answers != null) {
      data['answers'] = this.answers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Answers {
  int? id;
  String? pattern;
  String? psychotype;

  Answers({this.id, this.pattern, this.psychotype});

  Answers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pattern = json['pattern'];
    psychotype = json['psychotype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pattern'] = this.pattern;
    data['psychotype'] = this.psychotype;
    return data;
  }
}