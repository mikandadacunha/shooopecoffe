import 'package:coffeshope/models/chat.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> listMessage = [
    Message(
        name: 'Daniel Domingos',
        messageUser: 'Vamos sair hoje?',
        dateUserMessage: DateTime.now(),
        imgUser: 'imgUser'),
    Message(
        name: 'Alexandre Cunha',
        messageUser: 'Vamos sair hoje?',
        dateUserMessage: DateTime.now(),
        imgUser: 'imgUser'),
    Message(
        name: 'Lukebana',
        messageUser: 'Vamos sair hoje?',
        dateUserMessage: DateTime.now(),
        imgUser: 'imgUser'),
    Message(
        name: 'Buta Fernandes',
        messageUser: 'Vamos sair hoje?',
        dateUserMessage: DateTime.now(),
        imgUser: 'imgUser'),
    Message(
        name: 'Daniel Domingos',
        messageUser: 'Vamos sair hoje?',
        dateUserMessage: DateTime.now(),
        imgUser: 'imgUser'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff007564),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 4.10,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    IconButton(
                        alignment: Alignment.center,
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                        )),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      'Chat',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded),
                        labelText: ' search',
                        labelStyle: TextStyle()),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height / 1.6,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(40, 40),
                topRight: Radius.elliptical(40, 40),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: listMessage.length,
                    itemBuilder: (ctx, index) {
                      final mr = listMessage[index];
                      return Card(
                        color: Colors.white,
                        elevation: 0,
                        child: ListTile(
                          title: Text(
                            mr.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(mr.messageUser),
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          trailing: Text(
                              DateFormat('hh:mm').format(mr.dateUserMessage)),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
