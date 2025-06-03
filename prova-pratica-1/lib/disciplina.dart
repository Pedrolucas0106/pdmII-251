class Disciplina {
  int id;
  String descricao;
  int qtdAulas;

  Disciplina({
    required this.id,
    required this.descricao,
    required this.qtdAulas,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'descricao': descricao,
        'qtdAulas': qtdAulas,
      };
}
