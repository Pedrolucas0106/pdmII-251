import 'aluno.dart';
import 'disciplina.dart';
import 'professor.dart';

class Curso {
  int id;
  String descricao;
  List<Aluno> alunos = [];
  List<Disciplina> disciplinas = [];
  List<Professor> professores = [];

  Curso({required this.id, required this.descricao});

  void adicionarAluno(Aluno aluno) => alunos.add(aluno);
  void adicionarDisciplina(Disciplina disciplina) => disciplinas.add(disciplina);
  void adicionarProfessor(Professor professor) => professores.add(professor);

  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'alunos': alunos.map((a) => a.toJson()).toList(),
        'disciplinas': disciplinas.map((d) => d.toJson()).toList(),
        'professores': professores.map((p) => p.toJson()).toList(),
      };
}
