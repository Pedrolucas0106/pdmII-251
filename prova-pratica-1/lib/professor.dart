import 'disciplina.dart';

class Professor {
  int id;
  String codigo;
  String nome;
  List<Disciplina> disciplinas = [];

  Professor({required this.id, required this.codigo, required this.nome});

  void adicionarDisciplina(Disciplina disciplina) {
    disciplinas.add(disciplina);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'codigo': codigo,
        'nome': nome,
        'disciplinas': disciplinas.map((d) => d.toJson()).toList(),
      };
}
