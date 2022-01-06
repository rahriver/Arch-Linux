# Evaluate different statistical value from your command line.

import statistics
input_string = input("Enter your value separated by space:"+"\n")
print("\n")
user_list = input_string.split()
# print the list
print("List: ", user_list)
for i in range(len(user_list)):
# convert items to float
  user_list[i] = float(user_list[i])
print("Sum = ", sum(user_list))
print("Mod = ", statistics.mode(user_list))
# mod is the most occuring item in a list
print("Median = ", statistics.median(user_list))
print("Mean = ", statistics.mean(user_list))
print("Standard Deviation = ", statistics.stdev(user_list))
print("Variance = ", statistics.variance(user_list))

