class Aluno {
  int id;
  String nome;
  String matricula;

  Aluno({required this.id, required this.nome, required this.matricula});

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': nome,
        'matricula': matricula,
      };
}
