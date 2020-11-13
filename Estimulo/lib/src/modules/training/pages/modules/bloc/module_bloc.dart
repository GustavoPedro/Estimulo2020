import 'dart:async';

import 'package:Estimulo/src/modules/training/models/module.dart';
import 'package:Estimulo/src/modules/training/models/module_content.dart';
import 'package:Estimulo/src/shared/repositories/online_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'module_event.dart';
part 'module_state.dart';

class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {
  final OnlineRepository<ModuleModel> onlineRepository;

  ModuleBloc({@required this.onlineRepository}) : super(ModuleInitial()) {
    this.add(LoadModules());
  }

  @override
  Stream<ModuleState> mapEventToState(
    ModuleEvent event,
  ) async* {
    if (event is LoadModules) {
      try {
        yield ModulesLoading();
        List<ModuleModel> _modules =
            await onlineRepository.get(path: "/api/Modules");
        yield ModulesLoaded(modules: _modules);
      } catch (ex) {
        print(ex);
        yield ModulesLoaded(modules: <ModuleModel>[
          ModuleModel(
            id: 1,
            nome: "Financeiro",
            imagem:
                "https://assets.blu365.com.br/uploads/sites/4/2019/09/planejamento-financeiro-semanal.jpg",
            moduloDetalhes: <ModuleContentModel>[
              ModuleContentModel(
                id: 1,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
              ModuleContentModel(
                id: 2,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
              ModuleContentModel(
                id: 3,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
            ],
          ),
          ModuleModel(
            id: 2,
            nome: "Teste2",
            imagem:
                "https://assets.blu365.com.br/uploads/sites/4/2019/09/planejamento-financeiro-semanal.jpg",
            moduloDetalhes: <ModuleContentModel>[
              ModuleContentModel(
                id: 1,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
              ModuleContentModel(
                id: 2,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
              ModuleContentModel(
                id: 3,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
            ],
          ),
          ModuleModel(
            id: 3,
            nome: "Teste3",
            imagem: "https://picsum.photos/250?imagem=9",
            moduloDetalhes: <ModuleContentModel>[
              ModuleContentModel(
                id: 1,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
              ModuleContentModel(
                id: 2,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
              ModuleContentModel(
                id: 3,
                nome: "Teste",
                descricao: "Testeeee",
                link: "https://www.youtube.com/watch?v=mNHKNyhSn8I",
                tipo: "Video",
              ),
            ],
          ),
        ]);
      }
    }
  }
}
