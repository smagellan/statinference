lambdaCoeff  <- 0.2;
nCoeff       <- 40;
nSimulations <- 1000;
distrMean    <- 1 / lambdaCoeff;
distrStdDev  <- distrMean;


hist(rexp(nCoeff, lambdaCoeff));
distrMean
distrStdDev
readline();
mns <- NULL;
for (i in 1 : nSimulations){
    mns = c(mns, mean(rexp(nCoeff, lambdaCoeff)));
}
hist(mns);

