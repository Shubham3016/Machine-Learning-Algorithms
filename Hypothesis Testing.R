#The main purpose of statistics is to test a hypothesis.
---------------------------------------------------------------
"""
  For example, you might run an experiment and find that a certain drug is effective at treating headaches. 
A hypothesis is an educated guess about something in the world around you.
It should be testable, either by experiment or observation.
#
For example:
  ----------------------
  A new medicine you think might work.
A way of teaching you think might be better.

Hypothesis Testing
-----------------------------
  
  Hypothesis testing in statistics is a way for you to test the results of a survey or experiment to see if you have meaningful results. 

Hypothesis testing can be one of the most confusing aspects for students, mostly because before you can even perform a test, 
you have to know what your null hypothesis

Hypothesis testing is done to make decisions

What is the Null Hypothesis?
  --------------------------------------
  If you trace back the history of science, the null hypothesis is always the accepted fact. 
Simple examples of null hypotheses that are generally accepted as being true are: DNA is shaped like a double helix.

A researcher thinks that if knee surgery patients go to physical therapy twice a week (instead of 3 times),
their recovery period will be longer. Average recovery times for knee surgery patients is 8.2 weeks.

The hypothesis statement in this question is that the researcher believes the average recovery time is more than 8.2 weeks. 
It can be written in mathematical terms as:
  
  You’ll need to state the null hypothesis (See: How to state the null hypothesis). That’s what will happen if the researcher is wrong. 
In the above example, if the researcher is wrong then the recovery time is less than or equal to 8.2 weeks. In math, that’s:
  
  H0:μ ≤ 8.2
-----------
  
  NULL represent as H0   #This is condition 1
Alternative represent as Ha   #this is condition 2

In Alternative hypotheses it is opposite to null which is not equal and there is difference
H1: μ > 8.2
------------
  
  
  This is a manual way of Hypothesis Testing

n = no of observations of sample space
S = Std Devition of sample space
mean = mean of sample space
μ(mu)= mean of population
Sigma(σ) = Std DEviation of population

Alpha = 0.05 #Alpha value is by default 0.05 or 0.01

If we have population parameters then we should do Z test #(Std Deviation is important)
If we dont have population Parameters we should do T test 

The formula for Z test is  Z = mean - mu/ sigma

The Formula for T test is t = mean - mu/ (Std Deviation/sqrt(n))

"""

# Lets take an Example

mean<- 122
mu(μ)<- 130
StdDev1<- 40
n<-80
#Here we dont have the population Parameter i.e Sigma so we will do T Test

h0<- mu <= 120 #Condition 1
ha<- mu > 120 #Condition 2

q1<-122-120

q2<-40/sqrt(80)

t1<- q1/q2 #This will give me the t value


# To find the probability of t Value we should use the function pt(t,n-1) pt(t1,80-1)

t2<-pt(t1,79) #Here we find the probability of the t value with respect to n. #here t1 is the t value and 79 is n-1

t3<- 1-t2 # we subtract the Probability value with 1 to find x > mean

#Now we compare the value of p with Alpha

#if p < Alpha, we should reject h0
#if p > Alpha , We should consider the condition ho and make decisions

#In this example p value is greater than 0.05, So we will Consider the h0 Condition and take Decision

#Example 1

day2<- 3.9-4
day1<- -0.1
day11 <- 3/sqrt(50)
day111<- day1/day11 #t value of the above values
day111

pday1<- pt(day111,49)
pday11<-2*pday1 #pvalue of the t
pday111

#Example 2
day2<- 4.1-4
day22<- 3/sqrt(50)
day222<- day2/day22

pday2<- 1-pt(day222,49)
pday22 <- 2*pday2           



#To do the Hypothesis Testing in R we have the Following Function
t.test(x,alternative = c("less","greater","both.sided"),mu="standard mean value") #Here Alternative is ha where we have to speify the condition is lesser or greater or equal

#lets take an example

x<- c(0.593,0.142,0.329,0.691,0.793,0.519,0.392,0.418)
t.test(x,alternative = "greater",mu=0.3)
