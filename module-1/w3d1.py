class Student:
    def __init__(self,name,course):
        self.name = name
        self.course = course.lower()
    def salute(self):
        return f"Hello, my name is {self.name}, and I study {self.course}"
    def attend(self,seminar):
        if self.course in seminar.keywords:
            return f"Sending mail to student with invitation for {seminar.theme} event on {seminar.date}"
        else:
            return f"{self.name} shall not attend"


class Seminar:
    def __init__(self,theme,presenter, date, *keywords):
        self.theme = theme
        self.presenter = presenter
        self.date = date
        self.keywords = keywords