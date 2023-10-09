print("Exam Score Calculator")
print()
exam_name = input("Name of Exam: ")

max_score_possible = int(input("Max. Possible Score: "))
user_score = int(input("Your Score: "))

exam_result = user_score / max_score_possible * 100
exam_result = round(exam_result, 2)

print()

if exam_result >= 90:
  print("You got a", exam_result, "% which is an A+!")
elif exam_result >= 80 and exam_result <= 89:
  print("You got a", exam_result, "% which is an A!")
elif exam_result >= 70 and exam_result <= 79:
  print("You got a", exam_result, "% which is a B!")
elif exam_result >= 60 and exam_result <= 69:
  print("You got a", exam_result, "% which is a C!")
elif exam_result >= 50 and exam_result <= 59:
  print("You got a", exam_result, "% which is a D")
elif exam_result < 50: 
  print("You got a", exam_result, "% which is an F")
else:
  print("Try filling in the information again!")