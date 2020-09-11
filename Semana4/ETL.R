# Cargamos  dataframe long_UN Semana 1
load("long_UN.RData")
# Select our chosen countries
comp = subset(long_UN, 
  Country %in% c("Chile"))

# value in billion of USD
comp$value = comp$value / 1e9

comp = subset(comp, 
  select = c("Country", "Year",
    "IndicatorName", "value"),
  subset = IndicatorName %in% c("Gov.Expenditure", 
                                "Household consumption expenditure (including Non-profit institutions serving households)"))
# Acortamos nombre
comp$IndicatorName[comp$IndicatorName == "Household consumption expenditure (including Non-profit institutions serving households)"] <- "HH.Expenditure"

save(comp, file="comp.RData")
