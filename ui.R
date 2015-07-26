#ui.R

shinyUI(fluidPage(
  titlePanel("censusVis"),

  sidebarLayout(
    sidebarPanel( 
	  helpText("A racial demographic map with information from the 2010 US Census."),
	  
	  selectInput("var", 
	    label = "Choose a racial group to display", 
		choices = c("Percent White", "Percent Black", "Percent Hispanic", "Percent Asian"), 
		selected = "Percent White"),								
		
	  sliderInput("range", 
	    label = "Range of interest: left circle is minimum, right circle is maximum",
		min = 0, max = 100, value = c(0, 100))
	),
	
    mainPanel(
	  plotOutput("map", hover = "plot_hover"),
	  verbatimTextOutput("info")
	)
  )
 )
)
