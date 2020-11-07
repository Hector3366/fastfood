import 'package:flutter/material.dart';
import 'package:hola_mundo/features/auth/presentation/provider/user_provider.dart';
import 'package:hola_mundo/features/dashboard/data/models/rating.dart';
import 'package:hola_mundo/features/dashboard/data/models/restaurante.dart';
import 'package:hola_mundo/features/dashboard/presentation/pages/RestauranteCard.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Restaurante restaurante0 = Restaurante(
    name: 'Tacos Tavo',
    picture: 'assets/images/tacostao-rest.png',
    starRating: Rating(ratingValue: 5.0),
    tags: ['Tacos', 'Enchiladas'],
    preparationTime: '12',
  );

  Restaurante restaurante1 = Restaurante(
    name: 'Mac Burger',
    picture: 'assets/images/mcburger-rest.png',
    starRating: Rating(ratingValue: 4.7),
    tags: ['Hamburguesas', 'Alitas', 'Nachos'],
    preparationTime: '20',
  );

  Restaurante restaurante2 = Restaurante(
    name: 'La Condesa',
    picture: 'assets/images/krab-rest.jpg',
    starRating: Rating(ratingValue: 4.2),
    tags: ['Langosta', 'Camarón', 'Mojarra'],
    preparationTime: '35',
  );

  Restaurante restaurante3 = Restaurante(
    name: 'La Tablita',
    picture: 'assets/images/latablita-rest.jpg',
    starRating: Rating(ratingValue: 4.8),
    tags: ['Cortes', 'Asador', 'Tacos'],
    preparationTime: '40',
  );
   Restaurante restaurante4 = Restaurante(
    name: 'Cielito lindo',
    picture: 'assets/images/boxitolindo-rest.png',
    starRating: Rating(ratingValue: 2.7),
    tags: ['Mole', 'Alitas', 'Nachos'],
    preparationTime: '20',
  );

  Restaurante restaurante5= Restaurante(
    name: 'Sushi Grill',
    picture: 'assets/images/sushigrill-rest.png',
    starRating: Rating(ratingValue: 4.2),
    tags: ['Langosta', 'Camarón', 'Mojarra'],
    preparationTime: '35',
  );

  Restaurante restaurante6 = Restaurante(
    name: 'Burguer Queen',
    picture: 'assets/images/burgerqueen-rest.jpg',
    starRating: Rating(ratingValue: 4.8),
    tags: ['Cortes', 'Asador', 'Tacos'],
    preparationTime: '40',
  );
  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    var user = userProvider.user;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 160.0,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hola ',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Color(0xffFFF0D7),
                            ),
                      ),
                      Text(
                        user.name,
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Color(0xffFFF0D7),
                            ),
                      ),
                    ],
                  ),
                  Text(
                    '¿Qué quieres comer hoy?',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Color.fromARGB(170, 255, 240, 215),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w100,
                        ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFFFFF0D7),
                    ),
                    decoration: buildInputDecoration(
                      'Buscar platillos o restaurantes',
                      Icon(
                        Icons.search,
                        color: Color(0xffFFF0D7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffFC4F32),
            ),
          ),
          Container(
            constraints: BoxConstraints(minWidth: double.infinity),
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20.0),
                  child: Text(
                    'Populares cerca de ti',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            //width: double.infinity,
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RestauranteCard(restaurante: restaurante1),
                RestauranteCard(restaurante: restaurante2),
                RestauranteCard(restaurante: restaurante3),
                RestauranteCard(restaurante: restaurante0),
              ],
            ),
          ),
          Container(),

          //Explorar categorias
            Container(
            constraints: BoxConstraints(minWidth: double.infinity),
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20.0),
                  child: Text(
                    'Explorar categorias',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(15.0, 00.0,10.0,30.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                  FlatButton(//comida rápida
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(20.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {/*...*/},
                      child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      Icons.fastfood,
                      size: 70.0,
                      ),
                    Text("Rápida"),
                    Text ('1548 Lugares')
                  ],
                ),
                    ),
                    FlatButton(
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(20.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {/*...*/},
                      child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      Icons.local_florist,
                      size: 70.0,
                      ),
                    Text("Ensaladas"),
                    Text ('80 Lugares')
                  ],
                ),
                    ),
                    FlatButton(//postres
                      color: Colors.green,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(20.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {/*...*/},
                      child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      Icons.hot_tub,
                      size: 70.0,
                      ),
                    Text("Postres"),
                    Text ('43 Lugares')
                  ],
                ),
                    ),
                    FlatButton(//postres
                      color: Colors.red,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(20.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {/*...*/},
                      child: Column( // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      Icons.set_meal,
                      size: 70.0,
                      ),
                    Text("Mariscos"),
                    Text ('21 Lugares')
                  ],
                ),
                    ),
              ],
            ),
          ),
          
           Container(
            constraints: BoxConstraints(minWidth: double.infinity),
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20.0),
                  child: Text(
                    'Recomendados',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

            Container(
            height: 190.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RestauranteCard(restaurante: restaurante5),
                RestauranteCard(restaurante: restaurante4),
                RestauranteCard(restaurante: restaurante6),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration(String hintText, Icon icon) =>
      InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        prefixIcon: IconButton(
          icon: icon,
          onPressed: () {
            print('clic en el icon button');
          },
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0x90FFF0D7),
        ),
        fillColor: Color(0xffFC836E),
        filled: true,
      );
}
