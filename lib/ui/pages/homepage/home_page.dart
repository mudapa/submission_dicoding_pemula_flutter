import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../model/agent_model.dart';
import '../../../service/agent_service.dart';
import '../../widgets/card_agent.dart';
import 'detail_agent_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<AgentModel>> agents;

  @override
  void initState() {
    super.initState();
    agents = AgentService().fetchAgents();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AgentModel>>(
      future: agents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return CardAgent(
                displayIcon: snapshot.data![index].displayIcon,
                displayName: snapshot.data![index].displayName,
                description: snapshot.data![index].description,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailAgentPage(snapshot.data![index]),
                    ),
                  );
                },
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error : ${snapshot.error}'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
