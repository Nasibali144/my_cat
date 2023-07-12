import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat/features/images/presentation/controller/image_controller.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AllImageScreen extends StatelessWidget {
  const AllImageScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ImageController>(
        builder: (context, controller, _) {
          return RefreshIndicator(
            onRefresh: controller.refresh,
            child: Stack(
              children: [
                MasonryGridView.builder(
                  controller: controller.scrollController,
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  itemCount: controller.list.length,
                  itemBuilder: (BuildContext context, int index) {
                    final image = controller.list[index];
                    return ImageCard(image: image);
                  },
                ),

                if (controller.isLoading)
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final FullImage image;

  const ImageCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ratio = image.width / image.height;
    return AspectRatio(
      aspectRatio: ratio,
      child: CachedNetworkImage(
        imageUrl: image.url,
        placeholder: (context, url) => ColoredBox(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        imageBuilder: (context, imageProvider) => Image(image: imageProvider),
      ),
    );
  }
}
