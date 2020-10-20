class nossoBloc{
  final _service = SeuService();
  final _controlador = BehaviorSubject();
  
  Stream get saida => _controlador.stream;
  Sink get entrada => _controlador.sink;
  
  chamadaDaSuaRequisição() async {
    await _service.suaRequisicao().then(entrada.add);
  }
  
  void dispose() {
    _controlador.close();
  }
}