import 'package:flutter/material.dart';

class InviteFriends extends StatefulWidget {
  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  final _formKey = GlobalKey<FormState>();
  String _friendEmail = '';

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // TODO: Implement the logic to send the invitation
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Friends'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Friend\'s Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your friend\'s email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _friendEmail = value!;
                },
              ),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Send Invitation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}