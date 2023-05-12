import 'package:dart_asynchronous_workflows/dart_asynchronous_workflows.dart'
    as dart_asynchronous_workflows;
// import 'package:dart_asynchronous_workflows/dart_async_future.dart'
//     as dart_async_future;
// import 'package:dart_asynchronous_workflows/dart_async_future_2.dart'
//     as dart_async_future_2;
import 'package:dart_asynchronous_workflows/dart_async_await.dart'
    as dart_async_await;

void main(List<String> arguments) {
  print('Hello world: ${dart_asynchronous_workflows.calculate()}!');

  // dart_async_future.main();
  // print('------------------');
  // print('------------------');
  // dart_async_future_2.main();

  dart_async_await.main(arguments);
}
