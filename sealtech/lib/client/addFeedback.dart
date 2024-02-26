// feedback.dart
import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  String _feedback = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // TODO: Implement the logic to submit the feedback
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Give Us Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Feedback'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your feedback';
                  }
                  return null;
                },
                onSaved: (value) {
                  _feedback = value!;
                },
                maxLines: 5,
              ),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}