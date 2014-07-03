require_relative '../helloworld_utils.rb'

# HelloWorldActivity class defines a set of activities for the HelloWorld sample.
class HelloWorldActivity
  extend AWS::Flow::Activities

  # The activity method is used to define activities. It accepts a list of names
  # of activities and a block specifying registration options for those
  # activities
  activity :get_name do
    {
      version: HelloWorldUtils::ACTIVITY_VERSION,
      default_task_list: HelloWorldUtils::ACTIVITY_TASKLIST,
      default_task_schedule_to_start_timeout: 30,
      default_task_start_to_close_timeout: 30,
      manual_completion: true
    }
  end
  activity :say_hello, :say_goodbye, :say_sayonara do
    {
      version: HelloWorldUtils::ACTIVITY_VERSION,
      default_task_list: HelloWorldUtils::ACTIVITY_TASKLIST,
      default_task_schedule_to_start_timeout: 30,
      default_task_start_to_close_timeout: 30
    }
  end

  # This activity will say hello when invoked by the workflow
  def get_name()
    task_token = activity_execution_context.task_token
    puts "Task received, completion token:#{task_token}\n"
  end
  def say_hello(name)
    puts "Hello, #{name}!"
    rand(2)
  end
  def say_goodbye(name)
    puts "goodbye, #{name}!"
  end
  def say_sayonara(name)
    puts "sayonara, #{name}!"
  end
end

# Start an ActivityWorker to work on the HelloWorldActivity tasks
HelloWorldUtils.new.activity_worker.start if $0 == __FILE__
