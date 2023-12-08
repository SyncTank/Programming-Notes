def get_english_grade(student):
    def getValue(dict):
        for item in dict.values():
            if type(item) is type({}):
                if "English_1010" in item:
                    return item["English_1010"]
                else:
                    return getValue(item)

    studentGrade = getValue(student)

    return studentGrade["current_grade"]

s = {
    "type": {
        "student": {
            "name": "Allan",
            "courses": {
                "math_1050": {
                    "current_grade": "B",
                },
                "English_1010": {
                    "current_grade": "A-",
                },
            },
        }
    }
}

print(get_english_grade(s))