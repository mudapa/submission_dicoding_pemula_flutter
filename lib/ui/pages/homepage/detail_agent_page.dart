import 'package:flutter/material.dart';
import 'package:valorant_agent_info/model/agent_model.dart';

class DetailAgentPage extends StatelessWidget {
  final AgentModel agent;
  const DetailAgentPage(this.agent, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text(
          'Detail ${agent.displayName}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  agent.background == '' ? 'assets/logo.png' : agent.background,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.redAccent.withOpacity(0.5),
                  blurRadius: 2,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Image.network(
              agent.bustPortrait == '' ? 'assets/logo.png' : agent.bustPortrait,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            agent.displayName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            agent.description,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
          Row(
            children: [
              Text(
                'Role : ${agent.roles.displayName}',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 16),
              Container(
                width: 50,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Image.network(
                  agent.roles.displayIcon == ''
                      ? 'assets/logo.png'
                      : agent.roles.displayIcon,
                  width: 50,
                ),
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    '${agent.abilities[0].slot}: ${agent.abilities[0].displayName}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Image.network(
                      agent.abilities[0].displayIcon == ''
                          ? 'assets/logo.png'
                          : agent.abilities[0].displayIcon,
                      width: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('Description: ${agent.abilities[0].description}'),
            ],
          ),
          const Divider(),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    '${agent.abilities[1].slot}: ${agent.abilities[1].displayName}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Image.network(
                      agent.abilities[1].displayIcon == ''
                          ? 'assets/logo.png'
                          : agent.abilities[1].displayIcon,
                      width: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('Description: ${agent.abilities[1].description}'),
            ],
          ),
          const Divider(),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    '${agent.abilities[2].slot}: ${agent.abilities[2].displayName}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Image.network(
                      agent.abilities[2].displayIcon == ''
                          ? 'assets/logo.png'
                          : agent.abilities[2].displayIcon,
                      width: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('Description: ${agent.abilities[2].description}'),
            ],
          ),
          const Divider(),
          const SizedBox(height: 16),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    '${agent.abilities[3].slot}: ${agent.abilities[3].displayName}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 50,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Image.network(
                      agent.abilities[3].displayIcon == ''
                          ? 'assets/logo.png'
                          : agent.abilities[3].displayIcon,
                      width: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text('Description: ${agent.abilities[3].description}'),
            ],
          ),
        ],
      ),
    );
  }
}
