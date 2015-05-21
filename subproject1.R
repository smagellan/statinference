lambdaCoeff   <- 0.2;
nCoeff        <- 40;
nSimulations  <- 1000;

#distribution of exponential: mean
distrMean     <- 1 / lambdaCoeff;
#distribution of exponential: standard deviation
distrStdDev   <- 1 / lambdaCoeff;
#distribution of exponential: variance
distrVariance <- distrStdDev ^ 2;

hist(rexp(nCoeff, lambdaCoeff));
readline();
mns <- NULL;
for (i in 1 : nSimulations){
    mns = c(mns, mean(rexp(nCoeff, lambdaCoeff)));
}
hist(mns);

#distribution of averages of 40 exponentials: theoretical mean



#distribution of averages of 40 exponentials: theoretical variance
f2TVariance <- distrVariance / nCoeff;

print(sprintf("f2Variance: %f", f2Variance));