commit cebc6293a00486cf7c0d6fa5debca819cac59a57
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Jul 1 13:58:37 2019 -0400

    Cleanup E2E tests (#79)
    
    - Introduce TestCase.WaitFor function that waits until specified condition
      becomes true.
    - Make performance tests faster and reliable by waiting for spans to be received
      using WaitFor instead of fixed time period.
    - Introduce TestCase.Sleep function to reduce boilerplate in test cases.
