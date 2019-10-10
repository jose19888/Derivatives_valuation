

# Simple Bond Valuation function
# Arguments: FV (Face value), cr (Coupon rate), TTM (Time to Maturity), Y (yield)
bondprc <- function(FV, cr, TTM, Y){
  Cashflows <- c(rep(p * cr, TTM - 1), FV * (1 + cr))
  
  Cashflows <- data.frame(Cashflows)
  
  Cashflows$time <- as.numeric(rownames(Cashflows))
  
  Cashflows$PresentVAlue_factor <- 1 / (1 + y)^Cashflows$time
  
  Cashflows$PresentVAlue <- Cashflows$Cashflows * Cashflows$PresentVAlue_factor
  
  sum(Cashflows$PresentVAlue)
}