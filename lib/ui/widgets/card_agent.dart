import 'package:flutter/material.dart';

class CardAgent extends StatelessWidget {
  final String displayIcon;
  final String displayName;
  final String description;
  final Function() onPressed;
  const CardAgent({
    Key? key,
    required this.displayIcon,
    required this.displayName,
    required this.description,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   child: ListTile(
    //     leading: Image.network(
    //       displayIcon,
    //       width: 50,
    //     ),
    //     title: Text(displayName),
    //     subtitle: Text(description),
    //   ),
    // );

    // return Container(
    //   padding: const EdgeInsets.all(16),
    //   margin: const EdgeInsets.all(16),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(16),
    //     boxShadow: const [
    //       BoxShadow(
    //         color: Colors.black12,
    //         blurRadius: 4,
    //         offset: Offset(0, 4),
    //       ),
    //     ],
    //   ),
    //   child: Column(
    //     children: [
    //       Container(
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.circular(16),
    //           boxShadow: const [
    //             BoxShadow(
    //               color: Colors.black12,
    //               blurRadius: 4,
    //               offset: Offset(0, 4),
    //             ),
    //           ],
    //         ),
    //         child: Image.network(
    //           displayIcon,
    //           width: 100,
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 16,
    //       ),
    //       Text(
    //         displayName,
    //         style: const TextStyle(
    //           fontSize: 24,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       const SizedBox(
    //         height: 16,
    //       ),
    //       Text(
    //         description,
    //         textAlign: TextAlign.center,
    //       ),
    //       const SizedBox(
    //         height: 16,
    //       ),
    //     ],
    //   ),
    // );

    // Create Card Agent With Background Agent
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      displayName,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Image.network(
                      displayIcon,
                      width: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          // button detail
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('Detail'),
          ),
        ],
      ),
    );
  }
}
