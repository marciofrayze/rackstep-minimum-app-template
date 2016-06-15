require 'rackstep'

# Creating the controller that will process the request.
class Root < RackStep::Controller

  def process_request
    # RackStep was created mainly to be used for microservices and single page
    # applications, so by default it will set the content type of the response
    # as JSON, but for this example, let's chance that to plain txt.
    response.content_type = 'text/plain'

    # Let's set a simple string of text as the content of the response.
    response.body = 'Welcome to the RackStep minimum app template.'
  end

end

# Creating the app class that will be instanciated by the rack server and adding
# a single route.
class App < RackStep::App

  # Adding a route to requests made to the root of our path and delegating
  # it to Root controller.
  add_route('GET', '', Root)

end

