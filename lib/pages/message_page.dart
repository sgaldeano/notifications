import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {

  static const String routeName = 'message_page';

	const MessagePage({super.key});

	@override
	Widget build(BuildContext context) {

		final Map<String, dynamic> args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

  	return Scaffold(
      appBar: AppBar(
        title: const Text('Message')
      ),
    	body: Center(
      	child: Text(args['product'] ?? 'No Data', style: const TextStyle(fontSize: 30)),
			),
		);
	}

}