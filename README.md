AWS Flow Framework for Ruby Samples and Recipes
===============================================

This project contains sample code and recipes for the AWS Flow Framework
for Ruby.

-   [Prerequisites](#prerequisites)
-   [Downloading the Sample Code](#downloading-the-sample-code)
-   [Samples](#samples)
-   [Recipes](#recipes)
-   [For More Information](#for-more-information)

Prerequisites
-------------

The *AWS Flow Framework for Ruby* is required, which can be obtained and
installed using the information here:

-   [https://aws.amazon.com/swf/flow/](https://aws.amazon.com/swf/flow/)

If you already have [Ruby](https://www.ruby-lang.org/) and
[RubyGems](http://rubygems.org/) installed, you can install the
framework by opening a terminal window and typing:

~~~~
gem install aws-flow
~~~~

For more information about setting up the AWS Flow Framework for Ruby,
see [Installing the AWS Flow Framework for
Ruby](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/installing.html)
in the *AWS Flow Framework for Ruby Developer Guide*.

Downloading the Sample Code
---------------------------

To view or download the code for all of the AWS Flow Framework for Ruby
recipes and samples, go to:

-   [https://github.com/awslabs/aws-flow-ruby-samples](https://github.com/awslabs/aws-flow-ruby-samples)

### Samples

#### booking

The *Booking* sample demonstrates a
[synchronization](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/programming-workflow-patterns.html#programming-workflow-patterns-synchronization)
workflow pattern. It waits for two activities to complete: a car
reservation and airline reservation. When both activities complete, it
sends a confirmation. All activities are performed asynchronously.

Code + info: [Samples/booking](Samples/booking/)

#### cron

The *Cron* sample runs an activity periodically based on a cron
expression.

Code + info: [Samples/cron](Samples/cron/)

#### cron\_with\_retry

The *CronWithRetry* sample demonstrates how to run a scheduled task with
`exponential_retry` options. Once the workflow is
complete, `continue_as_new` is used to re-run the
workflow at the next scheduled time.

Code + info: [Samples/cron\_with\_retry](Samples/cron_with_retry/)

#### deployment

The *Deployment* sample illustrates the deployment of a set of
application components through a workflow. A YAML configuration file is
used to describe the application stack. The workflow takes this
description as input and simulates the deployment of the components
specified in it.

Code + info: [Samples/deployment](Samples/deployment/)

#### file\_processing

The *FileProcessing* sample demonstrates a media processing use case.
The workflow downloads a file from an Amazon S3 bucket, creates a
`.zip` file and then uploads the file back to Amazon
S3. The task routing feature in Amazon SWF is illustrated in this
sample.

Code + info: [Samples/file\_processing](Samples/file_processing/)

#### hello\_world

The *HelloWorld* sample uses a very simple workflow that calls an
activity to print Hello World. It shows basic usage of the framework,
including implementing activities and workflow coordination logic and
building workers to run the workflow and activities.

Code + info: [Samples/hello\_world](Samples/hello_world/)

#### periodic

The *Periodic* sample periodically executes an activity in a
long-running workflow. The ability to continue executions as new
executions so that an execution can run for very extended periods of
time is demonstrated.

Code + info: [Samples/periodic](Samples/periodic/)

#### split\_merge

The *SplitMerge* sample demonstrates a [parallel
split](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/programming-workflow-patterns.html#programming-workflow-patterns-synchronization)
followed by a [simple
merge](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/programming-workflow-patterns.html#programming-workflow-patterns-simple-merge)
workflow pattern. It spawns a number of worker activities which are then
merged using `wait_for_all`.

Code + info: [Samples/split\_merge](Samples/split_merge/)

### Recipes

#### branch

The **Branch** code provides a recipe to *execute a
dynamically-determined number of activities concurrently*.

Code + info: [Recipes/branch](Recipes/branch/)

#### child\_workflow

The **ChildWorkflow** code provides a recipe to *start a child workflow
inside a workflow execution*.

Code + info: [Recipes/child\_workflow](Recipes/child_workflow/)

#### choice

The **Choice** recipes show how to use a choice to *execute one of
several activities*, or to *execute multiple activities from a larger
group*.

Code + info: [Recipes/choice](Recipes/choice/)

#### conditional\_loop

The **ConditionalLoop** code provides a recipe to *execute a
dynamically-determined number of activities concurrently*.

Code + info: [Recipes/conditional\_loop](Recipes/conditional_loop/)

#### handle\_error

The **HandleError** code provides recipes to *respond to exceptions in
asynchronous activities depending on exception type* and to *handle
exceptions in asynchronous activities and perform cleanup*.

Code + info: [Recipes/handle\_error](Recipes/handle_error/)

#### human\_task

The **HumanTask** code provides a recipe to *Complete an Activity Task
Manually*.

Code + info: [Recipes/human\_task](Recipes/human_task/)

#### pick\_first\_branch

The **PickFirstBranch** code provides a recipe to *execute multiple
activities concurrently and pick the fastest*.

Code + info: [Recipes/pick\_first\_branch](Recipes/pick_first_branch/)

#### retry\_activity

The **RetryActivity** recipes show how to:

-   apply a retry policy to *all invocations of an activity*
-   specify a retry policy for an *activity client*, a *block of code*,
    or for a *specific invocation of an activity*
-   retry activities *without jitter*, or with *custom jitter logic*
-   retry activities with *custom retry policies*

Code + info: [Recipes/retry\_activity](Recipes/retry_activity/)

#### wait\_for\_signal

The **WaitForSignal** code provides a recipe to *wait for an external
signal and take a different code path if the signal is received*.

Code + info: [Recipes/wait\_for\_signal](Recipes/wait_for_signal/)

For More Information
--------------------

For more information about the Amazon Simple Workflow service and the
Amazon Flow Framework for Ruby, consult the following resources:

-   [AWS Flow Framework for Ruby Developer
    Guide](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/)
-   [AWS Flow Framework for Ruby API
    Reference](https://docs.aws.amazon.com/amazonswf/latest/awsrbflowapi/)
-   [AWS Flow Framework](http://aws.amazon.com/swf/flow/)
-   [Amazon Simple Workflow Service](http://aws.amazon.com/swf/)

