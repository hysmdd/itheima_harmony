// 泛型类
class Person<T> {
  id: T

  constructor(id: T) {
    this.id = id
  }

  getId(): T {
    return this.id
  }
}

let p: Person<number> = new Person<number>(559);
console.log("用户编号", p.getId())
let p2: Person<string> = new Person<string>('UID559')
console.log("用户编号", p2.getId())

@Entry
@Component
struct Index {
  build() {
  }
}