import 'package:flutter/material.dart';

class PostDetailsLoadingShimmer extends StatelessWidget {
  const PostDetailsLoadingShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.grey[200],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.grey[200],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.grey[200],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
