import 'package:flutter/material.dart';


class UpdateTaskModal extends StatelessWidget {
  const UpdateTaskModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Update todo',
                style: Theme.of(context).textTheme.titleLarge,
              ), // Text
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  ); //eta deyar karon e cancel button kaz  koray functional vabey
                },
                icon: const Icon(Icons.close),
              ), // IconButton
            ],
          ), // Row

          const SizedBox(height: 26), //box er asey pashe 16 kore jayga rakbay

          TextFormField(
            maxLines: 4, //eta dilay input box ta 4 line er moto jayga paibo

            decoration: InputDecoration(
              hintText: 'Enter your todo here',
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
            ), // InputDecoration
          ), // TextFormField
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Update'),
            ),
          ),
        ],
      ),
    );
  }
}