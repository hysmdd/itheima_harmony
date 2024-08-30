class Person {
  name: string
  age: number

  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }

  sayHi() {
    console.log(`大家好，我是${this.name}，今年${this.age}岁了`);
  }
}

class Student extends Person {
  grade: string
  sayHi(): void {
    super.sayHi()
    console.log('hello, nice to meet you')
  }
  study() {
    console.log("我是学生，我爱学习~")
  }

  constructor(name: string, age: number, grade: string) {
    super(name, age)
    this.grade = grade
  }
}

let s1: Student = new Student('邓恩熙', 19, '大二')
s1.sayHi()
s1.study()
console.log(s1.grade)

let s2: Student = new Student('章若楠', 26, '博一')
console.log(s2.grade)

class Teacher extends Person {

}

let t1: Teacher = new Teacher('秦昊', 25)
t1.sayHi()

@Entry
@Component
struct Index {
  build() {
  }
}