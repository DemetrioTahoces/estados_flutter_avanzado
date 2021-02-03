part of 'usuario_bloc.dart';

@immutable
abstract class UsuarioEvent {}

class ActivarUsuario extends UsuarioEvent {
  final Usuario usuario;

  ActivarUsuario(this.usuario);

  @override
  String toString() {
    return 'Usuario: ${this.usuario.nombre}';
  }
}

class CambiarEdad extends UsuarioEvent {
  final int edad;

  CambiarEdad(this.edad);

  @override
  String toString() {
    return 'Edad: ${this.edad}';
  }
}

class AgregarProfesion extends UsuarioEvent {
  final String profesion;

  AgregarProfesion(this.profesion);

  @override
  String toString() {
    return 'Profesion: ${this.profesion}';
  }
}

class BorrarUsuario extends UsuarioEvent {}
