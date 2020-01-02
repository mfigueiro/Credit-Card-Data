### Credit Card Data

Once upon a time, I had a challenge to develop that was my first project in Data Science. The issue was related to credit, more precisely, to a study of the credit card limit.

So here the ideia is to discuss the data manipulation. I simulated here an example of dataset with some features as name Client, Date Purchases, Numbers of Installments, Value of the Purchases (R$): [Access the dataset here](https://github.com/mfigueiro/Credit-Card-Data/blob/master/Dados.csv)

The biggest challenge that I had here was to create the variable with the total value of the purchases by each month, where I should take into consideration the numbers of installments. In the time, I had created an algorithm in R with a lot of for loops and nevertheless the running time was long.

Now I present here two possible solutions to mitigate this time of execution using more appropriate functions in Python [Access code in Python here](https://github.com/mfigueiro/Credit-Card-Data/blob/master/TemplatePython.ipynb) and in R [Access code in R here](https://github.com/mfigueiro/ChallengeSpark/blob/master/CodeR.R).

I really would to thanks the data scientist Teo Calvo for the code template in Python and the statistician Ianní Muliterno for the suggesting of the function to create the variable "Mes_Explode" in R. 
