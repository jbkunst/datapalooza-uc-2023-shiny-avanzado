library(reactlog)

# tell shiny to log all reactivity
reactlog_enable()

# run a shiny app
app <- "apps/htmlwidgets/01-app-htmlwidgets.R"
shiny::runApp(app)

# once app has closed, display reactlog from shiny
shiny::reactlogShow()

# 
# 
# https://stackoverflow.com/a/71827950/829971
# 
# 
# It's a reactiveVal defined here which is used to create a reactive dependency
# when setCurrentTheme is called for the according shiny session.
# setCurrentTheme is described as follows:
# 
#   # This function does three things: (1) sets theme as the current
#   # bootstrapTheme, (2) re-executes any registered theme dependencies, and
#   # (3) sends the resulting dependencies to the client.