import 'dart:convert';

import 'aluno.dart';
import 'curso.dart';
import 'disciplina.dart';
import 'professor.dart';

void main() {
  // Criar professores
  var prof1 = Professor(id: 1, codigo: "P01", nome: "Taveira");

  // Criar disciplinas
  var disc1 = Disciplina(id: 1, descricao: "POO", qtdAulas: 80);
  var disc2 = Disciplina(id: 2, descricao: "Banco de Dados", qtdAulas: 60);
  prof1.adicionarDisciplina(disc1);
  prof1.adicionarDisciplina(disc2);

  // Criar alunos
  var aluno1 = Aluno(id: 1, nome: "Pedro", matricula: "20251001");
  var aluno2 = Aluno(id: 2, nome: "Jão", matricula: "20251002");

  // Criar curso
  var curso = Curso(id: 1, descricao: "Informática");
  curso.adicionarProfessor(prof1);
  curso.adicionarDisciplina(disc1);
  curso.adicionarDisciplina(disc2);
  curso.adicionarAluno(aluno1);
  curso.adicionarAluno(aluno2);

  // Gerar JSON do curso
  var jsonData = jsonEncode(curso.toJson());
  print(jsonData);
}
