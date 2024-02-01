import 'package:awesome_project/ButtonContainer.dart';
import 'package:flutter/material.dart';

class LanguagesPage extends StatefulWidget {
  const LanguagesPage({super.key});

  @override
  State<LanguagesPage> createState() => _LanguagesPageState();
}

class _LanguagesPageState extends State<LanguagesPage> {
  String selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Languages'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                LanguagesTile(
                  text: 'English',
                  option: 'option 1',
                  selectedOption: selectedOption,
                  onOptionChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                LanguagesTile(
                  text: 'Dutch',
                  option: 'option 2',
                  selectedOption: selectedOption,
                  onOptionChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                LanguagesTile(
                  text: 'Hindi',
                  option: 'option 3',
                  selectedOption: selectedOption,
                  onOptionChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                LanguagesTile(
                  text: 'Arabic',
                  option: 'option 4',
                  selectedOption: selectedOption,
                  onOptionChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                LanguagesTile(
                  text: 'Chinese',
                  option: 'option 5',
                  selectedOption: selectedOption,
                  onOptionChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
              ],
            ),
            // SizedBox(height: 20),
            // Text('Selected Option: $selectedOption'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonContainer(width: (MediaQuery.of(context).size.width)/1.5, title: 'SAVE'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LanguagesTile extends StatelessWidget {
  final String text;
  final String option;
  final String selectedOption;
  final ValueChanged<String> onOptionChanged;

  const LanguagesTile({
    super.key,
    required this.text,
    required this.option,
    required this.selectedOption,
    required this.onOptionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: Radio(
        value: option,
        groupValue: selectedOption,
        onChanged: (value) {
          onOptionChanged(value.toString());
        },
      ),
    );
  }
}
