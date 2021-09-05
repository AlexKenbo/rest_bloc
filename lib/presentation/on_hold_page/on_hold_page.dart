import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_with_bloc/presentation/on_hold_page/bloc/on_hold_bloc.dart';

class OnHoldPage extends StatelessWidget {
  const OnHoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnHoldBloc, OnHoldState>(
      builder: (context, state) => state.map(
        loadInProgress: (_) => Center(child: CircularProgressIndicator()),
        loadFailure: (state) => ErrorWidget(state.errorText),
        loadSuccess: (state) {
          return ListView.builder(
      itemCount: state.cardModel.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.fromLTRB(12, 6, 12, 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.yellow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ID: ${state.cardModel[index].id}'),
              SizedBox(height: 8),
              Text(
                  '${state.cardModel[index].text}'),
            ],
          ),
        );
      },
    );
        },
      ),
    );
  }
}

// class OnHoldPageBody extends StatelessWidget {
//   final List cardModel;
//   OnHoldPageBody({Key? key, required this.cardModel}) : super(key: key);
  

//   @override
//   Widget build(BuildContext context) {
//      BlocProvider.of<OnHoldBloc>(context).add(OnHoldEvent.started());
//     return ListView.builder(
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return Container(
//           padding: EdgeInsets.all(12),
//           margin: EdgeInsets.fromLTRB(12, 6, 12, 6),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             color: Colors.yellow,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('${cardModel[0].runtimeType}'),
//               SizedBox(height: 8),
//               Text(
//                   'Здесь будет очень очень очень очень очень очень очень длиннющее описание'),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
