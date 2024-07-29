import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExerciciosView extends StatelessWidget {
  const ExerciciosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Exercicios();
  }
}

class Exercicios extends StatefulWidget {
  const Exercicios({super.key});

  @override
  State<Exercicios> createState() => _ExerciciosState();
}

class _ExerciciosState extends State<Exercicios> {
  bool add = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF000857,
        ),
        title: const Text(
          'Exercícios',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(
          0xFFF85509,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Adicionar Novo Paciente'),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Nome Completo',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Data de Nascimento',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Telefone',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Data de Avaliação',
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Histórico Clínico',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Queixa de Funcionalidade',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'História Atual da Doença',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'História Pregressa da Doença',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Hábitos de Vida',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Tratamentos Realizados',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Antecedentes Pessoais e Familiares',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Evolução do Tratamento',
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Exame Clínico Físico',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Pressão Arterial Sistêmica',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Frequência Respiratória',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Risco de Quedas',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Testes Complementares',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Diagnóstico Fisioterapêutico',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Prognóstico',
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Plano Terapêutico',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Objetivos',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Quantidade de Atendimentos Prováveis',
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Procedimentos',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Salvar a lógica aqui
                      Navigator.of(context).pop();
                    },
                    child: const Text('Salvar'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 0,
              ),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(
                    12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Titulo',
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Indicação',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Detalhes',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.delete,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 14,
            child: Padding(
              padding: const EdgeInsets.all(
                12,
              ),
              child: Column(
                children: [
                  if (add)
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: Text(
                                'Exercicio X',
                              ),
                            ),
                            const Expanded(
                              flex: 3,
                              child: Text(
                                'Tue done',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(
                                        () => const DetalhesPage(),
                                      );
                                    },
                                    child: const Icon(
                                      Icons.info_outline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetalhesPage extends StatefulWidget {
  const DetalhesPage({super.key});

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF000857,
        ),
        title: const Text(
          'Exercícios',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextField(
                      controller: TextEditingController(
                          text:
                              '''Sentar e Levantar com Alcance com Membros Superiores

Posição: sentada com os pés apoiados.

Movimento: levantar-se, realizar o alcance dos objetos com os membros superiores e retornar à posição inicial.

Variações: o exercício pode ser realizado com o paciente segurando bola, com caneleira no punho e segurando bola.

Material sugerido: caneleira, bola, cones e chapéu chines. '''),
                      decoration: InputDecoration(
                        hintText: 'Digite a Queixa de Funcionalidade',
                        label: Text(
                          'Descrição',
                        ),
                        border: OutlineInputBorder(),
                      ),
                      maxLines: null,
                      minLines: 35,
                    ),
                  ],
                ),

                // Botões
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
