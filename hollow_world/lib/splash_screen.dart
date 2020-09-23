import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hollow_world/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key key,
    @required SplashBloc splashBloc,
  })  : _splashBloc = splashBloc,
        super(key: key);

  final SplashBloc _splashBloc;

  @override
  SplashScreenState createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  SplashScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
        cubit: widget._splashBloc,
        builder: (
          BuildContext context,
          SplashState currentState,
        ) {
          if (currentState is UnSplashState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorSplashState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentState.errorMessage ?? 'Error'),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text('reload'),
                    onPressed: _load,
                  ),
                ),
              ],
            ));
          }
           if (currentState is InSplashState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(currentState.hello),
                ],
              ),
            );
          }
          return Center(
              child: CircularProgressIndicator(),
          );
          
        });
  }

  void _load() {
    widget._splashBloc.add(LoadSplashEvent());
  }
}
