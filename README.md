# Unhandled API Response Errors in Dart

This example demonstrates a common error when fetching data from an API in Dart: failure to handle cases where the API response is unexpected. Specifically, the code assumes the response contains a JSON array with a consistent structure, without verifying this assumption.

The `bug.dart` file contains the faulty code.  The `bugSolution.dart` shows how to fix it using null checks and error handling best practices.