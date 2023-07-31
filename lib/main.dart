import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: FormBuilder(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FormBuilderTextField(name: "name"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: FormBuilderDropdown(
                            name: 'dropdown',
                            items: ['a', 'b', 'c']
                                .map((e) =>
                                    DropdownMenuItem(value: e, child: Text(e)))
                                .toList()),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Row(
                    children: [
                      Expanded(
                        child:
                            FormBuilderDateTimePicker(name: 'dateTimePicker'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: FormBuilderRadioGroup(
                    name: 'gender',
                    decoration: const InputDecoration(
                      labelText: 'Gender',
                    ),
                    options: const [
                      FormBuilderFieldOption(value: 'male'),
                      FormBuilderFieldOption(value: 'female'),
                      FormBuilderFieldOption(value: 'other'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
