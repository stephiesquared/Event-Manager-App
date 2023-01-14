require "test_helper"

#Default generated file used for testing alonside "test_helper" rb file. sets the web browser being used, and screen size.

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase

  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
