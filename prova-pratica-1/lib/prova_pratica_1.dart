import 'dart:convert';

import 'curso.dart';
import 'professor.dart';
import 'disciplina.dart';
import 'aluno.dart';

void main() {
  var curso = Curso(id: 1, descricao: 'Sistemas de Informação');

  var prof = Professor(id: 1, codigo: 'P001', nome: 'Prof. Ricardo');
  var disc1 = Disciplina(id: 1, descricao: 'POO', qtdAulas: 60);
  var disc2 = Disciplina(id: 2, descricao: 'Banco de Dados', qtdAulas: 60);
  prof.adicionarDisciplina(disc1);
  prof.adicionarDisciplina(disc2);

  curso.adicionarProfessor(prof);
  curso.adicionarDisciplina(disc1);
  curso.adicionarDisciplina(disc2);

  var aluno1 = Aluno(id: 1, nome: 'Pedro', matricula: '20251001');
  var aluno2 = Aluno(id: 2, nome: 'Ana', matricula: '20251002');
  curso.adicionarAluno(aluno1);
  curso.adicionarAluno(aluno2);

  var jsonData = jsonEncode(curso.toJson());
  print(jsonData);
}
