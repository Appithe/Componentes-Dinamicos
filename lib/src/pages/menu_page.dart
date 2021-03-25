import 'package:componentes/providers/menu1_provider.dart';
import 'package:componentes/src/pages/description_page.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page')
        ),
        body: _lista(),
    );
  }

  Widget _lista() {
    // Future Builder
    return FutureBuilder(
      future: menu1Provider.cargarDataMenu1(),
      initialData: [],
      builder: (context, AsyncSnapshot <List<dynamic>> snapshot){     
        return ListView(
          children: _listaItems(snapshot.data, context),
        );   
      },
    );
  }

  List <Widget> _listaItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blue),

      onTap: (){
        final route = MaterialPageRoute(
              builder: (context) => DescriptionPage()
        );
        Navigator.push(context,route);
      },

      );
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }

}