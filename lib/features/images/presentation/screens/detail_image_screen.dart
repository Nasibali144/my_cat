import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';

class DetailImageScreen extends StatelessWidget {
  final FullImage image;
  const DetailImageScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final ratio = image.width / image.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: ratio,
                child: CachedNetworkImage(
                  imageUrl: image.url,
                  placeholder: (context, url) => const Center(child: CircularProgressIndicator.adaptive(),),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageBuilder: (context, imageProvider) => Image(image: imageProvider),
                ),
              ),
              const SizedBox(height: 20),
              for(int i = 0; i < image.breeds.length; i++)
                Text(image.breeds[i].name, style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
      ),
    );
  }
}
