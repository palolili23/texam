## Open library

library(tidyr)

## Tibbles to use
table1
table4a
table2


# From wide to long -------------------------------------------------------

cases <- table4a %>% 
  pivot_longer(
    cols = -1,
    names_to = "year",
    values_to = "cases"
  )

cases


# From long to wide -------------------------------------------------------

cases_pop <- table2 %>% 
  pivot_wider(
    names_from = type,
    values_from = count)

cases_pop


# Reshaping ---------------------------------------------------------------
cases %>% 
  pivot_wider(
    names_from = year,
    values_from = cases
  )

cases_pop %>% 
  pivot_longer(
    cols = c(3:4),
    names_to = "type",
    values_to = "count"
  )
