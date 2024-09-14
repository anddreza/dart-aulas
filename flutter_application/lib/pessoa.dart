class Pessoa{
  late String nome;
  late String sobrenome;
  late String _cpf;

  get cpf=> this._cpf;
  set cpf(numero) => this._cpf = numero;

  Pessoa({required this.nome, required this.sobrenome}){
  }

  nomeCompleto(){
    return '${this.nome} ${this.sobrenome}';
  }
  
}