import 'package:flutter/material.dart';
import 'package:shahrearapp/update_task_modal.dart';
import 'package:shahrearapp/add_new_task_modal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToDo App for AR')),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              //kono widget key extract kortay hoilay

              return AddNewTaskModal(); // Padding
            },
          );
        },
        child: const Icon(Icons.add),
      ),

      body: ListView.separated(
        itemCount: 111,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Actions'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.edit),
                          title: const Text('Update'),
                          onTap: () {
                            // TODO - update the item //eta diya nicer widget er shate Edit button er connect korci ..
                            //push()	নতুন page খোলা //pop()	আগের page এ ফেরা

                            Navigator.pop(context);//Back button এর কাজ করে
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return const UpdateTaskModal();
                              },
                            );
                          },
                        ), // ListTile
                        const Divider(height: 0), // Divider
                        ListTile(
                          leading: const Icon(Icons.delete_outline),
                          title: const Text('Delete'),

                          onTap: () {
                            Navigator.pop(context);
                            // TODO - delete the item from list
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },

            leading: CircleAvatar(child: Text(' ${index + 1}')),

            title: Text('Todo item '),
            subtitle: Text('12-12-2025'),
            trailing: Text('pending'),
          );
        },
        separatorBuilder: (BuildContext contex, int index) {
          return const Divider(height: 4);
        },
      ),
    );
  }
}

// কিছু কিছু বড় widget-কে আমরা extract করবো।
// তাই widget এর main name এ click দেবো >> Refactor >> Extract Flutter Widget >> Widget আলাদা হয়ে যাবে।
// পরে ঐটা copy paste করবো অন্য dart file open করে।




