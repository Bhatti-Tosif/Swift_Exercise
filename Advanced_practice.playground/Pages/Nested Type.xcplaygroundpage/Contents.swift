class Student {
    enum StudentType {
    case Intelligent
    case Good
    }
    func name() -> StudentType {
        return .Intelligent
    }
}
class Teacher {
    let student = Student()
    var type: Student.StudentType
    init() {
        self.type = self.student.name()
    }
}
var result = Student.StudentType.Good
print(result)
var teacher = Teacher()
print(teacher.type)
