#Default generated file that can be used to specify actions taken whenever jobs encounter errors, in this case jobs can be retired upon deadlock or discarded if records no longer exist for them.

class ApplicationJob < ActiveJob::Base

  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
end
