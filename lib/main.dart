import 'package:flutter/material.dart';
import 'package:proyecto_lenguajes/widget/customform.dart';

class LogInPage extends StatefulWidget {
  LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final usuarioController = TextEditingController();

  final contraController = TextEditingController();
  //el controlador del Form
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Inicia Sesion')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              CustomFormInput(
                controller: usuarioController,
                label: 'Usuario',
                hintText: 'Introduzca el usuario',
                preicono: Icon(Icons.person),
                validator: (valor){
                  if (valor=='')
                  {
                    return 'El usuario no debe de estar vacio';
                  }
                  else if (valor!='sergio.inestroza@unah.hn')
                  {
                    return 'El usuario es incorrecto';
                  }
                },
                texto: false,
                maxx: 30,
              ),
              CustomFormInput(
                controller: contraController,
                label: 'Contraseña',
                hintText: 'Introduzca la contraseña',
                texto: true,
                preicono: Icon(Icons.password),
                suicono: Padding(
                  padding: EdgeInsetsDirectional.only(end: 12.0),
                  child: IconButton(
                    onPressed: (){
                      Icon(Icons.remove_red_eye);
                      
                      setState(() {
                          
                      });
                    }, 
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
                validator: (valor){
                  if (valor == '')
                  {
                    return 'La contraseña no debe de estar vacia';
                  }
                  else if (valor!='20182002621')
                    {
                      return 'la contraseña es incorrecta';
                      
                    }
                },
                
              ),
              OutlinedButton(
                child: Text(
                  'Iniciar sesion', 
                  style: TextStyle(
                    fontSize: 20
                    ),
                  ),
                onPressed: () {
                  if (!formkey.currentState!.validate()) return;

                  final datos = {
                    'correo': usuarioController.text,
                    'contrasenia': contraController.text,
                  };

                  print(datos);

                },
              ),
              TextButton(
                onPressed: () {},
                child: Text('¿No tienes cuenta? Registrate'))
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.save),
      //   onPressed: () {
      //     if (!formkey.currentState!.validate()) return;

      //     final datos = {
      //       'correo': correoController.text,
      //       'contrasenia': contraseniaController.text,
      //     };

      //     print(datos);

      //     // mandar a guardar
      //   },
      // ),
    );
  }
}