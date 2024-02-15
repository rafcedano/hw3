how_many_rolls <- 20
> sim_rolls <- sample(1:6, how_many_rolls, replace = TRUE)
> # for first time
  > lots_of_sim_rolls <- sample(1:6,how_many_rolls, replace = TRUE)
  > 
    > # do 49 more simulations
    > for (indx in 1:49) {
      +     sim_rolls <- sample(1:6,how_many_rolls, replace = TRUE)
      +     lots_of_sim_rolls <- data.frame(lots_of_sim_rolls,sim_rolls)
      + }
  > how_many_sims <- 50
  > sim_rolls_vec <- sample(1:6,(how_many_rolls*how_many_sims), replace = TRUE) # vectorized version
  > if_come_up_6 <- as.numeric(lots_of_sim_rolls == 6)
  > mean(if_come_up_6)
  [1] 0.153
  > if_come_up_6_vec <- as.numeric(sim_rolls_vec == 6)
  > mean(if_come_up_6_vec)
  [1] 0.147
  > if_come_up_6 <- (lots_of_sim_rolls == 6)
  > how_many_rolls <- 100
  > sim_rolls <- sample(1:6, how_many_rolls, replace = TRUE)
  > how_many_sims <- 100
  > sim_rolls_vec <- sample(1:6,(how_many_rolls*how_many_sims), replace = TRUE) # vectorized version
  > if_come_up_6 <- as.numeric(lots_of_sim_rolls == 6)
  > mean(if_come_up_6)
  [1] 0.153
  > if_come_up_6_vec <- as.numeric(sim_rolls_vec == 6)
  > mean(if_come_up_6_vec)
  [1] 0.1676
  
  My group consisted of me and Cat. We decided to stick with the number 6 for our experiment. We rolled it 30 times. it came up exactly 6 times when we ran it in class. We decided that the dice were Fair. We decided that if the number 6 came out 3 sixths of the time then the dice would be clearly unfair.  