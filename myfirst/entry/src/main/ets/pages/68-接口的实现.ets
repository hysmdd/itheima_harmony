// 接口实现
interface IDog {
  name: string
  age: number

  jump: () => void
}

class Dog implements IDog {
  name: string
  age: number
  desc: string

  constructor(name: string, age: number, desc: string) {
    this.name = name
    this.age = age
    this.desc = desc
  }

  jump() {

  }
}

let d1: Dog = new Dog("小泰迪", 3, "是一只狗")
d1.jump()

@Entry
@Component
struct Index {
  build() {
  }
}