# Load the rails application
require File.expand_path('../application', __FILE__)
SistAcademico::Application.configure do
	config.gem "calendar_date_select" 
end
# Initialize the rails application
SistAcademico::Application.initialize!
