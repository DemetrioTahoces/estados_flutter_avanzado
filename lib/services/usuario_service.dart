import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioService with ChangeNotifier {
  Usuario _usuario;

  Usuario get usuario => this._usuario;
  bool get existeUsuario => this._usuario != null;

  set usuario(Usuario user) {
    this._usuario = user;
    this.notifyListeners();
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    this.notifyListeners();
  }

  void removerUsuario() {
    this._usuario = null;
    this.notifyListeners();
  }

  void agregarProfesion(String profesion) {
    this._usuario.profesiones.add(profesion);
    this.notifyListeners();
  }
}
