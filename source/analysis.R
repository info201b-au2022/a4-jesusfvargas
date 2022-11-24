library(tidyverse)

# The functions might be useful for A4
source("a4-helpers.R")

## Test queries ----
#----------------------------------------------------------------------------#
# Simple queries for basic testing
#----------------------------------------------------------------------------#
# Return a simple string
test_query1 <- function() {
  return ("Hello world")
}

# Return a vector of numbers
test_query2 <- function(num=6) {
  v <- seq(1:num)
  return(v)
}

## Section 2  ---- 
#----------------------------------------------------------------------------#
# Your functions and variables might go here ... <todo: update comment>
#----------------------------------------------------------------------------#

## Section 3  ---- 
#----------------------------------------------------------------------------#
# Growth of the U.S. Prison Population
# Your functions might go here ... <todo:  update comment>
#----------------------------------------------------------------------------#
# This function ... <todo:  update comment>
get_year_jail_pop <- function(df) {
  # TODO: Implement this function 
  d1 <- df %>% group_by(year) %>% 
    summarise(Black = mean(black_prison_pop, na.rm = T),
              White = mean(white_prison_pop, na.rm = T))
  return(d1)   
}

# This function ... <todo:  update comment>
plot_jail_pop_for_us <- function(df)  {
  # TODO: Implement this function 
  p1 <- get_year_jail_pop(df)  %>% 
    ggplot(aes(x = year, y = Black)) +
    geom_line() + 
    labs(x = "Year", y = "Average Black population")
  return(p1)   
} 

## Section 4  ---- 
#----------------------------------------------------------------------------#
# Growth of Prison Population by State 
# Your functions might go here ... <todo:  update comment>
# See Canvas
#----------------------------------------------------------------------------#

get_year_jail_pop_by_state <- function(df) {
  # TODO: Implement this function 
  d1 <- df %>% group_by(year, state) %>% 
    summarise(Black = mean(black_prison_pop, na.rm = T),
              White = mean(white_prison_pop, na.rm = T))
  return(d1)   
}

# This function ... <todo:  update comment>
plot_jail_pop_for_us_by_state <- function(df)  {
  # TODO: Implement this function 
  p1 <- get_year_jail_pop(df) %>% 
    ggplot(aes(x = year, y = Black)) +
    geom_line() + facet_wrap(~state, scales = "free_y") +
    labs(x = "Year", y = "Average Black population")
  return(p1)   
} 

## Section 5  ---- 
#----------------------------------------------------------------------------#
# <variable comparison that reveals potential patterns of inequality>
# Your functions might go here ... <todo:  update comment>
# See Canvas
#----------------------------------------------------------------------------#



## Section 6  ---- 
#----------------------------------------------------------------------------#
# <a map shows potential patterns of inequality that vary geographically>
# Your functions might go here ... <todo:  update comment>
# See Canvas
#----------------------------------------------------------------------------#

## Load data frame ---- 



