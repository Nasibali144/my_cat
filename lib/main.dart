import 'package:flutter/material.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source_impl.dart';
import 'package:my_cat/features/images/data/repository/image_repository_impl.dart';
import 'package:my_cat/features/images/domain/usecase/get_all_image_usecase.dart';
import 'package:my_cat/features/images/presentation/controller/image_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ImageController>(
          create: (_) => ImageController(
            useCase: GetAllImageUsecase(
              repository: ImageRepositoryImpl(
                remoteDataSource: RemoteDataSourceImpl(),
              ),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ImageController>(
        builder: (context, controller, _) {
          return Stack(
            children: [
              GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: controller.list.length,
                itemBuilder: (BuildContext context, int index) {
                  final image = controller.list[index];
                  return Image(image: NetworkImage(image.url));
                },
              ),

              if(controller.isLoading) const Center(
                child: CircularProgressIndicator(),
              )
            ],
          );
        },
      ),
    );
  }
}
